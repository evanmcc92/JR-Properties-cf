<header id="top">
            <figure id="logo"><a href="index.cfm"><img src="../img/logo.png" alt="J&R Properties Logo"/></a></figure>
            <address>
              52R Green Street<br>
              Lynn, MA 01902<br><br>
              (781) 974-5790
            </address>
            <nav>
                             <ul id="navbar">
                    <li><a href="maintenance.cfm">Mantenimiento</a></li>
      <li><a href="#">Propiedades</a><ul>
                        <li><a href="commercial.cfm">Comerciales</a></li>
                        <li><a href="residential.cfm">Residenciales</a></li></ul>
                    </li>
                    <li><a href="landlord.cfm">Arrendador</a></li>
                    <li><a href="app.cfm">Aplicaci&oacute;n</a></li>
                    <li><a href="../index.cfm">English</a></li>
</ul>

            </nav>
        </header>
        <script>
sfHover = function() {
   var sfEls = document.getElementById("navbar").getElementsByTagName("li");
   for (var i=0; i<sfEls.length; i++) {
      sfEls[i].onmouseover=function() {
         this.className+=" hover";
      }
      sfEls[i].onmouseout=function() {
         this.className=this.className.replace(new RegExp(" hover\\b"), "");
      }
   }
}
if (window.attachEvent) window.attachEvent("onload", sfHover);
</script>
