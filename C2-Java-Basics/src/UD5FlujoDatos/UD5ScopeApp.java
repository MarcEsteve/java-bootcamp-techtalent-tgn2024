package UD5FlujoDatos;

public class UD5ScopeApp {
	
	static int variableGlobal = 10;
	
	public static void metodoPrueba(){
		int variableMetodo=40;
		for (int i=0;i<10;i++) {
			System.out.println("La variable i vale " + i); 
			// Aquí si que existe la variable i
		}
//		System.out.println("La variable i vale " + i);
		// Aquí ya no que existe la variable i
		System.out.println("Muestra variableMetodo " + variableMetodo);
	}

	public static void main(String[] args) {
//		System.out.println("La variableMetodo local vale " 
//				+ variableMetodo); // Aquí ya no que existe esta variable
		int variableLocal1=20;
		if (variableGlobal==10) {
			int variableLocal2=30;
			System.out.println("La variable local 1 vale " 
					+ variableLocal1);
		}
//		System.out.println("La variable local 2 vale " 
//				+ variableLocal2);
		System.out.println("La variable global vale " 
				+ variableGlobal);
		metodoPrueba();
		
	}

}
