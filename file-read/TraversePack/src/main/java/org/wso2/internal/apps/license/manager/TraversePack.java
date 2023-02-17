package org.wso2.internal.apps.license.manager;

import java.io.File;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

public class TraversePack {

    public static String addFile(String path, String name){

        try {
            Files.createDirectories(Paths.get("/tmp/Storage"));
            Files.copy( new URL(path).openStream(),
            Paths.get("/tmp/Storage/"+name));
            return ("done");
        } catch (Exception e) {
            return (e.toString());
        }
    
    }

    public static String checkFile(String name){
    
        try {
            File f = new File("/tmp/Storage/"+name);
            if(f.exists()){
                return ("exists");
            }else{
                return ("doesn't exists");
            }
                
            } catch (Exception e) {
                return (e.toString());
            }
        }

}
        