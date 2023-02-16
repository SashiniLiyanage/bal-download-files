import ballerina/log;
import ballerina/jballerina.java;
import ballerina/http;

configurable string PATH = ?;

public isolated function addFile(handle url, handle name) returns handle = @java:Method {
    name: "addFile",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;
public isolated function checkFile(handle name) returns handle = @java:Method {
    name: "checkFile",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;

service / on new http:Listener(9096) {

    resource function post details(@http:Payload json payload) returns string| error {

        string url = check payload.url;
        string name = check  payload.name;

        string? response = java:toString(addFile(java:fromString(url),java:fromString(name)));

        if(response is string){
            return response;
        }else{
            log:printError("error");
            return "error";
        }
        
    }

    resource function get checkdetails/[string name]() returns string {
        string? response = java:toString(checkFile(java:fromString(name)));

        if(response is string){
            return response;
        }else{
            log:printError("error");
            return "error";
        }
    }
    
}