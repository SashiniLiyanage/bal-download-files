# Auto Generated Dockerfile
FROM ballerina/jvm-runtime:1.0

LABEL maintainer="dev@ballerina.io"
COPY ballerina-cloud-2.4.2.jar /home/10014/jars/ 
COPY ballerina-io-1.3.1.jar /home/10014/jars/ 
COPY ballerina-log-2.5.1.jar /home/10014/jars/ 
COPY ballerina-observe-1.0.6.jar /home/10014/jars/ 
COPY ballerina-observe.mockextension-1.0.6.jar /home/10014/jars/ 
COPY ballerina-rt-2201.3.1.jar /home/10014/jars/ 
COPY ballerinai-observe-0.0.0.jar /home/10014/jars/ 
COPY io-native-1.3.1.jar /home/10014/jars/ 
COPY log-native-2.5.1.jar /home/10014/jars/ 
COPY observe-internal-native-1.0.5.jar /home/10014/jars/ 
COPY observe-native-1.0.6.jar /home/10014/jars/ 
COPY opentelemetry-sdk-common-1.0.0.jar /home/10014/jars/ 
COPY opentelemetry-sdk-testing-1.0.0.jar /home/10014/jars/ 
COPY opentelemetry-sdk-trace-1.0.0.jar /home/10014/jars/ 
COPY opentelemetry-semconv-1.0.0-alpha.jar /home/10014/jars/ 
COPY TraversePack-1.0-SNAPSHOT.jar /home/10014/jars/ 
COPY wso2-file_read-0.1.0.jar /home/10014/jars/ 
RUN addgroup troupe \
    && adduser -S -s /bin/bash -g '10014' -G troupe -D 10014 \
    && apk add --update --no-cache bash \
    && rm -rf /var/cache/apk/*

WORKDIR /home/10014


USER 10014

CMD java -Xdiag -cp "wso2-file_read-0.1.0.jar:jars/*" 'wso2/file_read/0/$_init'
