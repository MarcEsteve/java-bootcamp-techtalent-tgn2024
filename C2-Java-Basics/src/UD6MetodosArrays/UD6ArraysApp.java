package UD6MetodosArrays;

import java.util.Iterator;

public class UD6ArraysApp {

	public static void main(String[] args) {

		int num1[]= {5,6,5,2,3}; 
		//Declarando variable de tipo array y asignando valores
		int num2[]= new int[5]; 
		//Declardo tipo Array rando variable de tipo array y 
		//asignando valores	int num2 y tamaño 5 (todos los valores a 0)
		//num2[] = {0,0,0,0,0}
		int num[]=new int[10];
		
		num2[0] = 5; //Asignación del valor 5 en la primera posición
		num2[1] = 9; // {5,9,0,0,0}
//		num1[5]= 7;  // Fuera del tamaño máximo
		num1[2] = 4; //{5,6,4,2,3}
		
//		System.out.println(num1[0]);
//		System.out.println(num2[0]);
//		System.out.println(num1[4]);
//		System.out.println(num1[5]);
//		System.out.println(num1[2]);
		
		//Recorrer arrays, propiedad lenght indica tamaño del array
		
		for (int i=0; i<num1.length;i++) {
			//System.out.println(num1[i]);
		}
		
		//Asigna a todas las posiciones valores de 5 en 5
		for (int j=0, multiplo = 5 ; j<num.length;j++,multiplo += 5) {
			num[j] = multiplo;
			System.out.println(num[j]);
		}
		
	}

}
