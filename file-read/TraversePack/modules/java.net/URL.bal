import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import file_read.java.lang as javalang;
import file_read.java.io as javaio;

# Ballerina class mapping for the Java `java.net.URL` class.
@java:Binding {'class: "java.net.URL"}
public distinct class URL {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.net.URL` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.net.URL` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.net.URL` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `java.net.URL`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_net_URL_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getAuthority` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getAuthority() returns string? {
        return java:toString(java_net_URL_getAuthority(self.jObj));
    }

    # The function that maps to the `getClass` method of `java.net.URL`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_net_URL_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `getContent` method of `java.net.URL`.
    #
    # + return - The `javalang:Object` or the `javaio:IOException` value returning from the Java mapping.
    public function getContent() returns javalang:Object|javaio:IOException {
        handle|error externalObj = java_net_URL_getContent(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javalang:Object newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `getContent` method of `java.net.URL`.
    #
    # + arg0 - The `javalang:Class[]` value required to map with the Java method parameter.
    # + return - The `javalang:Object` or the `javaio:IOException` value returning from the Java mapping.
    public function getContent2(javalang:Class[] arg0) returns javalang:Object|javaio:IOException|error {
        handle|error externalObj = java_net_URL_getContent2(self.jObj, check jarrays:toHandle(arg0, "java.lang.Class"));
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javalang:Object newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `getDefaultPort` method of `java.net.URL`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function getDefaultPort() returns int {
        return java_net_URL_getDefaultPort(self.jObj);
    }

    # The function that maps to the `getFile` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getFile() returns string? {
        return java:toString(java_net_URL_getFile(self.jObj));
    }

    # The function that maps to the `getHost` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getHost() returns string? {
        return java:toString(java_net_URL_getHost(self.jObj));
    }

    # The function that maps to the `getPath` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getPath() returns string? {
        return java:toString(java_net_URL_getPath(self.jObj));
    }

    # The function that maps to the `getPort` method of `java.net.URL`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function getPort() returns int {
        return java_net_URL_getPort(self.jObj);
    }

    # The function that maps to the `getProtocol` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getProtocol() returns string? {
        return java:toString(java_net_URL_getProtocol(self.jObj));
    }

    # The function that maps to the `getQuery` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getQuery() returns string? {
        return java:toString(java_net_URL_getQuery(self.jObj));
    }

    # The function that maps to the `getRef` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getRef() returns string? {
        return java:toString(java_net_URL_getRef(self.jObj));
    }

    # The function that maps to the `getUserInfo` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function getUserInfo() returns string? {
        return java:toString(java_net_URL_getUserInfo(self.jObj));
    }

    # The function that maps to the `hashCode` method of `java.net.URL`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_net_URL_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.net.URL`.
    public function notify() {
        java_net_URL_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.net.URL`.
    public function notifyAll() {
        java_net_URL_notifyAll(self.jObj);
    }

    # The function that maps to the `openConnection` method of `java.net.URL`.
    #
    # + return - The `URLConnection` or the `javaio:IOException` value returning from the Java mapping.
    public function openConnection() returns URLConnection|javaio:IOException {
        handle|error externalObj = java_net_URL_openConnection(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            URLConnection newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `openConnection` method of `java.net.URL`.
    #
    # + arg0 - The `Proxy` value required to map with the Java method parameter.
    # + return - The `URLConnection` or the `javaio:IOException` value returning from the Java mapping.
    public function openConnection2(Proxy arg0) returns URLConnection|javaio:IOException {
        handle|error externalObj = java_net_URL_openConnection2(self.jObj, arg0.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            URLConnection newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `openStream` method of `java.net.URL`.
    #
    # + return - The `javaio:InputStream` or the `javaio:IOException` value returning from the Java mapping.
    public function openStream() returns javaio:InputStream|javaio:IOException {
        handle|error externalObj = java_net_URL_openStream(self.jObj);
        if (externalObj is error) {
            javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            javaio:InputStream newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `sameFile` method of `java.net.URL`.
    #
    # + arg0 - The `URL` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function sameFile(URL arg0) returns boolean {
        return java_net_URL_sameFile(self.jObj, arg0.jObj);
    }

    # The function that maps to the `toExternalForm` method of `java.net.URL`.
    #
    # + return - The `string` value returning from the Java mapping.
    public function toExternalForm() returns string? {
        return java:toString(java_net_URL_toExternalForm(self.jObj));
    }

    # The function that maps to the `toURI` method of `java.net.URL`.
    #
    # + return - The `URI` or the `URISyntaxException` value returning from the Java mapping.
    public function toURI() returns URI|URISyntaxException {
        handle|error externalObj = java_net_URL_toURI(self.jObj);
        if (externalObj is error) {
            URISyntaxException e = error URISyntaxException(URISYNTAXEXCEPTION, externalObj, message = externalObj.message());
            return e;
        } else {
            URI newObj = new (externalObj);
            return newObj;
        }
    }

    # The function that maps to the `wait` method of `java.net.URL`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_net_URL_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.net.URL`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_net_URL_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.net.URL`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_net_URL_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL1(string arg0) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL1(java:fromString(arg0));
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `int` value required to map with the Java constructor parameter.
# + arg3 - The `string` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL2(string arg0, string arg1, int arg2, string arg3) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL2(java:fromString(arg0), java:fromString(arg1), arg2, java:fromString(arg3));
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `int` value required to map with the Java constructor parameter.
# + arg3 - The `string` value required to map with the Java constructor parameter.
# + arg4 - The `URLStreamHandler` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL3(string arg0, string arg1, int arg2, string arg3, URLStreamHandler arg4) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL3(java:fromString(arg0), java:fromString(arg1), arg2, java:fromString(arg3), arg4.jObj);
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `string` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `string` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL4(string arg0, string arg1, string arg2) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL4(java:fromString(arg0), java:fromString(arg1), java:fromString(arg2));
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `URL` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL5(URL arg0, string arg1) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL5(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The constructor function to generate an object of `java.net.URL`.
#
# + arg0 - The `URL` value required to map with the Java constructor parameter.
# + arg1 - The `string` value required to map with the Java constructor parameter.
# + arg2 - The `URLStreamHandler` value required to map with the Java constructor parameter.
# + return - The new `URL` class or `MalformedURLException` error generated.
public function newURL6(URL arg0, string arg1, URLStreamHandler arg2) returns URL|MalformedURLException {
    handle|error externalObj = java_net_URL_newURL6(arg0.jObj, java:fromString(arg1), arg2.jObj);
    if (externalObj is error) {
        MalformedURLException e = error MalformedURLException(MALFORMEDURLEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        URL newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `setURLStreamHandlerFactory` method of `java.net.URL`.
#
# + arg0 - The `URLStreamHandlerFactory` value required to map with the Java method parameter.
public function URL_setURLStreamHandlerFactory(URLStreamHandlerFactory arg0) {
    java_net_URL_setURLStreamHandlerFactory(arg0.jObj);
}

function java_net_URL_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.net.URL",
    paramTypes: ["java.lang.Object"]
} external;

function java_net_URL_getAuthority(handle receiver) returns handle = @java:Method {
    name: "getAuthority",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getContent(handle receiver) returns handle|error = @java:Method {
    name: "getContent",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getContent2(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "getContent",
    'class: "java.net.URL",
    paramTypes: ["[Ljava.lang.Class;"]
} external;

function java_net_URL_getDefaultPort(handle receiver) returns int = @java:Method {
    name: "getDefaultPort",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getFile(handle receiver) returns handle = @java:Method {
    name: "getFile",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getHost(handle receiver) returns handle = @java:Method {
    name: "getHost",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getPath(handle receiver) returns handle = @java:Method {
    name: "getPath",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getPort(handle receiver) returns int = @java:Method {
    name: "getPort",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getProtocol(handle receiver) returns handle = @java:Method {
    name: "getProtocol",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getQuery(handle receiver) returns handle = @java:Method {
    name: "getQuery",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getRef(handle receiver) returns handle = @java:Method {
    name: "getRef",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_getUserInfo(handle receiver) returns handle = @java:Method {
    name: "getUserInfo",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_openConnection(handle receiver) returns handle|error = @java:Method {
    name: "openConnection",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_openConnection2(handle receiver, handle arg0) returns handle|error = @java:Method {
    name: "openConnection",
    'class: "java.net.URL",
    paramTypes: ["java.net.Proxy"]
} external;

function java_net_URL_openStream(handle receiver) returns handle|error = @java:Method {
    name: "openStream",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_sameFile(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "sameFile",
    'class: "java.net.URL",
    paramTypes: ["java.net.URL"]
} external;

function java_net_URL_setURLStreamHandlerFactory(handle arg0) = @java:Method {
    name: "setURLStreamHandlerFactory",
    'class: "java.net.URL",
    paramTypes: ["java.net.URLStreamHandlerFactory"]
} external;

function java_net_URL_toExternalForm(handle receiver) returns handle = @java:Method {
    name: "toExternalForm",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_toURI(handle receiver) returns handle|error = @java:Method {
    name: "toURI",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.URL",
    paramTypes: []
} external;

function java_net_URL_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.URL",
    paramTypes: ["long"]
} external;

function java_net_URL_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.net.URL",
    paramTypes: ["long", "int"]
} external;

function java_net_URL_newURL1(handle arg0) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.lang.String"]
} external;

function java_net_URL_newURL2(handle arg0, handle arg1, int arg2, handle arg3) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.lang.String", "java.lang.String", "int", "java.lang.String"]
} external;

function java_net_URL_newURL3(handle arg0, handle arg1, int arg2, handle arg3, handle arg4) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.lang.String", "java.lang.String", "int", "java.lang.String", "java.net.URLStreamHandler"]
} external;

function java_net_URL_newURL4(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.lang.String", "java.lang.String", "java.lang.String"]
} external;

function java_net_URL_newURL5(handle arg0, handle arg1) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.net.URL", "java.lang.String"]
} external;

function java_net_URL_newURL6(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Constructor {
    'class: "java.net.URL",
    paramTypes: ["java.net.URL", "java.lang.String", "java.net.URLStreamHandler"]
} external;

