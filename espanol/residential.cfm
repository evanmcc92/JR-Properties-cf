<!DOCTYPE html>

<html>
<head>
    <title>Residental Properties - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
<link rel="icon" href="../img/favicon.ico" type="image/x-icon">
<style>
	.top{
		
float: right;
margin-top: -41px;
padding-right: 23px;}
</style>
    
</head>

<body>
<cfquery datasource="team3" name="unitsfromchelsea">
select * from ResidentialUnits where City = 'Chelsea'
</cfquery>
<cfquery datasource="team3" name="unitsfromeverett">
select * from ResidentialUnits where City = 'Everett'
</cfquery>
<cfquery datasource="team3" name="unitsfromlynn">
select * from ResidentialUnits where City = 'Lynn'
</cfquery>
<cfquery datasource="team3" name="unitsfromrevere">
select * from ResidentialUnits where City = 'Revere'
</cfquery>
    <div id="body">

        
    <cfinclude template="header.cfm">
                <h1>Propiedades Residenciales</h1>
    
        <article>
            <section id="article">
                <p>La gesti&oacute;n de propiedades residenciales es nuestra especialidad desde 1987. Ofrecemos apartamentos de calidad en Everett, Lynn, Chelsea y Revere. Los detalles abajo le proporcionan informaci&oacute;n sobre las unidades y su disponibilidad. Si una unidad tiene una fecha disponible de TAW (tambi&eacute;n conocido como inquilino a voluntad), por favor llene una solicitud y ll&aacute;menos para indicar su inter&eacute;s. Tan pronto como la unidad est&eacute; disponible (que puede ser entre los pr&oacute;ximos 30 d&iacute;as), nos pondremos en contacto con usted.</p>
                <section id="chelsea">
                    <h4>Chelsea</h4><p class="top"><a href="#top">Parte superior</a></p>
                    <cfloop query="unitsfromchelsea">
					<cfoutput>
                    <table id="resident-#PropertyID#" class="residentlisting">
                        <tr>
                            <td width="295" rowspan="5">
                            	<img src="../img/#StreetAddress#.png" alt="#Description#" width="275" />
							</td>
                            <td width="325">#StreetAddress#, #City#</td>
                        </tr>
                        <tr>
                            <td>#DollarFormat(MonthlyPrice)# (monthly)</td>
                        </tr>
                        <tr>
                            <td>#NoBeds# Bed & #NoBaths# Bath</td>
                        </tr>
                        <tr>
                            <td>Date Available: #DateAvailable#</td>
                        </tr>
                        <tr>
                            <td>#Description#</td>
                        </tr>
                    </table>
                   </cfoutput>
                   </cfloop>
                </section>
                <section id="everett">
                    <h4>Everett</h4><p class="top"><a href="#top">Parte superior</a></p>
                    <cfloop query="unitsfromeverett">
					<cfoutput>
                    <table id="resident-#PropertyID#" class="residentlisting">
                        <tr>
                            <td width="295" rowspan="5">
                            	<img src="../img/#StreetAddress#.png" alt="#Description#" width="275" />
							</td>
                            <td width="325">#StreetAddress#, #City#</td>
                        </tr>
                        <tr>
                            <td>#DollarFormat(MonthlyPrice)# (monthly)</td>
                        </tr>
                        <tr>
                            <td>#NoBeds# Bed & #NoBaths# Bath</td>
                        </tr>
                        <tr>
                            <td>Date Available: #DateAvailable#</td>
                        </tr>
                        <tr>
                            <td>#Description#</td>
                        </tr>
                    </table>
                   </cfoutput>
                   </cfloop>
                </section>
                <section id="lynn">
                    <h4>Lynn</h4><p class="top"><a href="#top">Parte superior</a></p>
                    <cfloop query="unitsfromlynn">
					<cfoutput>
                    <table id="resident-#PropertyID#" class="residentlisting">
                        <tr>
                            <td width="295" rowspan="5">
                            	<img src="../img/#StreetAddress#.png" alt="#Description#" width="275" />
							</td>
                            <td width="325">#StreetAddress#, #City#</td>
                        </tr>
                        <tr>
                            <td>#DollarFormat(MonthlyPrice)# (monthly)</td>
                        </tr>
                        <tr>
                            <td>#NoBeds# Bed & #NoBaths# Bath</td>
                        </tr>
                        <tr>
                            <td>Date Available: #DateAvailable#</td>
                        </tr>
                        <tr>
                            <td>#Description#</td>
                        </tr>
                    </table>
                   </cfoutput>
                   </cfloop>
                </section>
                <section id="revere">
                    <h4>Revere</h4><p class="top"><a href="#top">Parte superior</a></p>
                    <cfloop query="unitsfromrevere">
					<cfoutput>
                    <table id="resident-#PropertyID#" class="residentlisting">
                        <tr>
                            <td width="295" rowspan="5">
                            	<img src="../img/#StreetAddress#.png" alt="#Description#" width="275" />
							</td>
                            <td width="325">#StreetAddress#, #City#</td>
                        </tr>
                        <tr>
                            <td>#DollarFormat(MonthlyPrice)# (monthly)</td>
                        </tr>
                        <tr>
                            <td>#NoBeds# Bed & #NoBaths# Bath</td>
                        </tr>
                        <tr>
                            <td>Date Available: #DateAvailable#</td>
                        </tr>
                        <tr>
                            <td>#Description#</td>
                        </tr>
                    </table>
                   </cfoutput>
                   </cfloop>
                </section>
            </section>   

            <section id="aside">
                <ul>
                    <li><a href="#chelsea">Chelsea</a></li>
                    <li><a href="#everett">Everett</a></li>
                    <li><a href="#lynn">Lynn</a></li>
                    <li><a href="#revere">Revere</a></li>
                </ul>
            </section>
        </article>
        
<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
