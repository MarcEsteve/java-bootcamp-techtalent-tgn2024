
public class UD5StringBuilderBuffer {

	public static void main(String[] args) {
		/*
		 * Concatenación utilizando String
		 */
		long startTime = System.currentTimeMillis();
		String str1 = "";
		for (int i = 0; i < 100000; i++) {
			str1 += i;
		}
		long endTime = System.currentTimeMillis() - startTime;
		System.out.printf("El tiempo que ha tardado con String"
				+ " es de %d milisegundos", endTime).println();
		/*
		 * Concatenación utilizando StringBuilder
		 */
		startTime = System.currentTimeMillis();
		StringBuilder str2 = new StringBuilder();
		for (int i = 0; i < 100000; i++) {
			str2.append(i);
		}
		endTime = System.currentTimeMillis() - startTime;
		System.out.printf("El tiempo que ha tardado con "
				+ "StringBuilder es de %d milisegundos", 
				endTime).println();
		/*
		 * Concatenación utilizando StringBuffer
		 */
		startTime = System.currentTimeMillis();
		StringBuffer str3 = new StringBuffer();
		for (int i = 0; i < 100000; i++) {
			str3.append(i);
		}
		endTime = System.currentTimeMillis() - startTime;
		System.out.printf("El tiempo que ha tardado con "
				+ "StringBuffer es de %d milisegundos", 
				endTime).println();
	}

}
