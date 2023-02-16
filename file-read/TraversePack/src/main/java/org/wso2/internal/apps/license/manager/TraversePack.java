package org.wso2.internal.apps.license.manager;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class TraversePack {

    public static String getFile(String path){
        
        try {
            InputStream is = new URL(path).openConnection().getInputStream();
            int length = is.available();
            return Integer.toString(length);
        } catch (IOException e) {
            return "IOException";
        }
        
    }
        
}
