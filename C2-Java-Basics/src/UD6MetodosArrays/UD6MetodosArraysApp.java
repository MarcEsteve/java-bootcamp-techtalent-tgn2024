package UD6MetodosArrays;

public class UD6MetodosArraysApp {

	public static void main(String[] args) {

		int num[] =rellenarArrayDesde(5);
		imprimirArray(num);
		//num[] = {5,6,7,8,9,10,11,12,13,14}

	}
	
	public static int[] rellenarArrayDesde(int a) {
		int num[] = new int[10];
		
		for (int i = 0; i < num.length; i++) {
			num[i]=a;
			a++;
		}
		
		return num;
	}
	
	public static void imprimirArray (int lista[]) {
		for (int i = 0; i < lista.length; i++) {
			System.out.println(lista[i]);
		}
	}
		
}
