import ballerina/log;
import ballerina/jballerina.java;
import ballerina/http;

configurable string PATH = ?;

public isolated function getFile(handle product) returns handle = @java:Method {
    name: "getFile",
    'class: "org.wso2.internal.apps.license.manager.TraversePack"
} external;

service / on new http:Listener(9096) {

    resource function get details() returns string {

        string? response = java:toString(getFile(java:fromString(PATH)));

        if(response is string){
            log:printInfo(response);
            return response;
        }else{
            log:printError("error");
            return "error";
        }
        
    }
    
}