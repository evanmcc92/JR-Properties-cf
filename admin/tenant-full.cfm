<!DOCTYPE html>

<html>
<head>
	<cfoutput>
    <title>Tenant #TenantID# - J&R Properties</title>
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
			width: 75%;
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
	</style>
    
</head>

<body>


    <div id="body">

    <cfinclude template="header.cfm">
    
<cfquery datasource="team3" name="clistings">
select * from Tenants WHERE TenantID = '#Form.TenantID#';
</cfquery>
                <cfoutput query="clistings">
        <article>

                <h1>Tenant #TenantID#</h1>

            <section id="applicationform">
                	<p><form action="tenant-delete.cfm" method="post" id="delete-ticket">
			<form action="" method="post">
                        <input type="hidden" name="TenantID" value="#TenantID#">
                        <input value="Delete" type="submit" class="button">
                	</form>
			</p>
                	<p><form action="tenant-update.cfm" method="post">
                    <input type="hidden" name="TenantID" value="#TenantID#">
                    <input value="Edit" type="submit" class="button">
                    </form></p>
                    <p><a href="tenant-all.cfm">All Tenants</a></p>
                    <p>&nbsp;</p>
                
                    <table id="#TenantID#">
                        <tr>
                                <th colspan="4">Tenant #TenantID#</th>
                        </tr>
                        <tr>
                            <td><b>First Name:</b></td>
                            <td>#TenantFirstName#</td>
                            <td><strong>Last Name:</strong></td>
                            <td>#TenantLastName#</td>
                        </tr>
                        <tr>
                            <td><strong>Phone Number:</strong></td>
                            <td>#TenantPhone#</td>
                            <td><strong>Unit ID:</strong></td>
                            <td>#UnitID#</td>
                        </tr>
                        <tr>
                            <td><b>Monthly Rent:</b></td>
                            <td>#DollarFormat(MonthlyRent)#</td>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                                <td colspan="4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td><b>Lease Start:</b></td>
                            <td>#LeaseStart#</td>
                            <td><b>Lease End:</b></td>
                            <td>#LeaseEnd#</td>
                        </tr>
                        <tr>
                             <td colspan="4" class="break">&nbsp;</td>
                        </tr>
                  </table>
                    </section>
              </cfoutput>

              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
