<!DOCTYPE html>

<html>
<head>
	<cfoutput>
    <title>Listing #UnitID# Updated  - J&R Properties</title>
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
		.left {
			text-align:left
		}

	</style>
    
</head>

<body>


    <div id="body">

    <cfinclude template="header.cfm">
                <h1>Listing Updated</h1>
    
        <article>
	    <cfquery datasource="team3" name="unit_id">
            SELECT * from Properties
            </cfquery>
            <section id="listingform">
            	<cfif #Form.UnitID# contains "R" >
                    <cfquery datasource="team3" name="residential">
                    Select * from ResidentialUnits WHERE UnitID = '#Form.UnitID#';
                    </cfquery>
                	<cfoutput query="residential">
                    <p><a href="listing-all.cfm">All Listings</a></p>
                    <form method="post" action="listing-update-action.cfm">
                    	<table>
                            <tr>
                                <th colspan="2">Residential Listing</th>
                            </tr>
                            <tr>
                                <td><strong>Unit ID*:</strong></td>
                                <td><input name="UnitID" id="UnitID" type="text" required value="#UnitID#"></td>
                            </tr>
                            <tr>
                                <td><strong>Unit Name:</strong></td>
                                <td><input name="UnitName" id="UnitName" type="text" value="#UnitName#"></td>
                            </tr>
                            <tr>
                                <td><strong>Check for Vacant:</strong></td>
                                <td><input name="Vacant" id="Vacant" type="checkbox" value="#Vacant#"></td>
                            </tr>
                            <tr>
                                <td><strong>Property ID*:</strong></td>
                                <td><select name="PropertyID" id="PropertyID">
                    				<option value="#PropertyID#">Current - #PropertyID#</option>
                    			<cfloop query="unit_id">
                    				<option value="#PropertyID#">#PropertyID#</option>
                    			</cfloop>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Street Address*:</strong></td>
                                <td><input name="StreetAddress" id="StreetAddress" type="text" value="#StreetAddress#"></td>
                            </tr>
                            <tr>
                                <td><strong>City*:</strong></td>
                                <td><input name="City" id="City" type="text" value="#City#" ></td>
                            </tr>
                            <tr>
                                <td><strong>State*:</strong></td>
                                <td><input name="State" id="State" type="text" value="#State#"></td>
                            </tr>
                            <tr>
                                <td><strong>Date Available*:</strong></td>
                                <td><input name="DateAvailable" id="DateAvailable" type="text" value="#DateAvailable#"></td>
                            </tr>
                            <tr>
                                <td><strong>Number of Bedrooms:</strong></td>
                                <td> <select name="NoBeds" id="NoBeds">
                    				<option value="#NoBeds#">Current - #NoBeds#</option>
                                          <option value="Studio">Studio</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                          <option value="4+">4+</option>
                            		</select></td>
                            </tr>
                            <tr>
                        		<td><strong>Number of Bathrooms:</strong></td>
                                <td><select name="NoBaths" id="NoBaths">
                    				<option value="#NoBaths#">Current - #NoBaths#</option>
                                        <option value="1/2">1/2</option>
                                        <option value="1">1</option>
                                        <option value="1 1/2">1 1/2</option>
                                        <option value="2+">2+</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Price*:</strong></td>
                                <td><input name="MonthlyPrice" id="MonthlyPrice" type="text" value="#MonthlyPrice#"></td>
                            </tr>
                            <tr>
                                <td><strong>Description*:</strong></td>
                                <td><textarea name="Description" id="Description">#Description#</textarea></td>
                            </tr>
                            <tr><td><form action="listing-delete.cfm" method="post" id="delete-ticket">
			<form action="" method="post">
                        <input type="hidden" name="UnitID" value="#UnitID#">
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
                <cfelse>
                    <cfquery datasource="team3" name="commercial">
select * from CommercialUnits WHERE UnitID = '#Form.UnitID#';
                    </cfquery>
                <cfoutput query="commercial">
            		
                    <p><a href="listing-all.cfm">All Listings</a></p>
                    <form method="post" action="listing-update-action.cfm">
                    	<table>
                            <tr>
                                <td><strong>Unit ID*:</strong></td>
                                <td><input name="UnitID" id="UnitID" type="text" required value="#UnitID#"></td>
                            </tr>
                            <tr>
                                <td><strong>Unit Name:</strong></td>
                                <td><input name="UnitName" id="UnitName" type="text" value="#UnitName#"></td>
                            </tr>
                            <tr>
                                <td><strong>Check for Vacant:</strong></td>
                                <td><input name="Vacant" id="Vacant" type="checkbox" value="#Vacant#"></td>
                            </tr>
                            <tr>
                                <td><strong>Property ID*:</strong></td>
                                <td><select name="PropertyID" id="PropertyID">
                    				<option value="#PropertyID#">Current - #PropertyID#</option>
                    			<cfloop query="unit_id">
                    				<option value="#PropertyID#">#PropertyID#</option>
                    			</cfloop>
                    		</select></td>
                            </tr>
                            <tr>
                                <td><strong>Street Address*:</strong></td>
                                <td><input name="StreetAddress" id="StreetAddress" type="text" value="#StreetAddress#"></td>
                            </tr>
                            <tr>
                                <td><strong>City*:</strong></td>
                                <td><input name="City" id="City" type="text" value="#City#" ></td>
                            </tr>
                            <tr>
                                <td><strong>State*:</strong></td>
                                <td><input name="State" id="State" type="text" value="#State#"></td>
                            </tr>
                            <tr>
                                <td><strong>Date Available*:</strong></td>
                                <td><input name="DateAvailable" id="DateAvailable" type="text" value="#DateAvailable#"></td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Price*:</strong></td>
                                <td><input name="MonthlyPrice" id="MonthlyPrice" type="text" value="#MonthlyPrice#"></td>
                            </tr>
                            <tr>
                                <td><strong>Description*:</strong></td>
                                <td><textarea name="Description" id="Description">#Description#</textarea></td>
                            </tr>
                            <tr>
				<td><form action="listing-delete.cfm" method="post" id="delete-ticket">
			<form action="" method="post">
                        <input type="hidden" name="UnitID" value="#UnitID#">
                        <input value="Delete" type="submit" class="button">
                	</form>
			</td>
                                <td><input type="submit" value="Submit" class="button">
                    </form></td>
				
                            </tr>
                    		<tr>
                        		<td colspan="2" class="break">&nbsp;</td>
                            </tr>
                        </table>
                    </cfoutput>
                    </cfif>
                    
              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div> 

</body>
</html>
