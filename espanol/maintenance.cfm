<!DOCTYPE html>

<html>
<head>
    <title>Maintenance - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
<link rel="icon" href="../img/favicon.ico" type="image/x-icon">

    
</head>

<body>

    <div id="body">

    <cfinclude template="header.cfm">
<h1>Mantenimiento</h1>
    
        <article>
                <p>Lamentamos o&iacute;r que usted est&aacute; experimentando inconvenientes con su unidad. Por favor complete el siguiente formulario con su nombre, tel&eacute;fono y descripci&oacute;n del problema. Al enviar el formulario, nuestro equipo  comenzar&aacute; a resolver el problema de la mejor manera posible.</p>
<cfquery datasource="team3" name="unit_id">
            SELECT UnitID FROM ResidentialUnits
            UNION All
            SELECT UnitID FROM CommercialUnits
            Order by UnitID;
            </cfquery>
            <section id="maintenanceform">
                <form method="POST" action="maintenance.cfm" onSubmit="completeAlert()">
                           <cfoutput>
                <input name="IssueDate" id="IssueDate" type="hidden" value="#DateFormat(Now(), 'm/dd/yyyy')#">
                	</cfoutput>
                    <p>Nombre: <input name="TenantFirstName" id="TenantFirstName" size="50" Required="YES" Message="Please enter First Name."></p>
                    <p>Apellido: <input name="TenantLastName" id="TenantLastName" size="50" Required="YES" Message="Please enter Last Name."></p>
                    <p><select name="UnitID" id="UnitID">
  					<option>Seleccione su Unidad</option>
                    <cfloop query="unit_id">
                    	<cfoutput>
                    		<option value="#UnitID#">#UnitID#</option>
                   		</cfoutput>
                    </cfloop>
                    </select>
                    </p>
                    <p><input type="checkbox" name="Plumbing" value="Y">
                      Agua y sanitarios
                      <input type="checkbox" name="Electric" value="Y">
                      Electricidad  
                      <input type="checkbox" name="Other" value="Y">
                      Otros</p>
                    <p>Descripci&oacute;n:<br>
                       <textarea name="description" id="description" cols="43" rows="5" placeholder="Enter comments here."></textarea></p>
                    <p><input type="submit" value="Enviar" class="button"> <input type="reset" value="Reiniciar" class="button"></p> 
                </form>
                
                <cfinsert datasource="team3" tablename="MaintenanceTickets">
                
			  <cfoutput>
                  <script>
                      function completeAlert() {
                          alert("Le pedimos disculpas por la inconveniencia relacionada al mantenimiento de una de nuestras propierdades. Nosotros procesaremos su solicitud tan pronto como sea posible. Para actualizaciones relacionadas a su solicitud de servicio, por favor llame al (781) 974-5790.");
                      }
                  </script>
              </cfoutput>
            </section>
        </article>
        
<cfinclude template="footer.cfm">

    </div>

</body>
</html>
