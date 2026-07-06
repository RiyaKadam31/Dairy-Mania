<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="DairyMania.Admin.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/adminlog.css" rel="stylesheet" />
   </head>
<body>

    <header>
        <div class="container header-container">
            <img src="../Image/Logo.png" alt="DM Logo" class="logo" />
            <h1>Dairy Mania</h1>
            <nav>
                 <ul>
                     <li><a href="home.aspx">Home</a></li>
                     <li><a href="product.aspx">Products</a></li>
                     <li><a href="Store.aspx">Store</a></li>
                     <li><a href="aboutus.aspx">About Us</a></li>
                     <li><a href="contactus.aspx">ContactUs</a></li>
                     <li><a href="../Master/login.aspx">Log In</a></li>


                 </ul>
            </nav>
        </div>
    </header>

        <section class="container">
        <h2 style="color:#ffd700;font-size:32px">Is You Admin??</h2>

        <form id="login-form" onsubmit="checkAdmin(); return false;"> <!-- Added onsubmit event to call JavaScript function -->
            
            <input type="text" id="username" name="username" placeholder="Enter your username" required><br />
            <br />
            <br />
&nbsp;<input type="password" id="password" name="password" placeholder="Enter your password" required><br />

            <br />
            <button type="button" onclick="submitLogin()">Login</button>
        </form>
    </section>
        <script>
            function submitLogin() {
        var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            // Check if username and password match the specified credentials
            if (username === "Riya" && password === "Riyaa@01") {
                // Redirect to the next page
                window.location.href = "Admin.aspx"; // Replace "next_page.html" with the actual URL of the next page
        } else {
                alert("Incorrect username or password. Please try again."); // Display an error message
        }
    }
        </script>
    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
          
        </div>
    </footer>
</body>
</html>
