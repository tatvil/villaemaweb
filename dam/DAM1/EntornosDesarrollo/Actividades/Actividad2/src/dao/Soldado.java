package dao;

/**
 * 
 * Esta es la clase soldado. 
 * <br> OMG &#191;Estamos en guerra? No me gustan las guerras porque los soldados se mueren
 * 
 * @author Tatiana Villa
 */
public class Soldado {
	
    private boolean estaMuerto;
    private int numeroBalas;

   
	/**
	 * isEstaMuerto sirve para saber si un soldado esta vivo o muerto
	 * 
	 * @return Devuelve estaMuerto (boolean), true si esta muerto y false si esta vivo 
	 */
    public boolean isEstaMuerto() {
		return estaMuerto;
	}
    
	/**
	 * setEstaMuerto Ayuda a cambiar el estado de un soldado vivo a muerto. Suporgo que se habr&aacute; hecho por simplificar el ejercicio, porque un soldado que estaba muerto, no deberia pasar a vivo otra vez. Aunque ser&iacute;a una alegria para la familia :)
	 * 
	 * @param estaMuerto (boolean), true si esta muerto y false si esta vivo 
	 */
	public void setEstaMuerto(boolean estaMuerto) {
		this.estaMuerto = estaMuerto;
	}
	
	/**
	 * El numero de balas que tiene un soldado son las balas que lleva dentro. 
	 * Cuantas mas balas, más probabilidades tiene  de estar muerto.
	 * Es un poco triste pensar en guerras y pobres soldados que mueren en combate.
	 * 
	 * @author Tatiana Villa
	 * 
	 * @return Devuelve numeroBalas (int) con el numero de balas que tiene el soldado
	 */
	public int getNumeroBalas() {
		return numeroBalas;
	}
	
	/**
	 * El numero de balas que tiene un soldado son las balas que lleva dentro. 
	 * Cuantas mas balas, más probabilidades tiene  de estar muerto.
	 * Es un poco triste pensar en guerras y pobres soldados que mueren en combate.
	 * 
	 * @author Tatiana Villa
	 * 
	 * @param numeroBalas (int) con el numero de balas que asignamos al soldado
	 */
	public void setNumeroBalas(int numeroBalas) {
		this.numeroBalas = numeroBalas;
	}
	

    public boolean puedeDisparar() {

                  if(this.numeroBalas > 0) {

                                return true;

                  			}                          

                  return false;
    			}
    
	public void disparar(Soldado sol) {

        this.numeroBalas--;

        sol.estaMuerto = true;

}

}
