import ballerina/io;
import ballerina/http;

configurable string SRC_URL = ?;
configurable string DEST_PATH = ?;

function downloadFile(string filePath, string url) returns error? {
    http:Client httpEP = check new (url);
    http:Response e = check httpEP->get("");
    return io:fileWriteBytes(filePath, check e.getBinaryPayload());
}

public function main() {
    error? status = downloadFile(DEST_PATH, SRC_URL);
    if (status is error) {
        io:println(status);
    } else {
        io:println("File downloaded successfully");
    }
}