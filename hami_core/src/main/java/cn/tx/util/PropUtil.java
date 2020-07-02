package cn.tx.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropUtil {


    public static String read(String key){
        Properties properties = new Properties();
        InputStream in =  PropUtil.class.getClassLoader().getResourceAsStream("sys.properties");
        String value = null;
        try {
            properties.load(in);
            value = properties.getProperty(key);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return value;
    }
}
