package alvaro;

public class Alvaro {

	public static void main(String[] args) {
		
		String nombre = "Álvaro";
		imprimirSaludo(nombre);
		System.out.println("Hobbies:");
		System.out.println("1. Videojuegos.");
		System.out.println("2. Series de televisión");
		System.out.println("3. Música francesa");
		
		System.out.println("Comidas:");
		System.out.println("- Lasaña");
		System.out.println("- Paella");
		System.out.println("- Pizza");

	}
	
	public static void imprimirSaludo(String nombre) {
		System.out.println("Hola, soy " + nombre);
	}

}
