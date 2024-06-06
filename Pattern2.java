package com.a185;

public class Pattern2 
{
	public static void main(String[] args) 
	{
		//int num=1;
		
		for (int loop=1;loop <=5;loop++)
		{
			for (int space=1;space<5-loop+2;space++)
				System.out.print("#");

			for (int colom=1; colom <= loop; colom++)
			{
				System.out.print(" * ");
				//printf(" %d ",num);
				//num++;
			}
			System.out.println("");
		}
	}
}
