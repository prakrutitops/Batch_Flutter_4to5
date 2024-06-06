package com.a185;

public class Pattern3 
{

	public static void main(String[] args) 
	{
		//int num=1;
		
		for (int loop=1;loop <=5;loop++)
		{
			for (int space=1;space<5-loop+2;space++)
				System.out.print("*");

			
			System.out.println("");
		}
		
	}
}
