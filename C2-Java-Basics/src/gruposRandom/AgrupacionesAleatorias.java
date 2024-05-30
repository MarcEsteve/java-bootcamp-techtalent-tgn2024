package gruposRandom;

import java.util.ArrayList;
import java.util.Collections;

public class AgrupacionesAleatorias {

    public static void main(String[] args) {
        // Lista de alumnos con nombres específicos
        ArrayList<String> alumnos = new ArrayList<>();
        alumnos.add("Laia");
        alumnos.add("Toni");
        alumnos.add("Diego");
        alumnos.add("Aurora");
        alumnos.add("Alex");
        alumnos.add("Jose");
        alumnos.add("Ana");
        alumnos.add("Manel");
        alumnos.add("Abdel");
        alumnos.add("Jessica");
        alumnos.add("Santos");
        alumnos.add("Alejandro");
        alumnos.add("Isabel");
        alumnos.add("Sebas");
        alumnos.add("Joel");

        // Mezclar la lista de alumnos
        Collections.shuffle(alumnos);

        // Crear grupos de 3 alumnos cada uno
        ArrayList<ArrayList<String>> grupos = new ArrayList<>();
        for (int i = 0; i < 5; i++) {
            ArrayList<String> grupo = new ArrayList<>();
            for (int j = 0; j < 3; j++) {
                grupo.add(alumnos.get(i * 3 + j));
            }
            grupos.add(grupo);
        }

        // Imprimir los grupos
        for (int i = 0; i < grupos.size(); i++) {
            System.out.println("Grupo " + (i + 1) + ": " + grupos.get(i));
        }
    }
}
