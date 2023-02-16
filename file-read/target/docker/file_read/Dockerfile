# Auto Generated Dockerfile
FROM ballerina/jvm-runtime:1.0

LABEL maintainer="dev@ballerina.io"
COPY ballerina-cloud-2.4.2.jar /home/ballerina/jars/ 
COPY ballerina-io-1.3.1.jar /home/ballerina/jars/ 
COPY ballerina-log-2.5.1.jar /home/ballerina/jars/ 
COPY ballerina-observe-1.0.6.jar /home/ballerina/jars/ 
COPY ballerina-observe.mockextension-1.0.6.jar /home/ballerina/jars/ 
COPY ballerina-rt-2201.3.1.jar /home/ballerina/jars/ 
COPY ballerinai-observe-0.0.0.jar /home/ballerina/jars/ 
COPY io-native-1.3.1.jar /home/ballerina/jars/ 
COPY log-native-2.5.1.jar /home/ballerina/jars/ 
COPY observe-internal-native-1.0.5.jar /home/ballerina/jars/ 
COPY observe-native-1.0.6.jar /home/ballerina/jars/ 
COPY opentelemetry-sdk-common-1.0.0.jar /home/ballerina/jars/ 
COPY opentelemetry-sdk-testing-1.0.0.jar /home/ballerina/jars/ 
COPY opentelemetry-sdk-trace-1.0.0.jar /home/ballerina/jars/ 
COPY opentelemetry-semconv-1.0.0-alpha.jar /home/ballerina/jars/ 
COPY TraversePack-1.0-SNAPSHOT.jar /home/ballerina/jars/ 
COPY wso2-file_read-0.1.0.jar /home/ballerina/jars/ 
RUN addgroup troupe \
    && adduser -S -s /bin/bash -g 'ballerina' -G troupe -D ballerina \
    && apk add --update --no-cache bash \
    && rm -rf /var/cache/apk/*

WORKDIR /home/ballerina


USER ballerina

CMD java -Xdiag -cp "wso2-file_read-0.1.0.jar:jars/*" 'wso2/file_read/0/$_init'
