// Ballerina error type for `java.net.URISyntaxException`.

public const URISYNTAXEXCEPTION = "URISyntaxException";

type URISyntaxExceptionData record {
    string message;
};

public type URISyntaxException distinct error<URISyntaxExceptionData>;

