/* 
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("HelloWorld!!!!!!!!!!! ");
    }
}
*/

import org.apache.commons.lang3.StringUtils;

//import com.sun.xml.internal.ws.util.StringUtils;


public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("HelloWorld!!!!!!!!!!! ");
        System.out.println( StringUtils.capitalize("hello world"));
    }
}

// ILoveIndia



/*
java file -> compile -> Byte Code(.class file) -> (Executed by)JVM -> Output/Result

inside JVM


Class loader sub system

Method Area - .class file is loaded

Heap - Objects created here where reserves memory for each object

Java Stacks -


 */

