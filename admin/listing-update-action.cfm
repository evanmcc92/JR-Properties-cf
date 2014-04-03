<!DOCTYPE html>

<html>
<head>
<cfoutput>
    <title>Listing #UnitID# Updated - J&R Properties</title>
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
                <h1>Listing Updated</h1>
    
        <article>
            <h3>Listings Has Been Updated</h3>

            <section id="listingform">
            	<cfif IsDefined("Form.NoBeds")>                	
            	<cfoutput>
            		            	<cfif IsDefined("Form.Vacant")>
            		            		<cfset Vacant = 1>
            		            	<cfelse>
            		            		<cfset Vacant = 0>
            		          		</cfif >

                    <p><a href="listing-all.cfm">All Listings</a></p>
                    	<table>
                            <tr>
                                <th colspan="2">Commercial Listing</th>
                            </tr>
                            <tr>
                                <td><strong>Unit ID*:</strong></td>
                                <td>#Form.UnitID#</td>
                            </tr>
                            <tr>
                                <td><strong>Unit Name:</strong></td>
                                <td>#Form.UnitName#</td>
                            </tr>
                            <tr>
                                <td><strong>Vacant:</strong></td>
                                <td>#YesNoFormat(Vacant)#</td>
                            </tr>
                            <tr>
                                <td><strong>Property ID*:</strong></td>
                                <td>#Form.PropertyID#</td>
                            </tr>
                            <tr>
                                <td><strong>Street Address*:</strong></td>
                                <td>#Form.StreetAddress#</td>
                            </tr>
                            <tr>
                                <td><strong>City*:</strong></td>
                                <td>#Form.City#</td>
                            </tr>
                            <tr>
                                <td><strong>State*:</strong></td>
                                <td>#Form.State#</td>
                            </tr>
                            <tr>
                                <td><strong>Date Available*:</strong></td>
                                <td>#Form.DateAvailable#</td>
                            </tr>
                            <tr>
                                <td><strong>Number of Bedrooms:</strong></td>
                                <td>#Form.NoBeds#</td>
                            </tr>
                            <tr>
                        		<td><strong>Number of Bathrooms:</strong></td>
                                <td>#Form.NoBaths#</td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Price*:</strong></td>
                                <td>#Form.MonthlyPrice#</td>
                            </tr>
                            <tr>
                                <td><strong>Description*:</strong></td>
                                <td>#Form.Description#</td>
                            </tr>
                    		<tr>
                        		<td colspan="2" class="break">&nbsp;</td>
                            </tr>
                        </table>
    				<cfupdate datasource="team3" tablename="ResidentialUnits" >
                    </cfoutput>
                <cfelse>                	
            	<cfoutput>
            		            	<cfif IsDefined("Form.Vacant")>
            		            		<cfset Vacant = 1>
            		            	<cfelse>
            		            		<cfset Vacant = 0>
            		          		</cfif >

                    <p><a href="listing-all.cfm">All Listings</a></p>
                    	<table>
                            <tr>
                                <th colspan="2">Commercial Listing</th>
                            </tr>
                            <tr>
                                <td><strong>Unit ID*:</strong></td>
                                <td>#Form.UnitID#</td>
                            </tr>
                            <tr>
                                <td><strong>Unit Name:</strong></td>
                                <td>#Form.UnitName#</td>
                            </tr>
                            <tr>
                                <td><strong>Vacant:</strong></td>
                                <td>#YesNoFormat(Vacant)#</td>
                            </tr>
                            <tr>
                                <td><strong>Property ID*:</strong></td>
                                <td>#Form.PropertyID#</td>
                            </tr>
                            <tr>
                                <td><strong>Street Address*:</strong></td>
                                <td>#Form.StreetAddress#</td>
                            </tr>
                            <tr>
                                <td><strong>City*:</strong></td>
                                <td>#Form.City#</td>
                            </tr>
                            <tr>
                                <td><strong>State*:</strong></td>
                                <td>#Form.State#</td>
                            </tr>
                            <tr>
                                <td><strong>Date Available*:</strong></td>
                                <td>#Form.DateAvailable#</td>
                            </tr>
                            <tr>
                                <td><strong>Monthly Price*:</strong></td>
                                <td>#Form.MonthlyPrice#</td>
                            </tr>
                            <tr>
                                <td><strong>Description*:</strong></td>
                                <td>#Form.Description#</td>
                            </tr>
                    		<tr>
                        		<td colspan="2" class="break">&nbsp;</td>
                            </tr>
                        </table>
    					<cfupdate datasource="team3" tablename="CommercialUnits" >
                        </cfoutput>
                    </cfif>
                    
              
            </section>
        </article>

		<cfinclude template="footer.cfm">

  
    </div> 

</body>
</html>
