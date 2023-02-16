// import ballerina/io;
// import ballerina/http;
import ballerina/log;
import ballerina/jballerina.java;

// configurable string SRC_URL = ?;
// configurable string DEST_PATH = ?;
configurable string PATH = ?;
// function downloadFile(string filePath, string url) returns error? {
//     http:Client httpEP = check new (url);
//     http:Response e = check httpEP->get("");
//     return io:fileWriteBytes(filePath, check e.getBinaryPayload());
// }

public isolated function getFile(handle product) returns handle = @java:Method {
    name: "getFile",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;

public function main() {
    
    string? response = java:toString(getFile(java:fromString(PATH)));

    if(response is string){
        log:printInfo(response);
    }else{
        log:printError("error");
    }

    // error? status = downloadFile(DEST_PATH, SRC_URL);
    // if (status is error) {
    //     io:println(status);
    // } else {
    //     io:println("File downloaded successfully");
    // }
}