package contarpares;

public class ContardorPares {

	public static void main(String[] args) {
		int contadorPares;
		contadorPares =mostrarCantidadPares(100);
		System.out.println("Hay " + contadorPares + " numeros pares del 0 al 10");
	}

	 	public static int mostrarCantidadPares(int n) {
		int contadorPares = 0;
		for (int i = 0; i <= 10; i++) {
			if (i % 2 == 0)
				contadorPares++;
		}
		return contadorPares;
	}

	 
	


}
