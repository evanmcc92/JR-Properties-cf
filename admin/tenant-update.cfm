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
                <h1>Tenant Update</h1>
    
        <article>
            <section id="tenantform">
                    <cfquery datasource="team3" name="Tenant">
                    select * from Tenants WHERE TenantID = '#Form.TenantID#';
                    </cfquery>
		<cfquery datasource="team3" name="unit_id">
            SELECT UnitID FROM ResidentialUnits
            UNION All
            SELECT UnitID FROM CommercialUnits
            Order by UnitID;
            </cfquery>
                	<cfoutput query="Tenant">
                    <p><a href="tenant-all.cfm">All Tenants</a></p>
                    <form method="post" action="tenant-update-action.cfm">
                    	<table>
                            <tr>
                                <th colspan="2">Tenant</th>
                            </tr>
                            <tr>
                                <td><strong>Tenant ID:</strong></td>
                                <td><input name="TenantID" id="TenantID" type="text" required value="#TenantID#"></td>
                            </tr>
                            <tr>
                                <td><strong>First Name:</strong></td>
                                <td><input name="TenantFirstName" id="TenantFirstName" type="text" value="#TenantFirstName#"></td>
                            </tr>
                            <tr>
                                <td><strong>Last Name:</strong></td>
                                <td><input name="TenantLastName" id="TenantLastName" type="text" value="#TenantLastName#"></td>
                            </tr>
                            <tr>
                                <td><strong>Phone Number:</strong></td>
                                <td><input name="TenantPhone" id="TenantPhone" type="text" value="#TenantPhone#"></td>
                            </tr>
                            <tr>
                                <td><strong>Property Type:</strong></td>
                                <td><select name="PropertyType" id="PropertyType">
  					<option value="#PropertyType#">Current - #PropertyType#</option>
                    			<option value="Commercial">Commercial</option>
                    			<option value="Residential">Residential</option>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Unit ID:</strong></td>
                                <td><select name="UnitID" id="UnitID">
  					<option value="#UnitID#">Current - #UnitID#</option>
                    			<cfloop query="unit_id">
                    				<option value="#UnitID#">#UnitID#</option>
                    			</cfloop>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Rent:</strong></td>
                                <td><input name="MonthlyRent" id="MonthlyRent" type="text" value="#MonthlyRent#"></td>
                            </tr>
                            <tr>
                                <td><strong>Lease Start:</strong></td>
                                <td><input name="LeaseStart" id="LeaseStart" type="text" value="#LeaseStart#"></td>
                            </tr>
                            <tr>
                                <td><strong>Lease End:</strong></td>
                                <td><input name="LeaseEnd" id="LeaseEnd" type="text" value="#LeaseEnd#"></td>
                            </tr>
                            <tr>
			<td><form action="tenant-delete.cfm" method="post" id="delete-tenant">
			<form action="" method="post">
                        <input type="hidden" name="TenantID" value="#TenantID#">
                        <input value="Delete" type="submit" class="button">
                	</form>
			</td>
                                <td><input type="submit" value="Submit" class="button"></td>
				
                            </tr>
                    		<tr>
                        		<td colspan="2" class="break">&nbsp;</td>
                            </tr>
                        </table>
                    
                    
                    </form>
                    </cfoutput>
                    
              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div> 

</body>
</html>
