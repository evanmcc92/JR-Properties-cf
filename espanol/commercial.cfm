<!DOCTYPE html>

<html>
<head>
    <title>Commercial Properties - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
<link rel="icon" href="../img/favicon.ico" type="image/x-icon">


    
</head>

<body>
<cfquery datasource="team3" name="commercialunits">
select * from CommercialUnits
</cfquery>

    <div id="body">

    <cfinclude template="header.cfm">
                <h1>Propiedades Comerciales</h1>
    
        <article>
                <p>Vea a continuaci&oacute;n las descripciones y fotograf&iacute;as de nuestras propiedades comerciales. En estos momentos estamos buscando ampliar nuestro portafolio de nuestras propiedades comerciales.</p>
<section>
        <cfloop query="commercialunits">
		  <cfoutput>
            <table id="resident-#UnitID#" class="residentlisting">
                <tr>
                    <td width="295" rowspan="5">
                       	<img src="../img/#StreetAddress#.png" alt="#Description#" width="275" />
				    </td>
                    <td width="325">#StreetAddress#, #City#</td>
                </tr>
                <tr>
                    <td>#UnitName#</td>
                </tr>
                <tr>
                    <td>#DollarFormat(MonthlyPrice)# (monthly)</td>
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
        </article>
<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
