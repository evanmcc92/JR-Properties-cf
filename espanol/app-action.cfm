<!DOCTYPE html>

<html>
<head>
    <title>Application - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="../img/favicon.ico" type="image/x-icon">

    <style>
		table {
			margin: 0 auto;
		}
		td, th {
			padding:5px;
		}
		#PresentStAddress {
			width:600px;
		}
		th {
			border-bottom: 1px solid silver;
		}
		.break {
			border-top: 1px solid silver;
		}
	</style>
    
</head>

<body>


    <div id="body">

    <cfinclude template="header.cfm">
    
                <h1>Aplicaci&oacute;n</h1>
        <article>
                <p>Gracias por enviar su solicitud. </p>
               

            <section id="applicationform">
    			<cfinsert datasource="team3" tablename="Applications" >
                <cfoutput>
                    <table>
                        <tr>
                          <td colspan="4">
                          #DATEFORMAT(Form.AppDate, "m/d/yyyy")#</td>
                        </tr>
                        <tr>
                          <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                                <th colspan="4">Informaci&oacute;n Personal</th>
                        </tr>
                        <tr>
                          <td><strong>Nombre del solicitante*:</strong></td>
                            <td>#Form.ApplicantFirstName#</td>
                            <td><strong>Apellido del Solicitante*:</strong></td>
                            <td>#Form.ApplicantLastName#</td>
                        </tr>
                        <tr>
                          <td><strong>Direcci&oacute;n Actual*:</strong></td>
                            <td colspan="3">#Form.PresentStAddress#</td>
                        </tr>
                        <tr>
                          <td><strong>Presente Ciudad*:</strong></td>
                            <td>#Form.PresentCity#</td>
                            <td><strong>Estado Actual*:</strong></td>
                            <td>#Form.PresentState#</td>
                        </tr>
                        <tr>
                          <td><strong>Presente Zip-Code*:</strong></td>
                            <td>#Form.PresentZIP#</td>
                            <td><strong>Presentar N&uacute;mero de tel&eacute;fono*:</strong></td>
                            <td>#Form.Phone#</td>
                        </tr>
                        <tr>
                          <td><strong>¿Es usted casado?*:</strong></td>
                            <td>#Form.Married#</td>
                            <td><strong>Ingresos Mensuales de la esposa:</strong></td>
                            <td>#Form.SpouseMonthlyIncome#></td>
                        </tr>
                        <tr>
                          <td><strong>N&uacute;mero de Seguro Social*:</strong></td>
                            <td>#Form.SSN#</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                                <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                        <tr>
                                <th colspan="4">Informaci&oacute;n de su Residencia Actual</th>
                        </tr>
                        <tr>
                          <td><strong>Nombre de su Arrendador Actual:</strong></td>
                            <td>#Form.PresentLandlordFirstName#</td>
                            <td><strong>Apellido de su Arrendador Actual:</strong></td>
                            <td>#Form.PresentLandlordLastName#</td>
                        </tr>
                        <tr>
                          <td><strong>Número de tel&eacute;fono de su Arrendador Actual:</strong></td>
                            <td>#Form.PresentLandlordPhone#</td>
                        </tr>
                        <tr>
                          <td><strong>Nombre de su Arrendador Anterior:</strong></td>
                            <td>#Form.FormerLandlordFirstName#</td>
                            <td><strong>Apellido de su Arrendador Anterior:</strong></td>
                            <td>#Form.FormerLandlordLastName#</td>
                        </tr>
                       <tr>
                         <td><strong>N&uacute;mero de tel&eacute;fono de su Arrendador Anterior:</strong></td>
                            <td>#Form.FormerLandlordPhone#</td>
                      </tr>
                        <tr>
                                <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                        <tr>
                                <th colspan="4">Informaci&oacute;n de Empleo</th>
                        </tr>
                        <tr>
                          <td><strong>Empleador Actual*:</strong></td>
                            <td>#Form.CurrentEmployer#</td>
                            <td><strong>Tel&eacute;fono de su supervisor actual*:</strong></td>
                            <td>#Form.EmployerPhone#</td>
                        </tr>
                        <tr>
                          <td><strong>Titulo de Trabajo *:</strong></td>
                            <td>#Form.JobTitle#</td>
                            <td><strong>Ingreso Mensual *: $</strong></td>
                            <td>#DollarFormat(Form.MonthlyIncome)#</td>
                        </tr>
                        <tr>
                                <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                        <tr>
                                <th colspan="4">Referencias</th>
                        </tr>
                        <tr>
                            <td><strong>Nombre de Referencia Personal*:</strong></td>
                            <td>#Form.PersonalReferenceName#</td>
                                <td><strong>N&uacute;mero de tel&eacute;fono de Referencia Personal*:</strong></td>
                            <td>#Form.PersonalReferencePhone#</td>
                        </tr>
                        <tr>
                                <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                        <tr>
                                <th colspan="4">Informaci&oacute;n Adicional</th>
                        </tr>
                        <tr>
                            <td><strong>N&uacute;mero de Carros*:</strong></td>
                            <td>#Form.NumberofCars#</td>
                            <td><strong>N&uacute;mero de Mascotas*:</strong></td>
                            <td>#Form.NumberofPets#</td>
                        </tr>
                        <tr>
                                <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                    </table>

              </cfoutput>
              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
