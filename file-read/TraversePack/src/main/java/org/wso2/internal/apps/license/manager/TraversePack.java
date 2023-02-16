package org.wso2.internal.apps.license.manager;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

public class TraversePack {

    public static String getFile(String path){
    
        try {
            Files.copy( new URL(path).openStream(),
                Paths.get("C:/Users/WSO2/Documents/test/deleteme.ZIP"));
                return ("done");
            } catch (MalformedURLException e) {
                return ("MalformedURLException");
            } catch (IOException e) {
              return ("IOException");
            }
    }

}
        