package dao;

/**
 * Esta es la clase jugador. \n
 * Puedes definir a cada uno de los jugadores de un equipo de futbol, con su numero de dorsal.
 * Puedes añadir y consultar sus tarjetas amarillas y rojas, y según eso saber si están expulsados.
 * 
 * @author Tatiana Villa
 */
public class Jugador {

        private int dorsal;
        private int numeroTarjetasAmarillas;
        private int numeroTarjetasRojas;

        /**
         * getDorsal devuelve el numero del dorsal del jugador
         * @return Devuelve un numero entero
         */
        
        public int getDorsal() {
			return dorsal;
		}


        /**
         * setDorsal sirve para ponerle el numero del dorsal asignarle el numero de dorsal al jugador
         * @param dorsal Numero entero con el dorsal asignado
         */
		public void setDorsal(int dorsal) {
			this.dorsal = dorsal;
		}



		public int getNumeroTarjetasAmarillas() {
			return numeroTarjetasAmarillas;
		}



		public void setNumeroTarjetasAmarillas(int numeroTarjetasAmarillas) {
			this.numeroTarjetasAmarillas = numeroTarjetasAmarillas;
		}



		public int getNumeroTarjetasRojas() {
			return numeroTarjetasRojas;
		}



		public void setNumeroTarjetasRojas(int numeroTarjetasRojas) {
			this.numeroTarjetasRojas = numeroTarjetasRojas;
		}

        /**
         * ponerDorsal sirve para asignar el numero de dorsal al jugador
         * @param dorsal Numero entero con el dorsal asignado (1-30)
         */
        public void ponerDorsal(int dorsal) {

            if(dorsal >= 1 && dorsal <= 30) {

                          this.dorsal = dorsal;

            }else {

                          this.dorsal = -1;

            }

        }
        /**
         * estaExpulsado Te dice si el jugador está expulsado dependiendo del numero de tarjetas amarillas (2)
         * o rojas (1) 
         * @return booleano true si está expulsado o false si no está expulsado
         */

		public boolean estaExpulsado() {

                      boolean expulsado = false;                                                  

                      if(numeroTarjetasAmarillas == 2) {

                                    expulsado = true;

                      }                          

                      if(numeroTarjetasRojas == 1) {

                                    expulsado = true;

                      }                          

                      return expulsado;

        }            

}
