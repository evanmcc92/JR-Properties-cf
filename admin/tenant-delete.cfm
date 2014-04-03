<!DOCTYPE html>

<html>
<head>
<cfoutput>
    <title>Tenant #TenantID# Deleted - J&R Properties</title>
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
			margin: 0 auto 20px;
		}
		td, th {
			padding:5px;
		}
	</style>
    
</head>

<body>


    <div id="body">

    <cfinclude template="header.cfm">
		<cfoutput>
                <h1>Listing No. #UnitID# Has Been Deleted</h1>
		</cfoutput>
<cfquery datasource="team3" name="tenants">
select * from Tenants WHERE TenantID = '#Form.TenantID#';
</cfquery>
<cfquery datasource="team3" name="DeleteTenant"> 
DELETE FROM Tenants WHERE TenantID = '#Form.TenantID#';
</cfquery>
                <cfoutput query="tenants">


            <section id="tenantform">
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
              
        </article>

		<cfinclude template="footer.cfm">

  
    </div>

</body>
</html>
