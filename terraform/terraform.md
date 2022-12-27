Terraform Datatypes

string: alphanumeric, special characters
bool: ture / flase
number: numbers
object: key-value pairs
map: dictionary
list: array
sets:
any:

variable listofstrings {
    type = list(string)
    default = ["apple", "banana", "Goa"]
}

output listofstrings {
    vlaue = var.listofstrings
}

output listofstrings {
    vlaue = var.listofstrings[3]
}

variable vm_names {
   type = list(string)
   default = ["windows_10_1", "windows_10_2", "windows_10_3", "windows_10_4"]
}

count = lenght(vm_names)

count.index+1




