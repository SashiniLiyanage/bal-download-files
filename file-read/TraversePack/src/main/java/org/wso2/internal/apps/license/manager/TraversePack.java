package org.wso2.internal.apps.license.manager;

import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

public class TraversePack {

    public static String getFile(String path){
    
        try {
            Files.copy( new URL(path).openStream(),
                Paths.get(System.getProperty("user.dir")+"/deleteme.zip"));
                return ("done");
            } catch (Exception e) {
                e.getStackTrace();
                return ("Exception");
            }
    }

}
        