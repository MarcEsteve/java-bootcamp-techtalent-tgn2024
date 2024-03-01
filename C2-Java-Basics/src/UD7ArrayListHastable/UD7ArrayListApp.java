package UD7ArrayListHastable;

import java.util.ArrayList;
import java.util.Iterator;
//import java.util.*;

public class UD7ArrayListApp {

	public static void main(String[] args) {
		
		//Declaración de variables
		ArrayList<String> lista = new ArrayList<>(); //{}
		ArrayList<Integer> listaNumeros = new ArrayList<>();//{}
		ArrayList<String> frutas = new ArrayList<>();
		
		//Acciones del programa para lista
		
		lista.add("Elemento 1");//{"Elemento 1"}
		lista.add("Elemento 2");//{"Elemento 1","Elemento 2"}
		lista.add("Elemento 3");//{"Elemento 1","Elemento 2","Elemento 3"}
		lista.add("Elemento 4");//{"Elemento 1","Elemento 2","Elemento 3","Elemento 4"}
		lista.add("Elemento 5");//{"Elemento 1","Elemento 2","Elemento 3","Elemento 4","Elemento 5"}
		System.out.println("Valores obtenidos del for:");
		for (Object pepito : lista) {
			System.out.println(pepito);
		}
		System.out.println("Valores obtenidos del toScring():");
		System.out.println(lista.toString());
		System.out.println("Tamaño del arrayList:");
		System.out.println(lista.size());
		
		//Acciones del programa para listaNumeros
		listaNumeros.add(1); //{1}
		listaNumeros.add(2); //{1,2}
		listaNumeros.add(3); //{1,2,3}
		listaNumeros.add(4); //{1,2,3,4}
		
		System.out.println("______\nAñadir add(valor):");
		System.out.println(listaNumeros.toString());
		System.out.println(listaNumeros.size());
		
		System.out.println("______\nEliminar remove(índice):");
		listaNumeros.remove(2); //Quitame el valor del índice 2, parámetro del remove es índice
		System.out.println(listaNumeros.toString());
		
		System.out.println("______\nTamaño size():");
		System.out.println(listaNumeros.size());
		
		System.out.println("______\nObtener valor get(índice):");
		System.out.println(listaNumeros.get(0)); //Indícame el valor del ÍNDICE 0
		
		System.out.println("______\nIterador/Repeticiones en bucle iterator():");
		Iterator<Integer> it = listaNumeros.iterator();
		int num;
		while (it.hasNext()) {
			num= it.next();
			System.out.println(num);
			
		}
		
		System.out.println("______\nValor en un índice concreto indexOf(4):");
		System.out.println(listaNumeros.indexOf(4)); //Parámentro es un VALOR
		
		System.out.println("______\nValor en un índice concreto de lista de Strings indexOf('Elemento 4'):");
		System.out.println(lista.indexOf("Elemento 4")); //Parámentro es un VALOR
		
		
		System.out.println("______\nElimina todos los elementos clear()");
		listaNumeros.clear();
		
		
		//Acciones del programa para frutas
		
		//Ejemplo borrar de una lista de frutas
		
		frutas.add("Manzanas");
		frutas.add("Limones");
		frutas.add("Peras");
		frutas.add("Naranjas");
		System.out.println("\nElementos de listas de frutas:");
		System.out.println(frutas.toString());
		int indexFruta= frutas.indexOf("Peras"); //2
		//Eliminar la fruta "Peras" que esta en el índice 2
		frutas.remove(indexFruta);
		System.out.println("Eliminada Peras de la lista de frutas");
		System.out.println(frutas.toString());
		
		indexFruta= frutas.indexOf("Limones"); //2

		frutas.remove(indexFruta);
		System.out.println("Eliminada Limones de la lista de frutas");
		System.out.println(frutas.toString());
		

		
	}

}
