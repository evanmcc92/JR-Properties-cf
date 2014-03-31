<!DOCTYPE html>

<html>
<head>
    <title>Contact Us - J&R Properties</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <style type="text/css">

    #maps {
        text-align: center;
    }

    </style>
    
</head>

<body>

<!-- email form -->

<!--if the forms email field is filled out-->
<cfif isDefined("form.email")>
<cfmail from="postmaster@evanamccullough.com" 
        to="#form.name# <#form.email#>"
        subject="Contact Us Message"
        type="html" >
        <html>
            <body>
                <p>Message from:</p>
                <ul>
                    <li>Name: #form.name#</li>
                    <li>Email Address: #form.email#</li>
                </ul>

                <p>Comments:<br> 
                #form.message#</p>
            </body>
        </html>
</cfmail>
<!--output-->

<cfoutput>
    <script>
        function completeAlert() {
            alert("Thank you #form.name# for sending an email, expect to hear something soon.");
        }
    </script>
</cfoutput>
</cfif>

<!--end email form-->
    <div id="body">

    <cfinclude template="header.cfm">
            <h1>Contact Us</h1>
    
      <article>
            <p>Our main office is located at 52R Green Street Lynn, MA. To contact us by  phone, please call (781) 974-5790.</p>
            <p>&nbsp;</p>
            <p id="maps"><iframe width="600" height="450" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=52R%20Green%20Street%20Lynn%2C%20MA%2002194&key=AIzaSyD-jE5-LQVhNq2pvw09RZSAaFUT5O6V0pk"></iframe></p>
            <p>&nbsp;</p>
            <p>Feel free to fill out the following form for any general  inquiries you may have.</p>
            <section id="emailform">
                <form method="POST" action="contact.cfm" onSubmit="completeAlert()">
                    <p>Email: <input name="email" id="email" size="50" Required="Yes" Message="Please enter email."></p>
                    <p>Name: <input name="name" id="name" size="50" Required="YES" Message="Please enter Complete Name."></p>
                    <p>Message:<br>
                       <textarea name="message" id="message" cols="43" rows="5" placeholder="Enter message here."></textarea></p>
                    <p><input type="submit" value="Submit"> <input type="reset" value="Reset"></p> 
                </form>
            </section>
      </article>
        
        
<cfinclude template="footer.cfm">

    </div>

</body>
</html>
