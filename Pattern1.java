package com.a185;

public class Pattern1 
{
	public static void main(String[] args) 
	{
		char ch ='A';
		//int v = 65;
		for(int i=1;i<=5;i++)//row
		{
			for(int j=1;j<=i;j++)//col
			{
				System.out.print((char)(ch));//*,i,j
			}
			System.out.println(" ");
			
		}
		
	}
}
