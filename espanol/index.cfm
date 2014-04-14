<!DOCTYPE html>

<html>
<head>
    <title>J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
<link rel="icon" href="../img/favicon.ico" type="image/x-icon">


<!-- slideshow -->
  <link rel="stylesheet" type="text/css" href="../css/slide.css">
  <link rel="stylesheet" href="../css/font-awesome.min.css">
  <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
  <script src="../js/jquery.slides.min.js"></script>
  <script>
    $(function() {
      $('#slides').slidesjs({
        height: 1000,
        play: {
          active: true,
          effect: "slide",
          interval: 5000,
          auto: true,
          swap: true,
          pauseOnHover: false,
          restartDelay: 2500
        }, 
        pagination: {
          active: true,
        }
      });
    });
  </script>
<!-- end slideshow -->
    <style>
		#slides {
			width: 350px;
			margin: 0 auto;
		}
	</style>
</head>

<body>
    <div id="body">
    
    <cfinclude template="header.cfm">
<h1>Nuestra compa&ntilde;&iacute;a </h1>
<h3>Acerca de J&amp;R Propiedades</h3>


<p>J&amp;R Propiedades es una empresa de administración de propiedades comerciales y residenciales en el &aacute;rea de Boston.</p>
<p>Estamos comprometidos con proporcionar servicios adminitrativos para los propietarios de edificios y sus residentes.</p>
<p>Nuestra visi&oacute;n es crear relaciones s&oacute;lidas con los clientes, los residentes y la comunidad local.</p>
<p>A trav&eacute;s de nuetro trabajo duro y dedicaci&oacute;n, J&amp;R Propiedades ha operado con &eacute;xito desde el año 1987.</p>


          <p>&nbsp;</p>

        
        <article>
  <div class="container">
    <div id="slides">
            <cfquery datasource="team3" name="unit_id">
            SELECT StreetAddress FROM Properties
            </cfquery>
                    <cfloop query="unit_id">
                    	<cfoutput>
      <img src="../img/#StreetAddress#.png" alt="Property at #StreetAddress#" width="250" />
                   		</cfoutput>
                    </cfloop>
    </div>
  </div>
           <p>&nbsp;</p> 
      </article>
<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
