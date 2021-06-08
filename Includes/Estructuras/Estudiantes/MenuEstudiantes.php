<ul class="list-unstyled full-reset">
    <figure>
        <img src="assets/Imagenes/Template/user01.png" alt="user-picture" class="img-responsive img-circle center-box">
    </figure>
    <li style="color:#fff; cursor:default;">
        <span class="all-tittles">
            <?php echo $user->getPNombre()?>
            <?php echo $user->getSNombre()?>
            <?php echo $user->getPApellido()?>
            <?php echo $user->getMApellido();?>
        </span>
    </li>
    <li class="tooltips-general exit-system-button" data-href="Includes/Database/logout.php"  data-placement="bottom"
        title="Salir del sistema"><a href="Includes/Database/logout.php"><i class="zmdi zmdi-power" style="font-size:x-large; color:darkgray"></i></a>
    </li>
    <li class="tooltips-general search-book-button" data-href="searchbook.html" data-placement="bottom"
        title="Buscar">
        <!--<i class="zmdi zmdi-search"></i>-->
    </li>
    <li class="tooltips-general btn-help" data-placement="bottom" title="Ayuda">
         <!--<i class="zmdi zmdi-help-outline zmdi-hc-fw"></i>-->
    </li>
    <li class="mobile-menu-button visible-xs" style="float: left !important;">
       <!-- <i class="zmdi zmdi-menu"></i>-->
    </li>
    <li class="desktop-menu-button hidden-xs" style="float: left !important;">
      <i class="zmdi zmdi-swap"></i>
    </li>
</ul>