<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alertmsg.aspx.cs" Inherits="DairyMania.Master.alertmsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/alertmsg.css" rel="stylesheet" />
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
               <li><a href="login.aspx">Log IN</a></li>

                 </ul>
            </nav>
        </div>
    </header>

    <div class="notification">
        <h2>Please Log In</h2>
        <p>You need to log in to access this content.</p>
        <a href="login.aspx">Log In</a>

    </div>

    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
            <ul>
                <li><a href="+">Terms and Conditions</a></li>
                <li><a href="+">Privacy Policy</a></li>
                <li><a href="+">Conatact Us</a></li>
            </ul>
        </div>
    </footer>
</body>
</html>