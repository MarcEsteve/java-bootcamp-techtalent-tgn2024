package UD7ArrayListHastable;

import java.util.ArrayList;
import java.util.Iterator;
//import java.util.*;

public class UD7ArrayListApp {

	public static void main(String[] args) {

		ArrayList<String> lista = new ArrayList<>();
		lista.add("Elemento 1");
		lista.add("Elemento 2");
		lista.add("Elemento 3");
		lista.add("Elemento 4");
		lista.add("Elemento 5");
		for (Object o : lista) {
			System.out.println(o);
		}
		System.out.println(lista.toString());
		
		ArrayList<Integer> listaNumeros = new ArrayList<>();
		listaNumeros.add(1);
		listaNumeros.add(2);
		listaNumeros.add(3);
		listaNumeros.add(4);
		
		System.out.println("______\nAñadir add(valor):");
		System.out.println(listaNumeros.toString());
		System.out.println(listaNumeros.size());
		
		System.out.println("______\nEliminar remove(índice):");
		listaNumeros.remove(2);
		System.out.println(listaNumeros.toString());
		
		System.out.println("______\nTamaño size():");
		System.out.println(listaNumeros.size());
		
		System.out.println("______\nObtener valor get(índice):");
		System.out.println(listaNumeros.get(0));
		
		System.out.println("______\nIterador/Repeticiones en bucle iterator():");
		Iterator<Integer> it = listaNumeros.iterator();
		int num;
		while (it.hasNext()) {
			num= it.next();
			System.out.println(num);
			
		}
		
		System.out.println("______\nValor en un índice concreto indexOf(4):");
		System.out.println(listaNumeros.indexOf(4));

		
		System.out.println("______\nElimina todos los elementos clear():");
		listaNumeros.clear();
		System.out.println(listaNumeros.toString());
		
	}

}
