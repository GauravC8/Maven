package com.niit.demo;

public class MyConcatenator {

    public static String concatenate(String ... strings){
        StringBuilder builder = new StringBuilder();

        for(int i = 0; i<strings.length; i++){
            if(i>0){
                builder.append(",");
            }
            builder.append(strings[i]);
        }

        return builder.toString();
    }
}