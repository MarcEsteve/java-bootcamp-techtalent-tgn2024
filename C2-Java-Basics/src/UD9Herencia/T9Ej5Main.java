package UD9Herencia;

public class T9Ej5Main {
    public static void main(String[] args) {
        // Crear profesor y estudiantes
    	T9Ej5Profesor profesor = new T9Ej5Profesor("Profesor1", 40, "masculino", "matemáticas");
    	T9Ej5Estudiante estudiante1 = new T9Ej5Estudiante("Estudiante1", 20, "masculino", 7);
    	T9Ej5Estudiante estudiante2 = new T9Ej5Estudiante("Estudiante2", 21, "femenino", 4);
    	T9Ej5Estudiante estudiante3 = new T9Ej5Estudiante("Estudiante3", 22, "masculino", 6);

        // Crear aula
    	T9Ej5Aula aula = new T9Ej5Aula(1, 20, "matemáticas", profesor);

        // Agregar estudiantes al aula
        aula.agregarEstudiante(estudiante1);
        aula.agregarEstudiante(estudiante2);
        aula.agregarEstudiante(estudiante3);

        // Verificar si se puede dar clase
        if (aula.puedeDarClase()) {
            System.out.println("Se puede dar clase en el aula.");
            // Contar estudiantes aprobados
            aula.contarEstudiantesAprobados();
        } else {
            System.out.println("No se puede dar clase en el aula.");
        }
    }
}
