import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import file_read.java.lang as javalang;
import file_read.java.net as javanet;

# Ballerina class mapping for the Java `java.nio.file.Paths` class.
@java:Binding {'class: "java.nio.file.Paths"}
public distinct class Paths {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.nio.file.Paths` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.nio.file.Paths` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.nio.file.Paths` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `java.nio.file.Paths`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_nio_file_Paths_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.nio.file.Paths`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_nio_file_Paths_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.nio.file.Paths`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_nio_file_Paths_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.nio.file.Paths`.
    public function notify() {
        java_nio_file_Paths_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.nio.file.Paths`.
    public function notifyAll() {
        java_nio_file_Paths_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `java.nio.file.Paths`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Paths_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.nio.file.Paths`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Paths_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.nio.file.Paths`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Paths_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `get` method of `java.nio.file.Paths`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `string[]` value required to map with the Java method parameter.
# + return - The `Path` value returning from the Java mapping.
public function Paths_get(string arg0, string[] arg1) returns Path|error {
    handle externalObj = java_nio_file_Paths_get(java:fromString(arg0), check jarrays:toHandle(arg1, "java.lang.String"));
    Path newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `get` method of `java.nio.file.Paths`.
#
# + arg0 - The `javanet:URI` value required to map with the Java method parameter.
# + return - The `Path` value returning from the Java mapping.
public function Paths_get2(javanet:URI arg0) returns Path {
    handle externalObj = java_nio_file_Paths_get2(arg0.jObj);
    Path newObj = new (externalObj);
    return newObj;
}

function java_nio_file_Paths_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.nio.file.Paths",
    paramTypes: ["java.lang.Object"]
} external;

function java_nio_file_Paths_get(handle arg0, handle arg1) returns handle = @java:Method {
    name: "get",
    'class: "java.nio.file.Paths",
    paramTypes: ["java.lang.String", "[Ljava.lang.String;"]
} external;

function java_nio_file_Paths_get2(handle arg0) returns handle = @java:Method {
    name: "get",
    'class: "java.nio.file.Paths",
    paramTypes: ["java.net.URI"]
} external;

function java_nio_file_Paths_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.nio.file.Paths",
    paramTypes: []
} external;

function java_nio_file_Paths_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.nio.file.Paths",
    paramTypes: []
} external;

function java_nio_file_Paths_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.nio.file.Paths",
    paramTypes: []
} external;

function java_nio_file_Paths_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.nio.file.Paths",
    paramTypes: []
} external;

function java_nio_file_Paths_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Paths",
    paramTypes: []
} external;

function java_nio_file_Paths_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Paths",
    paramTypes: ["long"]
} external;

function java_nio_file_Paths_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Paths",
    paramTypes: ["long", "int"]
} external;

