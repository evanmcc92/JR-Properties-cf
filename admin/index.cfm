<!DOCTYPE html>

<html>
<head>
    <title>Admin - J&R Properties</title>
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

    <cfinclude template="header.cfm">
    
        <h1>Admin Section</h1>
        <article>
        	<section id="applications-admin">
                <cfquery datasource="team3" name="applications">
                select * from Applications ORDER BY AppDate DESC;
                </cfquery>
        		<h3>Recent Applications</h3>
                <cfoutput>
                <table>
                    <tr>
                        <th colspan="4">Applications</th>
                    </tr>
                <tr class="left">
                        <th>Date Applied</th>
                        <th>Last Name</th>
                        <th>First Name</th>
                        <th>Monthly Income</th>
                    </tr>
                    <cfloop query="applications">
                    <tr>
                        <td>#DATEFORMAT(AppDate, "m/d/yyyy")#</td>
                        <td><cfif ApplicantLastName eq ''>N/A<cfelse>#ApplicantLastName#</cfif></td>
                        <td><cfif ApplicantFirstName eq ''>N/A<cfelse>#ApplicantFirstName#</cfif></td>
                        <td>#DollarFormat(MonthlyIncome)#</td>
                    </tr>
                    </cfloop>
                    <tr>
                        <td colspan="4" class="break">&nbsp;</td>
                    </tr>
                </table>
                <p><a href="applicant-all.cfm">See all applicants here</a></p>
                </cfoutput>
            </section>
        	<section id="maintenance-admin">
                <cfquery datasource="team3" name="tickets">
                select * from MaintenanceTickets ORDER BY IssueDate DESC;
                </cfquery>
        		<h3>Recent Maintenance Requests</h3>
                	<cfoutput>
                    <table>
                        <tr>
                            <th colspan="5">Tickets</th>
                        </tr>
                <tr class="left">
                            <th>Date Filed</th>
                            <th>Last Name</th>
                            <th>First Name</th>
                            <th>Unit ID</th>
                            <th>Resolved</th>
                        </tr>
                        <cfloop query="tickets">
                        <tr>
                            <td>#DATEFORMAT(IssueDate, "m/d/yyyy")#</td>
                            <td><cfif TenantLastName eq ''>N/A<cfelse>#TenantLastName#</cfif></td>
                            <td><cfif TenantFirstName eq ''>N/A<cfelse>#TenantFirstName#</cfif></td>
                            <td>#UnitID#</td>
                            <td>#YesNoFormat(Resolved)#</td>
                        </tr>
                        </cfloop>
                        <tr>
                            <td colspan="5" class="break">&nbsp;</td>
                        </tr>
                    </table>
                	<p><a href="ticket-all.cfm">See all requests here</a></p>
                    </cfoutput>
            </section>
        	<section id="listings-admin">
               
                <cfquery datasource="team3" name="listings">
                SELECT UnitID FROM ResidentialUnits
                UNION
                SELECT UnitID FROM CommercialUnits
                </cfquery>
        		<h3>Total Listings</h3>
                <cfoutput>
            	<p>Total Listings: <a href="listing-all.cfm">#listings.RecordCount#</a></p>
                </cfoutput>
            </section>
        	<section id="finances-admin">
        		<h3>Monthly Incomes</h3>
               <!-- commercial total -->
                <cfquery datasource="team3" name="commercialall">
                	SELECT sum(MonthlyPrice) as commercialtotal FROM CommercialUnits ;
                </cfquery>
                <cfoutput>
            		<p>Max Income for Commercial Units: #DollarFormat(commercialall.commercialtotal)#</p>
                </cfoutput>
               <!-- commercial total where vacant = false-->
                <cfquery datasource="team3" name="commercialvacant">
                	SELECT sum(MonthlyPrice) as commercialvacanttotal FROM CommercialUnits WHERE Vacant=0 ;
                </cfquery>
                <cfoutput>
            		<p>Current Monthly Commercial Revenue: #DollarFormat(commercialvacant.commercialvacanttotal)#</p>
                </cfoutput>
		<p>&nbsp;</p>
               <!-- residential total -->
                <cfquery datasource="team3" name="residentialall">
                	SELECT sum(MonthlyPrice) as residentialtotal FROM ResidentialUnits ;
                </cfquery>
                <cfoutput>
            		<p>Max Income for Residential Units: #DollarFormat(residentialall.residentialtotal)#</p>
                </cfoutput>
               <!-- residential total -->
                <cfquery datasource="team3" name="residentialvacant">
               	 	SELECT sum(MonthlyPrice) as residentialvacanttotal FROM ResidentialUnits WHERE Vacant=0;
                </cfquery>
                	<cfoutput>
            	<p>Current Monthly Residential Revenue: #DollarFormat(residentialvacant.residentialvacanttotal)#</p>
                </cfoutput>
            </section>
        </article>
    <cfinclude template="footer.cfm">
    </div>

</body>
</html>
