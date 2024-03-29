terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.37.0"
    }
  }
}

provider "azurerm" {
  features {

  }
  subscription_id = "b0dae312-4fd1-4fec-9d45-4e4e767d4652"
}

resource "azurerm_resource_group" "eagle_tf_rg" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "eagle_tf_vnet" {
  name                = "eagle_tf_vnet"
  location            = azurerm_resource_group.eagle_tf_rg.location
  resource_group_name = azurerm_resource_group.eagle_tf_rg.name
  address_space       = ["10.1.0.0/16", "10.2.0.0/16"]
}

resource "azurerm_subnet" "eagle_tf_pub_subnet" {
  name                 = "eagle_tf_pub_subnet"
  virtual_network_name = azurerm_virtual_network.eagle_tf_vnet.name
  resource_group_name  = azurerm_resource_group.eagle_tf_rg.name
  address_prefixes     = ["10.1.1.0/24"]
}

resource "azurerm_network_interface" "eagle_tf_nic_internal" {
  name     = "eagle_tf_nic_internal"
  location = azurerm_resource_group.eagle_tf_rg.location
  resource_group_name = azurerm_resource_group.eagle_tf_rg.name

  ip_configuration {
    name                          = "eagle_tf_nic_internal"
    subnet_id                     = azurerm_subnet.eagle_tf_pub_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "eagle-tf-vm-w10" {
  name                = "eagle-tf-vm-w10"
  resource_group_name = azurerm_resource_group.eagle_tf_rg.name
  location            = azurerm_resource_group.eagle_tf_rg.location
  size                = "Standard_B2ms"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"

  network_interface_ids = [
    azurerm_network_interface.eagle_tf_nic_internal.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "microsoftwindowsdesktop"
    offer     = "windows-10"
    sku       = "win10-21h2-pro"
    version   = "latest"
  }

 depends_on = [
    aws_iam_role_policy.example
    azurerm_network_interface.eagle_tf_nic_internal
  ]
}