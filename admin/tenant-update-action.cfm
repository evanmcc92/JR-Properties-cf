<!DOCTYPE html>

<html>
<head>
<cfoutput>
    <title>Tenant #TenantID# Updated  - J&R Properties</title>
    </cfoutput>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="shortcut icon" href="../img/favicon.ico" type="image/x-icon">
	<link rel="icon" href="../img/favicon.ico" type="image/x-icon">

    <style>
		#navbar li {
			list-style-type: none;
			display: block;
			padding: 5px 10px;
			float:left;
		}
		table {
			margin: 0 auto;
			width:75%;
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
                <h1>Tenant Updated</h1>
    
        <article>
            <h3>Tenant Has Been Updated</h3>

            <section id="tenantform">              	
            	<cfoutput>
			<table>
                            <tr>
                                <th colspan="2">Tenant</th>
                            </tr>
                            <tr>
                                <td><strong>Tenant ID:</strong></td>
                                <td>#TenantID#</td>
                            </tr>
                            <tr>
                                <td><strong>First Name:</strong></td>
                                <td>#TenantFirstName#</td>
                            </tr>
                            <tr>
                                <td><strong>Last Name:</strong></td>
                                <td>#TenantLastName#</td>
                            </tr>
                            <tr>
                                <td><strong>Phone Number:</strong></td>
                                <td>#TenantPhone#</td>
                            </tr>
                            <tr>
                                <td><strong>Property Type:</strong></td>
                                <td>#PropertyType#</td>
                            </tr>
                            <tr>
                                <td><strong>Unit ID:</strong></td>
                                <td>#UnitID#</td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Rent:</strong></td>
                                <td>#MonthlyRent#</td>
                            </tr>
                            <tr>
                                <td><strong>Lease Start:</strong></td>
                                <td>#LeaseStart#</td>
                            </tr>
                            <tr>
                                <td><strong>Lease End:</strong></td>
                                <td>#LeaseEnd#</td>
                            </tr>
                    		<tr>
                        		<td colspan="2" class="break">&nbsp;</td>
                            </tr>
                        </table>
    					<cfupdate datasource="team3" tablename="Tenants" >
                        </cfoutput>
                    
              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div> 

</body>
</html>
