package com.a185;

public class Pattern4 
{
	public static void main(String[] args) 
	{
		
		for(int i=1;i<=5;i++)
		{
			for(int space=1;space<=5-i;space++)
			{
				System.out.print(" ");
			}
			for(int j=1;j<=i;j++)
			{
				System.out.print("*");
			}
			System.out.println(" ");
		}
		
	}
}
