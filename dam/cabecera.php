<?php

function menus($menu)
    { 
      $pathabsoluto="/DAM";
      $puntoMontaje="DAM/";
      ?>
        <div class="menu-principal">
        <ul>
         <li>
 <?php
            if ($menu=="inicio") 
                  { 
                   $puntoMontaje="DAM/" ?>
                   <a class="active" href=<?php echo "'".$puntoMontaje."index.php'>  Inicio </a>";
                  }
            else { $directorio="";?>
                  <a href=<?php echo "'".$puntoMontaje.
                  "index.php'> Inicio </a>";
                  } ?>
       </li>
         
         <li>
 <?php       if ($menu=="ed") { ?>
                  <a class="active"
                        href=<?php echo "'".$puntoMontaje."DAM1/EntornosDesarrollo/index.php'>
                        Entornos de Desarrollo </a>";
                  }
             else { ?>
                  <a href=<?php echo "'".$puntoMontaje.
                  "DAM1/EntornosDesarrollo/index.php'> Entornos de Desarrollo </a>";
                  } ?>
       </li>
       
       <li>
 <?php       if ($menu=="bbdd") { ?>
                  <a class="active"
                        href=<?php echo "'".$puntoMontaje."DAM1/BBDD/index.php'>
                        Bases de datos </a>";
                  }
             else { ?>
                  <a href=<?php echo "'".$puntoMontaje.
                  "DAM1/BBDD/index.php'> Bases de datos </a>";
                  } ?>
       </li>
       <li>
 <?php       if ($menu=="ssii") { ?>
                  <a class="active"
                        href=<?php echo "'".$puntoMontaje."DAM1/SSII/index.php'>
                        Sistemas Informáticos </a>";
                  }
             else { ?>
                  <a href=<?php echo "'".$puntoMontaje.
                  "DAM1/SSII/index.php'> Sistemas Informáticos </a>";
                  } ?>
       </li>

 </ul>
 </div>
<?php   }   ?>