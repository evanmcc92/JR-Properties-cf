<!DOCTYPE html>

<html>
<head>
	<cfoutput>
    <title>Property #PropertyID# Updated - J&R Properties</title>
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
                <h1>Property Update</h1>
    
        <article>
            <section id="Propertyform">
                    <cfquery datasource="team3" name="Properties">
                    select * from Properties WHERE PropertyID = #Form.PropertyID#;
                    </cfquery>
                	<cfoutput query="Properties">
                    <p><a href="property-all.cfm">All Properties</a></p>
                    <form method="post" action="property-update-action.cfm">
                    	<table>
                            <tr>
                                <th colspan="2">Property</th>
                            </tr>
                            <tr>
                                <td><strong>Property ID:</strong></td>
                                <td><input name="PropertyID" id="PropertyID" type="text" required value="#PropertyID#"></td>
                            </tr>
                            <tr>
                                <td><strong>Street Address:</strong></td>
                                <td><input name="StreetAddress" id="StreetAddress" type="text" value="#StreetAddress#"></td>
                            </tr>
                            <tr>
                                <td><strong>City:</strong></td>
                                <td><input name="City" id="City" type="text" value="#City#"></td>
                            </tr>
                            <tr>
                                <td><strong>State:</strong></td>
                                <td><select name="State" id="State">
  					<option value="#State#">Current - #State#</option>
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="DC">District Of Columbia</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                            </select></td>
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
                                <td><strong>Number of Units:</strong></td>
                                <td><select name="NumberofUnits" id="NumberofUnits">
  					<option value="#NumberofUnits#">Current - #NumberofUnits#</option>
<cfloop from="1" to="25" index="i">
                                                           
                                      <option value="#i#">#i#</option>
                            </cfloop>
                    		</select></td>
                            </tr>
                            <tr>
				<td><form action="property-delete.cfm" method="post" id="delete-property">
			<form action="" method="post">
                        <input type="hidden" name="PropertyID" value="#PropertyID#">
                        <input value="Delete" type="submit" class="button">
                	</form>
			</td>
                                <td><input type="submit" value="Submit" class="button"></form></td>
				
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
