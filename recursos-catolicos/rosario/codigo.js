var d = new Date();
var weekday = new Array(7);
var n = weekday[d.getDay()];
var misterios = new Array(7);
var nombreMisterio = "";
var diaSemana = "";
var tituloMisterio1, tituloMisterio2, tituloMisterio3, tituloMisterio4, tituloMisterio5;
var textoMisterio1, textoMisterio2, textoMisterio3, textoMisterio4, textoMisterio5;
var imagen1, imagen2, imagen3, imagen4, imagen5;

function visualizarCabecera(misterio,dia)
  {

//    if (misterio="") misterio=misterios[d.getDay()];
//    if (dia="") dia=weekday[d.getDay()];
    nombreMisterio.textContent ="MISTERIOS "+misterio+" ("+dia+")";
  }

function inicializarVariables ()
  {
    nombreMisterio	= document.getElementById('nombreMisterio');
    diaSemana	      = document.getElementById('weekday');

    tituloMisterio1	= document.getElementById('tituloMisterio1');
    tituloMisterio2	= document.getElementById('tituloMisterio2');
    tituloMisterio3	= document.getElementById('tituloMisterio3');
    tituloMisterio4	= document.getElementById('tituloMisterio4');
    tituloMisterio5	= document.getElementById('tituloMisterio5');

    textoMisterio1	= document.getElementById('textoMisterio1');
    textoMisterio2	= document.getElementById('textoMisterio2');
    textoMisterio3	= document.getElementById('textoMisterio3');
    textoMisterio4	= document.getElementById('textoMisterio4');
    textoMisterio5	= document.getElementById('textoMisterio5');

    imagen1	= document.getElementById('imagen1');
    imagen2	= document.getElementById('imagen2');
    imagen3	= document.getElementById('imagen3');
    imagen4	= document.getElementById('imagen4');
    imagen5	= document.getElementById('imagen5');

    lunes	          = document.getElementById('lunes');
    martes	        = document.getElementById('martes');
    miercoles	      = document.getElementById('miercoles');
    jueves	        = document.getElementById('jueves');
    viernes	        = document.getElementById('viernes');
    sabado	        = document.getElementById('sabado');
    domingo	        = document.getElementById('domingo');
    

    weekday[0] = "DOMINGO";   //Domingo
    weekday[1] = "LUNES";     //Lunes
    weekday[2] = "MARTES";   //Martes
    weekday[3] = "MIERCOLES";   //Miercoles
    weekday[4] = "JUEVES";   //Jueves
    weekday[5] = "VIERNES";   //Viernes
    weekday[6] = "SABADO";     //Sabado


    misterios[0] = "GLORIOSOS";   //Domingo
    misterios[1] = "GOZOSOS";     //Lunes
    misterios[2] = "DOLOROSOS";   //Martes
    misterios[3] = "GLORIOSOS";   //Miercoles
    misterios[4] = "LUMINOSOS";   //Jueves
    misterios[5] = "DOLOROSOS";   //Viernes
    misterios[6] = "GOZOSOS";     //Sabado
  }

function misteriosGloriosos(dia)
    {
        visualizarCabecera('gloriosos',dia);
        tituloMisterio1.textContent = '1º misterio. La Resurreccion de Jesucristo';
        imagen1.src = 'imagenes/gloriosos1.jpg';
        textoMisterio1.textContent = 'La Resurrección de Cristo, al tercer día después de su entierro ("Resurrectio") «El primer día de la semana, muy de mañana, fueron al sepulcro llevando los aromas que habían preparado. Pero encontraron que la piedra había sido retirada del sepulcro, y entraron, pero no hallaron el cuerpo del Señor Jesús. No sabían que pensar de esto, cuando se presentaron ante ellas dos hombres con vestidos resplandecientes. Ellas, despavoridas, miraban al suelo, y ellos les dijeron: "¿Por qué buscáis entre los muertos al que está vivo? No está aquí, ha resucitado"» (Lucas 24, 1-6). «"Si no resucitó Cristo, vana es nuestra predicación, vana también vuestra fe" (1Cor 15, 14). La Resurrección constituye ante todo la confirmación de todo lo que Cristo hizo y enseñó» (CIC, 651).';

        tituloMisterio2.textContent = '2º misterio. La ascensión del Señor Jesucristo al Cielo';
        imagen2.src = 'imagenes/gloriosos2.jpg';
        textoMisterio2.textContent = 'La Ascensión del Señor al Cielo, pasados cuarenta días tras la resurrección «El Señor Jesús, después de hablarles, ascendió al cielo y se sentó a la derecha de Dios» (Marcos 16, 19). «Esta última etapa permanece estrechamente unida a la primera, es decir, a la bajada desde el cielo realizada en la Encarnación. Sólo el que "salió del Padre" puede volver al Padre: Cristo» (CIC, 661).';

        tituloMisterio3.textContent = '3º misterio. La venida del Espíritu Santo sobre la Virgen María y los apóstoles';
        imagen3.src = 'imagenes/gloriosos3.jpg';
        textoMisterio3.textContent = 'La venida del Espíritu Santo en Pentecostés (Descensus Spiritus Sancti) «Al llegar el día de Pentecostés, estaban todos reunidos en un mismo lugar. De repente vino del cielo un ruido como el de una ráfaga de viento impetuoso, que llenó toda la casa en la que se encontraban. Se les aparecieron unas lenguas como de fuego que se repartieron y se posaron sobre cada uno de ellos; quedaron todos llenos del Espíritu Santo y se pusieron a hablar en otras lenguas, según el Espíritu les concedía expresarse» (Hch 2, 1-4).«"Espíritu Santo", tal es el nombre propio de Aquél que adoramos y glorificamos con el Padre y el Hijo. La Iglesia ha recibido este nombre del Señor y lo profesa en el Bautismo de sus nuevos hijos» (CIC, 691).'
   
        tituloMisterio4.textContent = '4º misterio. La Asunción de la Virgen María al Cielo';
        imagen4.src = 'imagenes/gloriosos4.jpg';
        textoMisterio4.textContent = 'La Asunción de la Virgen María, en cuerpo y alma, al Cielo (Assumptio) «Todas las generaciones me llamarán bienaventurada porque el Señor ha hecho obras grandes en mí» (Lucas 1, 48-49). «La Santísima Virgen María, cumplió el curso de su vida terrena, fue llevada en cuerpo y alma a la gloria del cielo, en donde ella participa ya en la gloria de la resurrección de su Hijo, anticipando la resurrección de todos los miembros de su Cuerpo» (CIC, 974).';
  
        tituloMisterio5.textContent = '5º misterio. La coronación de María como Reina y Señora de todo lo creado';
        imagen5.src = 'imagenes/gloriosos5.jpg';
        textoMisterio5.textContent = 'La Coronación celestial de la Virgen María, Reina del Firmamento (Regina del Firmamento) «Una gran señal apareció en el cielo: una mujer, vestida de sol, con la luna bajo los pies, y una corona de doce estrellas sobre su cabeza» (Ap 12, 1). «Finalmente, la Virgen inmaculada, preservada libre de toda mancha de pecado original, terminado el curso de su vida en la tierra, fue llevada a la gloria del cielo y elevada al trono por el Señor como Reina del universo, para ser conformada más plenamente a su Hijo, Señor de los Señores y vencedor del pecado y de la muerte» (CIC, 966).';
  } 

  function misteriosDolorosos (dia)
  {
      visualizarCabecera('dolorosos',dia);
      tituloMisterio1.textContent = '1º misterio. La oracion en el Huerto';
      imagen1.src = 'imagenes/dolorosos1.jpg';
      textoMisterio1.textContent = 'La oración en el Huerto, agonía de Jesús en Getsemaní (Agonia in Hortu) «Entonces Jesús fue con ellos a un huerto, llamado Getsemaní, y dijo a sus discípulos: "Sentaos aquí mientras voy a orar". Y tomando consigo a Pedro y a los dos hijos de Zebedeo, comenzó a sentir tristeza y angustia. Entonces les dijo: "Mi alma está triste hasta el punto de morir; quedaos aquí y velad conmigo". Y adelantándose un poco, cayó rostro en tierra, y suplicaba así: "Padre mío, si es posible, que pase de mí esta copa, pero no sea como yo quiero, sino como quieras tú"» (Mateo 26, 36-39).«Este combate y esta victoria sólo son posibles con la oración. Por medio de su oración, Jesús es vencedor del Tentador, desde el principio y en el último combate de su agonía»';

      tituloMisterio2.textContent = '2º misterio. La Flagelación';
      imagen2.src = 'imagenes/dolorosos2.jpg';
      textoMisterio2.textContent = 'La flagelación de Jesús atado a la columna (Flagellatio) «Pilato entonces tomó a Jesús y mandó azotarle. Los soldados trenzaron una corona de espinas, se la pusieron en la cabeza y le vistieron un manto de púrpura; y, acercándose a él, le decían: "Salve, Rey de los judíos". Y le daban bofetadas» (Juan 19,1-3). «Los padecimientos de Jesús han tomado una forma histórica concreta por el hecho de haber sido "reprobado por los ancianos, los sumos sacerdotes y los escribas" (Marcos 8, 31), que lo "entregaron a los gentiles, para burlarse de él, azotarle y crucificarle" (Mateo, 20, 19)» (CIC, 572).';

      tituloMisterio3.textContent = '3º misterio. La coronación de espinas';
      imagen3.src = 'imagenes/dolorosos3.jpg';
      textoMisterio3.textContent = 'La coronación de espinas (Coronatio Spinis)«Entonces los soldados del procurador llevaron consigo a Jesús al pretorio y reunieron alrededor de él a toda la cohorte. Lo desnudaron y le echaron encima un manto púrpura y, trenzando una corona de espinas, se la pusieron sobre la cabeza, y en su mano derecha una caña, y doblando la rodilla delante de él, le hacían burla diciendo: "Salve, Rey de los judíos"». (Mateo 27, 27-29) «El amor hasta el extremo es el que confiere su valor de redención y de reparación, de expiación y de satisfacción al sacrificio de Cristo. Nos ha conocido y amado a todos en la ofrenda de su vida» (CIC, 616).'
   
      tituloMisterio4.textContent = '4º misterio. Jesús con la cruz a cuestas hasta el calvario';
      imagen4.src = 'imagenes/dolorosos4.jpg';
      textoMisterio4.textContent = 'Jesús con la cruz a cuestas camino del Calvario (Baiulatio Crucis) «Y obligaron a uno que pasaba, a Simón de Cirene, que volvía del campo, el padre de Alejandro y de Rufo, a que llevara su cruz. Lo condujeron al lugar del Gólgota, que quiere decir de la "Calavera"» (Marcos 15, 21-22).';
  
      tituloMisterio5.textContent = '5º misterio. La Crucifixión';
      imagen5.src = 'imagenes/dolorosos5.jpg';
      textoMisterio5.textContent = 'La crucifixión y muerte de Jesús «Llegados al lugar llamado "el Calvario", lo crucificaron allí a él y a los dos malhechores, uno a la derecha y otro a la izquierda. Jesús decía: "Padre, perdónales, porque no saben lo que hacen" El velo del Santuario se rasgó por medio y Jesús, dando un fuerte grito dijo: "Padre, en tus manos pongo mi espíritu" y, dicho esto, expiró» (Lucas 23, 33-46).';
  }  

  function misteriosLuminosos (dia)
    {
      visualizarCabecera('luminosos',dia);
      tituloMisterio1.textContent = '1º misterio. El Bautismo de Jesus en el rio Jordan';
      imagen1.src = 'imagenes/luminosos1.jpg';
      textoMisterio1.textContent = '«Bautizado Jesús, salió luego del agua; y en esto se abrieron los cielos y vio al Espíritu de Dios que bajaba en forma de paloma y venía sobre él. Y una voz que salía de los cielos decía: "Este es mi Hijo amado, en quien me complazco"». (Mateo 3,16-17) «El comienzo de la vida pública de Jesús es su bautismo por Juan en el Jordán. Juan proclamaba "un bautismo de conversión para el perdón de los pecados" (Lucas 3, 3)» (CIC, 535).';

      tituloMisterio2.textContent = '2º misterio. Las Bodas de Caná';
      imagen2.src = 'imagenes/luminosos2.jpg';
      textoMisterio2.textContent = '«Al tercer día hubo una boda en Caná, un pueblo de Galilea. La madre de Jesús estaba allí, y Jesús y sus discípulos también habían sido invitados a la boda. En esto se acabó el vino, y la madre de Jesús le dijo: "Ya no tienen vino".Jesús le contestó: "Mujer, ¿por qué me lo dices a mí? Mi hora aún no ha llegado".Dijo ella a los que estaban sirviendo: "Haced lo que él os diga". \n Había allí seis tinajas de piedra, para el agua que usan los judíos en sus ceremonias de purificación. En cada tinaja cabían entre cincuenta y setenta litros. Jesús dijo a los sirvientes: "Llenad de agua estas tinajas".Las llenaron hasta arriba, y les dijo: "Ahora sacad un poco y llevádselo al encargado de la fiesta". \n Así lo hicieron, y el encargado de la fiesta probó el agua convertida en vino, sin saber de dónde había salido. Solo lo sabían los sirvientes que habían sacado el agua. Así que el encargado llamó al novio y le dijo: "Todo el mundo sirve primero el mejor vino, y cuando los invitados ya han bebido bastante, sirve el vino corriente. Pero tú has guardado el mejor hasta ahora".Esta fue la primera señal milagrosa que hizo Jesús en Caná de Galilea. Con ella mostró su gloria, y sus discípulos creyeron en él.» (Juan 2, 1-11) En el umbral de su vida pública, Jesús realiza su primer signo -a petición de su Madre- con ocasión de un banquete de boda. La Iglesia concede una gran importancia a la presencia de Jesús en las bodas de Caná. Ve en ella la confirmación de la bondad del matrimonio y el anuncio de que en adelante el matrimonio será un signo eficaz de la presencia de Cristo» (CIC, 1.613).';

      tituloMisterio3.textContent = '3º misterio. El anuncio del Reino de Dios';
      imagen3.src = 'imagenes/luminosos3.jpg';
      textoMisterio3.textContent = 'El anuncio del Reino de Dios invitando a la conversión (Regni Dei proclamatio coniuncta cum invitamento ad conversionem) «El tiempo se ha cumplido y el Reino de Dios está cerca; convertíos y creed en el Evangelio». (Mc 1, 15) «Todos los hombres están llamados a entrar en el Reino. Anunciado en primer lugar a los hijos de Israel, este reino mesiánico está destinado a acoger a los hombres de todas las naciones» (CIC, 543).'
   
      tituloMisterio4.textContent = '4º misterio. La Transfiguración';
      imagen4.src = 'imagenes/luminosos4.jpg';
      textoMisterio4.textContent = 'La Transfiguración de Cristo en el Monte Tabor (Transfiguratio) «Seis días después, Jesús tomó consigo a Pedro, a Santiago y a su hermano Juan, y los llevó aparte, a un monte alto. Y se transfiguró delante de ellos: su rostro se puso brillante como el sol y sus vestidos se volvieron blancos como la luz» (Mt 17, 1-2).«Por un instante, Jesús muestra su gloria divina, confirmando así la confesión de Pedro. Muestra también que para "entrar en su gloria" (Lc 24, 26), es necesario pasar por la Cruz en Jerusalén»';
  
      tituloMisterio5.textContent = '5º misterio. La institucion  de la Eucaristia';
      imagen5.src = 'imagenes/luminosos5.jpg';
      textoMisterio5.textContent = 'La institución de la Eucaristía en el Cenáculo de Jerusalén en la tarde del Jueves Santo (Eucharistiae institutio) «Mientras cenaban, Jesús tomó en sus manos el pan, y habiendo dado gracias a Dios lo partió y se lo dio a los discípulos, diciendo: "Tomad, comed, esto es mi cuerpo". Luego tomó en sus manos una copa, y habiendo dado gracias a Dios la pasó a ellos, diciendo: "Bebed todos de esta copa, porque esto es mi sangre, con la que se confirma el pacto, la cual es derramada en favor de muchos para perdón de sus pecados".» (Mateo 26, 26-28).«Al celebrar la última Cena con sus apóstoles en el transcurso del banquete pascual, Jesús dio su sentido definitivo a la pascua judía. En efecto, el paso de Jesús a su Padre por su muerte y su resurrección, la Pascua nueva, es anticipada en la Cena y celebrada en la Eucaristía que da cumplimiento a la pascua judía y anticipa la pascua final de la Iglesia en la gloria del Reino» (CIC, 1.341).';
  }  

  function misteriosGozosos (dia)  // Lunes y sabados
    {
      visualizarCabecera('gozosos',dia);

      tituloMisterio1.textContent = '1º misterio. La anunciación';
      imagen1.src = 'imagenes/gozosos1.jpg';
      textoMisterio1.textContent = 'La Anunciación a la Virgen María y la Encarnación del Verbo «Al sexto mes el Ángel Gabriel fue enviado por Dios a una ciudad de Galilea, llamada Nazaret, a una virgen desposada con un hombre llamado José, de la estirpe de David, el nombre de la virgen era María» (Lucas 1,26-27). «La anunciación de María inaugura la plenitud de "los tiempos" (Gálatas 4,4), es decir, el cumplimiento de las promesas y de los preparativos»';

      tituloMisterio2.textContent = '2º misterio. La Visita';
      imagen2.src = 'imagenes/gozosos2.jpg';
      textoMisterio2.textContent = 'La Visita de Nuestra Señora a su prima Santa Isabel. «En aquellos días María se puso en camino y fue de prisa a la región montañosa, a una ciudad de Judá; entró en casa de Zacarías y saludó a Isabel. Y sucedió que, en cuanto Isabel oyó el saludo de María, saltó de gozo el niño en su vientre, e Isabel quedó llena de Espíritu Santo; y exclamando a voz en grito, dijo: "Bendita tú entre las mujeres y bendito el fruto de tu vientre"» (Lucas 1, 39-42) </blockquote><p>«La "visita" de María a Isabel se convirtió así en visita de Dios a su pueblo» (CIC, 717)';

      tituloMisterio3.textContent = '3º misterio. El Nacimiento del hijo de Dios';
      imagen3.src = 'imagenes/gozosos3.jpg';
      textoMisterio3.textContent = 'El Nacimiento de Jesús En Belén (Nativitas) «Sucedió que por aquellos días salió un edicto de César Augusto ordenando que se empadronase todo el mundo. Este primer empadronamiento tuvo lugar siendo Cirino gobernador de Siria. Iban todos a empadronarse, cada uno a su ciudad. Subió también José desde Galilea, de la ciudad de Nazaret, a Judea, a la ciudad de David, que se llama Belén, por ser él de la casa y familia de David, para empadronarse con María, su esposa, que estaba encinta. Y sucedió que, mientras ellos estaban allí, se le cumplieron los días del alumbramiento, y dio a luz a su hijo primogénito, lo envolvió en pañales y lo acostó en un pesebre, porque no tenían sitio en el alojamiento» (Lucas 2,1-7). Jesús nació en la humildad de un establo, de una familia pobre (cf. Lc 2, 6-7); aquellos sencillos pastores son los primeros testigos del acontecimiento. En esta pobreza se manifiesta la gloria del cielo» (CIC, 525).'
   
      tituloMisterio4.textContent = '4º misterio. La presentación en el Templo';
      imagen4.src = 'imagenes/gozosos4.jpg';
      textoMisterio4.textContent = '«Cuando se cumplieron los ocho días para circuncidarlo, se le dio el nombre de Jesús, como lo había llamado el ángel antes de ser concebido en el vientre. Cuando se cumplieron los días de la purificación de ellos, según la Ley de Moisés, llevaron a Jesús a Jerusalén para presentarlo al Señor, como está escrito en la Ley del Señor: Todo varón primogénito será consagrado al Señor y para ofrecer en sacrificio un par de tórtolas o dos pichones, conforme a lo que se dice en la ley del Señor» (Lucas 2, 21-24). «La circuncisión de Jesús, al octavo día de su nacimiento, es señal de su inserción en la descendencia de Abraham, en el pueblo de la Alianza, de su sometimiento a la Ley» (CIC, 527).';
  
      tituloMisterio5.textContent = '5º misterio. El niño Jesus perdido y hallado en el templo';
      imagen5.src = 'imagenes/gozosos5.jpg';
      textoMisterio5.textContent = 'Jesús encontrado por sus padres cuando era niño hablando con los Doctores de la Ley. «Sus padres iban todos los años a Jerusalén a la fiesta de la Pascua. Cuando tuvo doce años, subieron ellos como de costumbre a la fiesta y, al volverse, pasados los días, el niño Jesús se quedó en Jerusalén, sin saberlo sus padres. Y sucedió que al cabo de tres días, le encontraron en el Templo sentado en medio de los maestros, escuchándoles y preguntándoles; todos los que le oían, estaban estupefactos por su inteligencia y sus respuestas» (Lucas 2, 41-47) «El hallazgo de Jesús en el Templo es el único suceso que rompe el silencio de los Evangelios sobre los años ocultos de Jesús. Jesús deja entrever en ello el misterio de su consagración total a una misión derivada de su filiación divina: "¿No sabíais que me debo ocupar de los asuntos de mi Padre?"» (CIC, 534).';
   }  

function desactivarMenus()
  {
    lunes.classList.remove("active");
    martes.classList.remove("active");
    miercoles.classList.remove("active");
    jueves.classList.remove("active");
    viernes.classList.remove("active");
    sabado.classList.remove("active");
    domingo.classList.remove("active");
  }

function visualizarMisterios(dia)
  {
    desactivarMenus();
    switch (dia)
          {
            case 0 :
              misteriosGloriosos('domingo');
              domingo.classList.add("active");
              break;
            case 1:
              misteriosGozosos('lunes');
              lunes.classList.add("active");
              break;
            case 2:
              misteriosDolorosos('martes');
              martes.classList.add("active");
              break;
            case 3 :
              misteriosGloriosos('miercoles');
              miercoles.classList.add("active");
              break;
            case 4:
              misteriosLuminosos('jueves');
              jueves.classList.add("active");
              break;
            case 5:
              misteriosDolorosos('viernes');
              viernes.classList.add("active");
              break;
            case 6:
              misteriosGozosos('sabado');
              sabado.classList.add("active");
              break;
          }
    };


function setListeners()
    {
    lunes.addEventListener('click', () => visualizarMisterios(1));
    martes.addEventListener('click',() => visualizarMisterios(2));
    miercoles.addEventListener('click', () => visualizarMisterios(3));
    jueves.addEventListener('click', () => visualizarMisterios(4));
    viernes.addEventListener('click', () => visualizarMisterios(5));
    sabado.addEventListener('click', () => visualizarMisterios(6));
    domingo.addEventListener('click', () => visualizarMisterios(0));
    }

window.addEventListener("load",() => {
    inicializarVariables ();
    visualizarCabecera(misterios[d.getDay()],weekday[d.getDay()]);
    visualizarMisterios(d.getDay());
    setListeners();
});


// Llama a la función cuando se carga la página y cuando cambia el tamaño de la ventana

