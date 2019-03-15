package com.niit.emirates;

public class AirUtils {

	public static String makeItUpper(String name)
	{
		return name.toUpperCase();
	}
	
	public static double calTax(long fare)
	{
		return (fare+(fare*.12));
	}
}
