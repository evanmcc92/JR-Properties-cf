<!DOCTYPE html>

<html>
<head>
    <title>All Properties - Admin - J&R Properties</title>
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
		.left {
			text-align:left
		}

	</style>
</head>

<body>
    <div id="body">
               
            <cfquery datasource="team3" name="properties">
            SELECT * FROM Properties
            </cfquery>

    <cfinclude template="header.cfm">
    
        <h1>Properties</h1>
        <cfoutput>
            <h3>Total Number of Properties: #properties.RecordCount#</h3>
            <h3><a href="property-add.cfm">Add New Property</a></h3>
            
            <table>
            	<tr>
                	<th colspan="7">Properties</th>
                </tr>

                <tr class="left">

                	<th>Property ID</th>
                	<th>Street Address</th>
                	<th>City</th>
                	<th>Number of Units</th>
                	<th colspan="2">Options</th>
                </tr>
                <cfloop query="properties">
                <tr>
                	<td>#PropertyID#</td>
                	<td>#StreetAddress#</td>
                	<td>#City#</td>
                	<td>#NumberofUnits#</td>
                	<td><form action="property-full.cfm" method="post">
                    <input type="hidden" name="PropertyID" value="#PropertyID#">
                    <input value="See More" type="submit" class="button">
                    </form></td>
                	<td><form action="property-update.cfm" method="post">
                    <input type="hidden" name="PropertyID" value="#PropertyID#">
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
