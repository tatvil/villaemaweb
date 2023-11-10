package junit5;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import dao.Jugador;

public class JugadorTest {


		private Jugador j1;
		
		
		@BeforeEach
		void setUp() throws Exception{
			j1 = new Jugador();
		}
		
		@Test
		public void asignaDorsal() {
			System.out.println("Test 1");
			
			j1.ponerDorsal(24);
			
			int dorsalEsperado = j1.getDorsal();
			int dorsalObtenido = 24;
			
			assertEquals(dorsalEsperado, dorsalObtenido);
		}
		
		@Test
		public void asignaDorsal1() {
			System.out.println("Test 2");
			
			j1.ponerDorsal(1);
			
			int dorsalEsperado = j1.getDorsal();
			int dorsalObtenido = 1;
			
			assertEquals(dorsalEsperado, dorsalObtenido);
		}
		
		@Test
		public void asignaDorsal30() {
			System.out.println("Test 3");
			
			j1.ponerDorsal(30);
			
			int dorsalEsperado = j1.getDorsal();
			int dorsalObtenido = 30;
			
			assertEquals(dorsalEsperado, dorsalObtenido);
		}
		
		@Test
		public void asignaDorsalNegativo() {
			System.out.println("Test 4");
			
			j1.ponerDorsal(-5);
			
			int dorsalEsperado = j1.getDorsal();
			int dorsalObtenido = -1;
			
			assertEquals(dorsalEsperado, dorsalObtenido);
		}
		
		@Test
		public void asignaDorsalMayor30() {
			System.out.println("Test 5");
			
			Jugador j1 = new Jugador();
			
			j1.ponerDorsal(33);
			
			int dorsalEsperado = j1.getDorsal();
			int dorsalObtenido = -1;
			
			assertEquals(dorsalEsperado, dorsalObtenido);
		}
		
		@Test
		public void expulsadoFalse() {
			System.out.println("Test 6");
			
			assertFalse(j1.estaExpulsado());
		}
		
		@Test
		public void expulsadoFalse2() {
			System.out.println("Test 7");
			
			j1.setNumeroTarjetasAmarillas(1);
			
			assertFalse(j1.estaExpulsado());
		}
		
		@Test
		public void expulsadoTrueRoja() {
			System.out.println("Test 8");
			
			j1.setNumeroTarjetasRojas(1);
			
			assertTrue(j1.estaExpulsado());
		}
		
		@Test
		public void expulsadoTrueAmarilla() {
			System.out.println("Test 9");
			
			j1.setNumeroTarjetasAmarillas(2);
			
			assertTrue(j1.estaExpulsado());
		}
		
		@Test
		public void expulsadoTrue2() {
			System.out.println("Test 10");
			
			j1.setNumeroTarjetasAmarillas(2);
			j1.setNumeroTarjetasRojas(1);
			
			assertTrue(j1.estaExpulsado());
		}
		
	}


