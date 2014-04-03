<!DOCTYPE html>

<html>
<head>
    <title>All Tentants - Admin - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <meta name="robots" content="noindex,nofollow">
    <meta name="googlebot" content="noindex,nofollow">
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
               
            <cfquery datasource="team3" name="tenants">
            SELECT * FROM Tenants
            </cfquery>

    <cfinclude template="header.cfm">
    
        <h1>Tenants</h1>
        <cfoutput>
            <h3>Total Number of Tenants: #tenants.RecordCount#</h3>
            <h3><a href="tenant-add.cfm">Add New Tenant</a></h3>
            
            <table>
            	<tr>
                	<th colspan="7">Listings</th>
                </tr>
                <tr>
                	<th>Tenant ID</th>
                	<th>First Name</th>
                	<th>Last Name</th>
                	<th>Phone Number</th>
                	<th colspan="2">Options</th>
                </tr>
                <cfloop query="tenants">
                <tr>
                	<td>#TenantID#</td>
                	<td>#TenantFirstName#</td>
                	<td>#TenantLastName#</td>
                	<td>#TenantPhone#</td>
                	<td><form action="tenant-full.cfm" method="post">
                    <input type="hidden" name="TenantID" value="#TenantID#">
                    <input value="See More" type="submit" class="button">
                    </form></td>
                	<td><form action="tenant-update.cfm" method="post">
                    <input type="hidden" name="TenantID" value="#TenantID#">
                    <input value="Edit" type="submit" class="button">
                    </form></td>
                </tr>
                </cfloop>
                <tr>
                    <td colspan="7" class="break">&nbsp;</td>
                </tr>
            </table>
        </cfoutput>
    <cfinclude template="footer.cfm">
    </div>

</body>
</html>
