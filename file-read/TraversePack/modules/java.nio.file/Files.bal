import ballerina/jballerina.java;
import ballerina/jballerina.java.arrays as jarrays;
import file_read.java.lang as javalang;
import file_read.java.util as javautil;
import file_read.java.io as javaio;
import file_read.java.util.'stream as javautilstream;
import file_read.java.util.'function as javautilfunction;
import file_read.java.nio.channels as javaniochannels;
import file_read.java.nio.charset as javaniocharset;
import file_read.java.nio.file.attribute as javaniofileattribute;

# Ballerina class mapping for the Java `java.nio.file.Files` class.
@java:Binding {'class: "java.nio.file.Files"}
public distinct class Files {

    *java:JObject;
    *javalang:Object;

    # The `handle` field that stores the reference to the `java.nio.file.Files` object.
    public handle jObj;

    # The init function of the Ballerina class mapping the `java.nio.file.Files` Java class.
    #
    # + obj - The `handle` value containing the Java reference of the object.
    public function init(handle obj) {
        self.jObj = obj;
    }

    # The function to retrieve the string representation of the Ballerina class mapping the `java.nio.file.Files` Java class.
    #
    # + return - The `string` form of the Java object instance.
    public function toString() returns string {
        return java:toString(self.jObj) ?: "null";
    }
    # The function that maps to the `equals` method of `java.nio.file.Files`.
    #
    # + arg0 - The `javalang:Object` value required to map with the Java method parameter.
    # + return - The `boolean` value returning from the Java mapping.
    public function 'equals(javalang:Object arg0) returns boolean {
        return java_nio_file_Files_equals(self.jObj, arg0.jObj);
    }

    # The function that maps to the `getClass` method of `java.nio.file.Files`.
    #
    # + return - The `javalang:Class` value returning from the Java mapping.
    public function getClass() returns javalang:Class {
        handle externalObj = java_nio_file_Files_getClass(self.jObj);
        javalang:Class newObj = new (externalObj);
        return newObj;
    }

    # The function that maps to the `hashCode` method of `java.nio.file.Files`.
    #
    # + return - The `int` value returning from the Java mapping.
    public function hashCode() returns int {
        return java_nio_file_Files_hashCode(self.jObj);
    }

    # The function that maps to the `notify` method of `java.nio.file.Files`.
    public function notify() {
        java_nio_file_Files_notify(self.jObj);
    }

    # The function that maps to the `notifyAll` method of `java.nio.file.Files`.
    public function notifyAll() {
        java_nio_file_Files_notifyAll(self.jObj);
    }

    # The function that maps to the `wait` method of `java.nio.file.Files`.
    #
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function 'wait() returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Files_wait(self.jObj);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.nio.file.Files`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait2(int arg0) returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Files_wait2(self.jObj, arg0);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

    # The function that maps to the `wait` method of `java.nio.file.Files`.
    #
    # + arg0 - The `int` value required to map with the Java method parameter.
    # + arg1 - The `int` value required to map with the Java method parameter.
    # + return - The `javalang:InterruptedException` value returning from the Java mapping.
    public function wait3(int arg0, int arg1) returns javalang:InterruptedException? {
        error|() externalObj = java_nio_file_Files_wait3(self.jObj, arg0, arg1);
        if (externalObj is error) {
            javalang:InterruptedException e = error javalang:InterruptedException(javalang:INTERRUPTEDEXCEPTION, externalObj, message = externalObj.message());
            return e;
        }
    }

}

# The function that maps to the `copy` method of `java.nio.file.Files`.
#
# + arg0 - The `javaio:InputStream` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + arg2 - The `CopyOption[]` value required to map with the Java method parameter.
# + return - The `int` or the `javaio:IOException` value returning from the Java mapping.
public function Files_copy(javaio:InputStream arg0, Path arg1, CopyOption[] arg2) returns int|javaio:IOException|error {
    int|error externalObj = java_nio_file_Files_copy(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.CopyOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `copy` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaio:OutputStream` value required to map with the Java method parameter.
# + return - The `int` or the `javaio:IOException` value returning from the Java mapping.
public function Files_copy2(Path arg0, javaio:OutputStream arg1) returns int|javaio:IOException {
    int|error externalObj = java_nio_file_Files_copy2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `copy` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + arg2 - The `CopyOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_copy3(Path arg0, Path arg1, CopyOption[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_copy3(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.CopyOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createDirectories` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createDirectories(Path arg0, javaniofileattribute:FileAttribute[] arg1) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createDirectories(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createDirectory` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createDirectory(Path arg0, javaniofileattribute:FileAttribute[] arg1) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createDirectory(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createFile` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createFile(Path arg0, javaniofileattribute:FileAttribute[] arg1) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createFile(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createLink` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createLink(Path arg0, Path arg1) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_createLink(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createSymbolicLink` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + arg2 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createSymbolicLink(Path arg0, Path arg1, javaniofileattribute:FileAttribute[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createSymbolicLink(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createTempDirectory` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createTempDirectory(Path arg0, string arg1, javaniofileattribute:FileAttribute[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createTempDirectory(arg0.jObj, java:fromString(arg1), check jarrays:toHandle(arg2, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createTempDirectory` method of `java.nio.file.Files`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createTempDirectory2(string arg0, javaniofileattribute:FileAttribute[] arg1) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createTempDirectory2(java:fromString(arg0), check jarrays:toHandle(arg1, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createTempFile` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `string` value required to map with the Java method parameter.
# + arg3 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createTempFile(Path arg0, string arg1, string arg2, javaniofileattribute:FileAttribute[] arg3) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createTempFile(arg0.jObj, java:fromString(arg1), java:fromString(arg2), check jarrays:toHandle(arg3, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `createTempFile` method of `java.nio.file.Files`.
#
# + arg0 - The `string` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_createTempFile2(string arg0, string arg1, javaniofileattribute:FileAttribute[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_createTempFile2(java:fromString(arg0), java:fromString(arg1), check jarrays:toHandle(arg2, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `delete` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `javaio:IOException` value returning from the Java mapping.
public function Files_delete(Path arg0) returns javaio:IOException? {
    error|() externalObj = java_nio_file_Files_delete(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    }
}

# The function that maps to the `deleteIfExists` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function Files_deleteIfExists(Path arg0) returns boolean|javaio:IOException {
    boolean|error externalObj = java_nio_file_Files_deleteIfExists(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `exists` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_exists(Path arg0, LinkOption[] arg1) returns boolean|error {
    return java_nio_file_Files_exists(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
}

# The function that maps to the `find` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `javautilfunction:BiPredicate` value required to map with the Java method parameter.
# + arg3 - The `FileVisitOption[]` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_find(Path arg0, int arg1, javautilfunction:BiPredicate arg2, FileVisitOption[] arg3) returns javautilstream:Stream|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_find(arg0.jObj, arg1, arg2.jObj, check jarrays:toHandle(arg3, "java.nio.file.FileVisitOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `getAttribute` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javalang:Object` or the `javaio:IOException` value returning from the Java mapping.
public function Files_getAttribute(Path arg0, string arg1, LinkOption[] arg2) returns javalang:Object|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_getAttribute(arg0.jObj, java:fromString(arg1), check jarrays:toHandle(arg2, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javalang:Object newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `getFileAttributeView` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:Class` value required to map with the Java method parameter.
# + arg2 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javaniofileattribute:FileAttributeView` value returning from the Java mapping.
public function Files_getFileAttributeView(Path arg0, javalang:Class arg1, LinkOption[] arg2) returns javaniofileattribute:FileAttributeView|error {
    handle externalObj = java_nio_file_Files_getFileAttributeView(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.LinkOption"));
    javaniofileattribute:FileAttributeView newObj = new (externalObj);
    return newObj;
}

# The function that maps to the `getFileStore` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `FileStore` or the `javaio:IOException` value returning from the Java mapping.
public function Files_getFileStore(Path arg0) returns FileStore|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_getFileStore(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        FileStore newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `getLastModifiedTime` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javaniofileattribute:FileTime` or the `javaio:IOException` value returning from the Java mapping.
public function Files_getLastModifiedTime(Path arg0, LinkOption[] arg1) returns javaniofileattribute:FileTime|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_getLastModifiedTime(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaniofileattribute:FileTime newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `getOwner` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javaniofileattribute:UserPrincipal` or the `javaio:IOException` value returning from the Java mapping.
public function Files_getOwner(Path arg0, LinkOption[] arg1) returns javaniofileattribute:UserPrincipal|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_getOwner(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaniofileattribute:UserPrincipal newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `getPosixFilePermissions` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javautil:Set` or the `javaio:IOException` value returning from the Java mapping.
public function Files_getPosixFilePermissions(Path arg0, LinkOption[] arg1) returns javautil:Set|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_getPosixFilePermissions(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:Set newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `isDirectory` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isDirectory(Path arg0, LinkOption[] arg1) returns boolean|error {
    return java_nio_file_Files_isDirectory(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
}

# The function that maps to the `isExecutable` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isExecutable(Path arg0) returns boolean {
    return java_nio_file_Files_isExecutable(arg0.jObj);
}

# The function that maps to the `isHidden` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function Files_isHidden(Path arg0) returns boolean|javaio:IOException {
    boolean|error externalObj = java_nio_file_Files_isHidden(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `isReadable` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isReadable(Path arg0) returns boolean {
    return java_nio_file_Files_isReadable(arg0.jObj);
}

# The function that maps to the `isRegularFile` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isRegularFile(Path arg0, LinkOption[] arg1) returns boolean|error {
    return java_nio_file_Files_isRegularFile(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
}

# The function that maps to the `isSameFile` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` or the `javaio:IOException` value returning from the Java mapping.
public function Files_isSameFile(Path arg0, Path arg1) returns boolean|javaio:IOException {
    boolean|error externalObj = java_nio_file_Files_isSameFile(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `isSymbolicLink` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isSymbolicLink(Path arg0) returns boolean {
    return java_nio_file_Files_isSymbolicLink(arg0.jObj);
}

# The function that maps to the `isWritable` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_isWritable(Path arg0) returns boolean {
    return java_nio_file_Files_isWritable(arg0.jObj);
}

# The function that maps to the `lines` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_lines(Path arg0) returns javautilstream:Stream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_lines(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `lines` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_lines2(Path arg0, javaniocharset:Charset arg1) returns javautilstream:Stream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_lines2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `list` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_list(Path arg0) returns javautilstream:Stream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_list(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `move` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Path` value required to map with the Java method parameter.
# + arg2 - The `CopyOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_move(Path arg0, Path arg1, CopyOption[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_move(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.CopyOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newBufferedReader` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `javaio:BufferedReader` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newBufferedReader(Path arg0) returns javaio:BufferedReader|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_newBufferedReader(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:BufferedReader newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newBufferedReader` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javaio:BufferedReader` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newBufferedReader2(Path arg0, javaniocharset:Charset arg1) returns javaio:BufferedReader|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_newBufferedReader2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:BufferedReader newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newBufferedWriter` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + arg2 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `javaio:BufferedWriter` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newBufferedWriter(Path arg0, javaniocharset:Charset arg1, OpenOption[] arg2) returns javaio:BufferedWriter|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newBufferedWriter(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:BufferedWriter newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newBufferedWriter` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `javaio:BufferedWriter` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newBufferedWriter2(Path arg0, OpenOption[] arg1) returns javaio:BufferedWriter|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newBufferedWriter2(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:BufferedWriter newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newByteChannel` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `javaniochannels:SeekableByteChannel` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newByteChannel(Path arg0, OpenOption[] arg1) returns javaniochannels:SeekableByteChannel|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newByteChannel(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaniochannels:SeekableByteChannel newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newByteChannel` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javautil:Set` value required to map with the Java method parameter.
# + arg2 - The `javaniofileattribute:FileAttribute[]` value required to map with the Java method parameter.
# + return - The `javaniochannels:SeekableByteChannel` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newByteChannel2(Path arg0, javautil:Set arg1, javaniofileattribute:FileAttribute[] arg2) returns javaniochannels:SeekableByteChannel|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newByteChannel2(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.attribute.FileAttribute"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaniochannels:SeekableByteChannel newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newDirectoryStream` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `DirectoryStream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newDirectoryStream(Path arg0) returns DirectoryStream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_newDirectoryStream(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        DirectoryStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newDirectoryStream` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `Filter` value required to map with the Java method parameter.
# + return - The `DirectoryStream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newDirectoryStream2(Path arg0, Filter arg1) returns DirectoryStream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_newDirectoryStream2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        DirectoryStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newDirectoryStream` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + return - The `DirectoryStream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newDirectoryStream3(Path arg0, string arg1) returns DirectoryStream|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_newDirectoryStream3(arg0.jObj, java:fromString(arg1));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        DirectoryStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newInputStream` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `javaio:InputStream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newInputStream(Path arg0, OpenOption[] arg1) returns javaio:InputStream|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newInputStream(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:InputStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `newOutputStream` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `javaio:OutputStream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_newOutputStream(Path arg0, OpenOption[] arg1) returns javaio:OutputStream|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_newOutputStream(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaio:OutputStream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `notExists` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `boolean` value returning from the Java mapping.
public function Files_notExists(Path arg0, LinkOption[] arg1) returns boolean|error {
    return java_nio_file_Files_notExists(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.LinkOption"));
}

# The function that maps to the `probeContentType` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function Files_probeContentType(Path arg0) returns string?|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_probeContentType(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readAllBytes` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `byte[]` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readAllBytes(Path arg0) returns byte[]|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_readAllBytes(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return <byte[]>check jarrays:fromHandle(externalObj, "byte");
    }
}

# The function that maps to the `readAllLines` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `javautil:List` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readAllLines(Path arg0) returns javautil:List|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_readAllLines(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:List newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readAllLines` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `javautil:List` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readAllLines2(Path arg0, javaniocharset:Charset arg1) returns javautil:List|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_readAllLines2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:List newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readAttributes` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:Class` value required to map with the Java method parameter.
# + arg2 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javaniofileattribute:BasicFileAttributes` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readAttributes(Path arg0, javalang:Class arg1, LinkOption[] arg2) returns javaniofileattribute:BasicFileAttributes|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_readAttributes(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javaniofileattribute:BasicFileAttributes newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readAttributes` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `javautil:Map` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readAttributes2(Path arg0, string arg1, LinkOption[] arg2) returns javautil:Map|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_readAttributes2(arg0.jObj, java:fromString(arg1), check jarrays:toHandle(arg2, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautil:Map newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `readString` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readString(Path arg0) returns string?|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_readString(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readString` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + return - The `string` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readString2(Path arg0, javaniocharset:Charset arg1) returns string?|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_readString2(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return java:toString(externalObj);
    }
}

# The function that maps to the `readSymbolicLink` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_readSymbolicLink(Path arg0) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_readSymbolicLink(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `setAttribute` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `string` value required to map with the Java method parameter.
# + arg2 - The `javalang:Object` value required to map with the Java method parameter.
# + arg3 - The `LinkOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_setAttribute(Path arg0, string arg1, javalang:Object arg2, LinkOption[] arg3) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_setAttribute(arg0.jObj, java:fromString(arg1), arg2.jObj, check jarrays:toHandle(arg3, "java.nio.file.LinkOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `setLastModifiedTime` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:FileTime` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_setLastModifiedTime(Path arg0, javaniofileattribute:FileTime arg1) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_setLastModifiedTime(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `setOwner` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javaniofileattribute:UserPrincipal` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_setOwner(Path arg0, javaniofileattribute:UserPrincipal arg1) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_setOwner(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `setPosixFilePermissions` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javautil:Set` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_setPosixFilePermissions(Path arg0, javautil:Set arg1) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_setPosixFilePermissions(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `size` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + return - The `int` or the `javaio:IOException` value returning from the Java mapping.
public function Files_size(Path arg0) returns int|javaio:IOException {
    int|error externalObj = java_nio_file_Files_size(arg0.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        return externalObj;
    }
}

# The function that maps to the `walk` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `FileVisitOption[]` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_walk(Path arg0, FileVisitOption[] arg1) returns javautilstream:Stream|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_walk(arg0.jObj, check jarrays:toHandle(arg1, "java.nio.file.FileVisitOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `walk` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `int` value required to map with the Java method parameter.
# + arg2 - The `FileVisitOption[]` value required to map with the Java method parameter.
# + return - The `javautilstream:Stream` or the `javaio:IOException` value returning from the Java mapping.
public function Files_walk2(Path arg0, int arg1, FileVisitOption[] arg2) returns javautilstream:Stream|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_walk2(arg0.jObj, arg1, check jarrays:toHandle(arg2, "java.nio.file.FileVisitOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        javautilstream:Stream newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `walkFileTree` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `FileVisitor` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_walkFileTree(Path arg0, FileVisitor arg1) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_walkFileTree(arg0.jObj, arg1.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `walkFileTree` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javautil:Set` value required to map with the Java method parameter.
# + arg2 - The `int` value required to map with the Java method parameter.
# + arg3 - The `FileVisitor` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_walkFileTree2(Path arg0, javautil:Set arg1, int arg2, FileVisitor arg3) returns Path|javaio:IOException {
    handle|error externalObj = java_nio_file_Files_walkFileTree2(arg0.jObj, arg1.jObj, arg2, arg3.jObj);
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `write` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `byte[]` value required to map with the Java method parameter.
# + arg2 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_write(Path arg0, byte[] arg1, OpenOption[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_write(arg0.jObj, check jarrays:toHandle(arg1, "byte"), check jarrays:toHandle(arg2, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `write` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:Iterable` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + arg3 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_write2(Path arg0, javalang:Iterable arg1, javaniocharset:Charset arg2, OpenOption[] arg3) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_write2(arg0.jObj, arg1.jObj, arg2.jObj, check jarrays:toHandle(arg3, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `write` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:Iterable` value required to map with the Java method parameter.
# + arg2 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_write3(Path arg0, javalang:Iterable arg1, OpenOption[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_write3(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `writeString` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `javaniocharset:Charset` value required to map with the Java method parameter.
# + arg3 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_writeString(Path arg0, javalang:CharSequence arg1, javaniocharset:Charset arg2, OpenOption[] arg3) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_writeString(arg0.jObj, arg1.jObj, arg2.jObj, check jarrays:toHandle(arg3, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

# The function that maps to the `writeString` method of `java.nio.file.Files`.
#
# + arg0 - The `Path` value required to map with the Java method parameter.
# + arg1 - The `javalang:CharSequence` value required to map with the Java method parameter.
# + arg2 - The `OpenOption[]` value required to map with the Java method parameter.
# + return - The `Path` or the `javaio:IOException` value returning from the Java mapping.
public function Files_writeString2(Path arg0, javalang:CharSequence arg1, OpenOption[] arg2) returns Path|javaio:IOException|error {
    handle|error externalObj = java_nio_file_Files_writeString2(arg0.jObj, arg1.jObj, check jarrays:toHandle(arg2, "java.nio.file.OpenOption"));
    if (externalObj is error) {
        javaio:IOException e = error javaio:IOException(javaio:IOEXCEPTION, externalObj, message = externalObj.message());
        return e;
    } else {
        Path newObj = new (externalObj);
        return newObj;
    }
}

function java_nio_file_Files_copy(handle arg0, handle arg1, handle arg2) returns int|error = @java:Method {
    name: "copy",
    'class: "java.nio.file.Files",
    paramTypes: ["java.io.InputStream", "java.nio.file.Path", "[Ljava.nio.file.CopyOption;"]
} external;

function java_nio_file_Files_copy2(handle arg0, handle arg1) returns int|error = @java:Method {
    name: "copy",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.io.OutputStream"]
} external;

function java_nio_file_Files_copy3(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "copy",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.Path", "[Ljava.nio.file.CopyOption;"]
} external;

function java_nio_file_Files_createDirectories(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "createDirectories",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createDirectory(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "createDirectory",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createFile(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "createFile",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createLink(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "createLink",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.Path"]
} external;

function java_nio_file_Files_createSymbolicLink(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "createSymbolicLink",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.Path", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createTempDirectory(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "createTempDirectory",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createTempDirectory2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "createTempDirectory",
    'class: "java.nio.file.Files",
    paramTypes: ["java.lang.String", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createTempFile(handle arg0, handle arg1, handle arg2, handle arg3) returns handle|error = @java:Method {
    name: "createTempFile",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String", "java.lang.String", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_createTempFile2(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "createTempFile",
    'class: "java.nio.file.Files",
    paramTypes: ["java.lang.String", "java.lang.String", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_delete(handle arg0) returns error? = @java:Method {
    name: "delete",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_deleteIfExists(handle arg0) returns boolean|error = @java:Method {
    name: "deleteIfExists",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_equals(handle receiver, handle arg0) returns boolean = @java:Method {
    name: "equals",
    'class: "java.nio.file.Files",
    paramTypes: ["java.lang.Object"]
} external;

function java_nio_file_Files_exists(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "exists",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_find(handle arg0, int arg1, handle arg2, handle arg3) returns handle|error = @java:Method {
    name: "find",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "int", "java.util.function.BiPredicate", "[Ljava.nio.file.FileVisitOption;"]
} external;

function java_nio_file_Files_getAttribute(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "getAttribute",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_getClass(handle receiver) returns handle = @java:Method {
    name: "getClass",
    'class: "java.nio.file.Files",
    paramTypes: []
} external;

function java_nio_file_Files_getFileAttributeView(handle arg0, handle arg1, handle arg2) returns handle = @java:Method {
    name: "getFileAttributeView",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.Class", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_getFileStore(handle arg0) returns handle|error = @java:Method {
    name: "getFileStore",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_getLastModifiedTime(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "getLastModifiedTime",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_getOwner(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "getOwner",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_getPosixFilePermissions(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "getPosixFilePermissions",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_hashCode(handle receiver) returns int = @java:Method {
    name: "hashCode",
    'class: "java.nio.file.Files",
    paramTypes: []
} external;

function java_nio_file_Files_isDirectory(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isDirectory",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_isExecutable(handle arg0) returns boolean = @java:Method {
    name: "isExecutable",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_isHidden(handle arg0) returns boolean|error = @java:Method {
    name: "isHidden",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_isReadable(handle arg0) returns boolean = @java:Method {
    name: "isReadable",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_isRegularFile(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "isRegularFile",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_isSameFile(handle arg0, handle arg1) returns boolean|error = @java:Method {
    name: "isSameFile",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.Path"]
} external;

function java_nio_file_Files_isSymbolicLink(handle arg0) returns boolean = @java:Method {
    name: "isSymbolicLink",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_isWritable(handle arg0) returns boolean = @java:Method {
    name: "isWritable",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_lines(handle arg0) returns handle|error = @java:Method {
    name: "lines",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_lines2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "lines",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.charset.Charset"]
} external;

function java_nio_file_Files_list(handle arg0) returns handle|error = @java:Method {
    name: "list",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_move(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "move",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.Path", "[Ljava.nio.file.CopyOption;"]
} external;

function java_nio_file_Files_newBufferedReader(handle arg0) returns handle|error = @java:Method {
    name: "newBufferedReader",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_newBufferedReader2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newBufferedReader",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.charset.Charset"]
} external;

function java_nio_file_Files_newBufferedWriter(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "newBufferedWriter",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.charset.Charset", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_newBufferedWriter2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newBufferedWriter",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_newByteChannel(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newByteChannel",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_newByteChannel2(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "newByteChannel",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.util.Set", "[Ljava.nio.file.attribute.FileAttribute;"]
} external;

function java_nio_file_Files_newDirectoryStream(handle arg0) returns handle|error = @java:Method {
    name: "newDirectoryStream",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_newDirectoryStream2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newDirectoryStream",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.DirectoryStream$Filter"]
} external;

function java_nio_file_Files_newDirectoryStream3(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newDirectoryStream",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String"]
} external;

function java_nio_file_Files_newInputStream(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newInputStream",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_newOutputStream(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "newOutputStream",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_notExists(handle arg0, handle arg1) returns boolean = @java:Method {
    name: "notExists",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_notify(handle receiver) = @java:Method {
    name: "notify",
    'class: "java.nio.file.Files",
    paramTypes: []
} external;

function java_nio_file_Files_notifyAll(handle receiver) = @java:Method {
    name: "notifyAll",
    'class: "java.nio.file.Files",
    paramTypes: []
} external;

function java_nio_file_Files_probeContentType(handle arg0) returns handle|error = @java:Method {
    name: "probeContentType",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_readAllBytes(handle arg0) returns handle|error = @java:Method {
    name: "readAllBytes",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_readAllLines(handle arg0) returns handle|error = @java:Method {
    name: "readAllLines",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_readAllLines2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readAllLines",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.charset.Charset"]
} external;

function java_nio_file_Files_readAttributes(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "readAttributes",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.Class", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_readAttributes2(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "readAttributes",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_readString(handle arg0) returns handle|error = @java:Method {
    name: "readString",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_readString2(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "readString",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.charset.Charset"]
} external;

function java_nio_file_Files_readSymbolicLink(handle arg0) returns handle|error = @java:Method {
    name: "readSymbolicLink",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_setAttribute(handle arg0, handle arg1, handle arg2, handle arg3) returns handle|error = @java:Method {
    name: "setAttribute",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.String", "java.lang.Object", "[Ljava.nio.file.LinkOption;"]
} external;

function java_nio_file_Files_setLastModifiedTime(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "setLastModifiedTime",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.attribute.FileTime"]
} external;

function java_nio_file_Files_setOwner(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "setOwner",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.attribute.UserPrincipal"]
} external;

function java_nio_file_Files_setPosixFilePermissions(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "setPosixFilePermissions",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.util.Set"]
} external;

function java_nio_file_Files_size(handle arg0) returns int|error = @java:Method {
    name: "size",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path"]
} external;

function java_nio_file_Files_wait(handle receiver) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Files",
    paramTypes: []
} external;

function java_nio_file_Files_wait2(handle receiver, int arg0) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Files",
    paramTypes: ["long"]
} external;

function java_nio_file_Files_wait3(handle receiver, int arg0, int arg1) returns error? = @java:Method {
    name: "wait",
    'class: "java.nio.file.Files",
    paramTypes: ["long", "int"]
} external;

function java_nio_file_Files_walk(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "walk",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[Ljava.nio.file.FileVisitOption;"]
} external;

function java_nio_file_Files_walk2(handle arg0, int arg1, handle arg2) returns handle|error = @java:Method {
    name: "walk",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "int", "[Ljava.nio.file.FileVisitOption;"]
} external;

function java_nio_file_Files_walkFileTree(handle arg0, handle arg1) returns handle|error = @java:Method {
    name: "walkFileTree",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.nio.file.FileVisitor"]
} external;

function java_nio_file_Files_walkFileTree2(handle arg0, handle arg1, int arg2, handle arg3) returns handle|error = @java:Method {
    name: "walkFileTree",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.util.Set", "int", "java.nio.file.FileVisitor"]
} external;

function java_nio_file_Files_write(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "write",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "[B", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_write2(handle arg0, handle arg1, handle arg2, handle arg3) returns handle|error = @java:Method {
    name: "write",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.Iterable", "java.nio.charset.Charset", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_write3(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "write",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.Iterable", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_writeString(handle arg0, handle arg1, handle arg2, handle arg3) returns handle|error = @java:Method {
    name: "writeString",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.CharSequence", "java.nio.charset.Charset", "[Ljava.nio.file.OpenOption;"]
} external;

function java_nio_file_Files_writeString2(handle arg0, handle arg1, handle arg2) returns handle|error = @java:Method {
    name: "writeString",
    'class: "java.nio.file.Files",
    paramTypes: ["java.nio.file.Path", "java.lang.CharSequence", "[Ljava.nio.file.OpenOption;"]
} external;

