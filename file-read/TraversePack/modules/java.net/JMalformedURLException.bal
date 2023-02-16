import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import file_read.java.lang as javalang;
import file_read.java.io as javaio;

# Ballerina class mapping for the Java `java.net.MalformedURLException` class.
@java:Binding {'class: "java.net.MalformedURLException"}
public distinct class JMalformedURLException {

    *java:JObject;
    *javaio:JIOException;

    # The `handle` field that stores the reference to the `java.net.MalformedURLException` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.net.MalformedURLException` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.net.MalformedURLException` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `addSuppressed` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javalang:Throwable` value required to map with the Java method parameter.
    public function addSuppressed(javalang:Throwable arg0) {
        java_net_MalformedURLException_addSuppressed(self.jObj, arg0.jObj);
    }

    # The function that maps to the `equals` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_net_MalformedURLException_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `fillInStackTrace` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:Throwable` value returning from the Java mapping.
    public function fillInStackTrace() returns javalang:Throwable {
        handle externalObj = java_net_MalformedURLException_fillInStackTrace(self.jObj);
        javalang:Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getCause` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:Throwable` value returning from the Java mapping.
    public function getCause() returns javalang:Throwable {
        handle externalObj = java_net_MalformedURLException_getCause(self.jObj);
        javalang:Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getClass` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_net_MalformedURLException_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getLocalizedMessage` method of `java.net.MalformedURLException`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getLocalizedMessage() returns string? {
        return java:toString(java_net_MalformedURLException_getLocalizedMessage(self.jObj));
    }

    # The function that maps to the `getMessage` method of `java.net.MalformedURLException`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getMessage() returns string? {
        return java:toString(java_net_MalformedURLException_getMessage(self.jObj));
    }

    # The function that maps to the `getStackTrace` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:StackTraceElement[]` value returning from the Java mapping.
    public function getStackTrace() returns javalang:StackTraceElement[]|error {
        handle externalObj = java_net_MalformedURLException_getStackTrace(self.jObj);
        javalang:StackTraceElement[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javalang:StackTraceElement element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `getSuppressed` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:Throwable[]` value returning from the Java mapping.
    public function getSuppressed() returns javalang:Throwable[]|error {
        handle externalObj = java_net_MalformedURLException_getSuppressed(self.jObj);
        javalang:Throwable[] newObj = [];
        handle[] anyObj = <handle[]>check jarrays:fromHandle(externalObj, "handle");
        int count = anyObj.length();
        foreach int i in 0 ... count - 1 {
            javalang:Throwable element = new (anyObj[i]);
            newObj[i] = element;
        }
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.net.MalformedURLException`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_net_MalformedURLException_hashCode(self.jObj);
    }

    # The function that maps to the `initCause` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javalang:Throwable` value required to map with the Java method parameter.
    # + return - The `javalang:Throwable` value returning from the Java mapping.
    public function initCause(javalang:Throwable arg0) returns javalang:Throwable {
        handle externalObj = java_net_MalformedURLException_initCause(self.jObj, arg0.jObj);
        javalang:Throwable newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `notify` method of `java.net.MalformedURLException`.
    public function notify() {
        java_net_MalformedURLException_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.net.MalformedURLException`.
    public function notifyAll() {
        java_net_MalformedURLException_notifyAll(self.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.net.MalformedURLException`.
    public function printStackTrace() {
        java_net_MalformedURLException_printStackTrace(self.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javaio:PrintStream` value required to map with the Java method parameter.
    public function printStackTrace2(javaio:PrintStream arg0) {
        java_net_MalformedURLException_printStackTrace2(self.jObj, arg0.jObj);
    }

    # The function that maps to the `printStackTrace` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javaio:PrintWriter` value required to map with the Java method parameter.
    public function printStackTrace3(javaio:PrintWriter arg0) {
        java_net_MalformedURLException_printStackTrace3(self.jObj, arg0.jObj);
    }

    # The function that maps to the `setStackTrace` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `javalang:StackTraceElement[]` value required to map with the Java method parameter.
    # + return - The `error?` value returning from the Java mapping.
    public function setStackTrace(javalang:StackTraceElement[] arg0) returns error? {
        java_net_MalformedURLException_setStackTrace(self.jObj, check jarrays:toHandle(arg0, "java.lang.StackTraceElement"));
    }

    # The function that maps to the `wait` method of `java.net.MalformedURLException`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_net_MalformedURLException_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_net_MalformedURLException_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.net.MalformedURLException`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_net_MalformedURLException_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.net.MalformedURLException`.
#
# + return - The new `JMalformedURLException` class generated.
public function newJMalformedURLException1() returns JMalformedURLException {
    handle externalObj = java_net_MalformedURLException_newJMalformedURLException1();
    JMalformedURLException newObj = new (externalObj);
    return newObj;
}

# The constructor function to generate an object of `java.net.MalformedURLException`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `JMalformedURLException` class generated.
public function newJMalformedURLException2(string arg0) returns JMalformedURLException {
    handle externalObj = java_net_MalformedURLException_newJMalformedURLException2(java:fromString(arg0));
    JMalformedURLException newObj = new (externalObj);
    return newObj;
}

function java_net_MalformedURLException_addSuppressed(handle receiver, handle arg0) = @java:Method {
    name: "addSuppressed",
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.lang.Throwable"]
} external;

function java_net_MalformedURLException_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.lang.Object"]
} external;

function java_net_MalformedURLException_fillInStackTrace(handle receiver) returns handle = @java:Method {
    name: "fillInStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getCause(handle receiver) returns handle = @java:Method {
    name: "getCause",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getLocalizedMessage(handle receiver) returns handle = @java:Method {
    name: "getLocalizedMessage",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getMessage(handle receiver) returns handle = @java:Method {
    name: "getMessage",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getStackTrace(handle receiver) returns handle = @java:Method {
    name: "getStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_getSuppressed(handle receiver) returns handle = @java:Method {
    name: "getSuppressed",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_initCause(handle receiver, handle arg0) returns handle = @java:Method {
    name: "initCause",
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.lang.Throwable"]
} external;

function java_net_MalformedURLException_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_printStackTrace(handle receiver) = @java:Method {
    name: "printStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_printStackTrace2(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.io.PrintStream"]
} external;

function java_net_MalformedURLException_printStackTrace3(handle receiver, handle arg0) = @java:Method {
    name: "printStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.io.PrintWriter"]
} external;

function java_net_MalformedURLException_setStackTrace(handle receiver, handle arg0) = @java:Method {
    name: "setStackTrace",
    'class: "java.net.MalformedURLException",
    paramTypes: ["[Ljava.lang.StackTraceElement;"]
} external;

function java_net_MalformedURLException_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.MalformedURLException",
    paramTypes: ["long"]
} external;

function java_net_MalformedURLException_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.MalformedURLException",
    paramTypes: ["long", "int"]
} external;

function java_net_MalformedURLException_newJMalformedURLException1() returns handle = @java:Constructor {
    'class: "java.net.MalformedURLException",
    paramTypes: []
} external;

function java_net_MalformedURLException_newJMalformedURLException2(handle arg0) returns handle = @java:Constructor {
    'class: "java.net.MalformedURLException",
    paramTypes: ["java.lang.String"]
} external;

