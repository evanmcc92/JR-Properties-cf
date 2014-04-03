<!DOCTYPE html>

<html>
<head>
    <title>Tenant Added - J&R Properties</title>
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
                <h1>Add A Listing</h1>
    
        <article>
 
            
            <section id="tenantform">
		<cfquery datasource="team3" name="unit_id">
            SELECT UnitID FROM ResidentialUnits
            UNION All
            SELECT UnitID FROM CommercialUnits
            Order by UnitID;
            </cfquery>
                	<cfoutput>
                    <p><a href="tenant-all.cfm">All Tenants</a></p>
                    <form method="post" action="tenant-add-action.cfm">
                    	<table>
                            <tr>
                                <th colspan="2">Tenant</th>
                            </tr>
                            <tr>
                                <td><strong>Tenant ID:</strong></td>
                                <td><input name="TenantID" id="TenantID" type="text" required placeholder="Txxx"></td>
                            </tr>
                            <tr>
                                <td><strong>First Name:</strong></td>
                                <td><input name="TenantFirstName" id="TenantFirstName" type="text"></td>
                            </tr>
                            <tr>
                                <td><strong>Last Name:</strong></td>
                                <td><input name="TenantLastName" id="TenantLastName" type="text"></td>
                            </tr>
                            <tr>
                                <td><strong>Phone Number:</strong></td>
                                <td><input name="TenantPhone" id="TenantPhone" type="text"></td>
                            </tr>
                            <tr>
                                <td><strong>Property Type:</strong></td>
                                <td><select name="PropertyType" id="PropertyType">
  					<option>Select a Property Type</option>
                    			<option value="Commercial">Commercial</option>
                    			<option value="Residential">Residential</option>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Unit ID:</strong></td>
                                <td><select name="UnitID" id="UnitID">
  					<option>Select a Unit</option>
                    			<cfloop query="unit_id">
                    				<option value="#UnitID#">#UnitID#</option>
                    			</cfloop>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Rent:</strong></td>
                                <td><input name="MonthlyRent" id="MonthlyRent" type="text" placeholder="xx.xx"></td>
                            </tr>
                            <tr>
                                <td><strong>Lease Start:</strong></td>
                                <td><input name="LeaseStart" id="LeaseStart" type="text"></td>
                            </tr>
                            <tr>
                                <td><strong>Lease End:</strong></td>
                                <td><input name="LeaseEnd" id="LeaseEnd" type="text"></td>
                            </tr>
                            <tr>
                                <td colspan="2"><input type="submit" value="Submit" class="button"></td>
				
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
