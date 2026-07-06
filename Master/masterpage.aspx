<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="masterpage.aspx.cs" Inherits="DairyMania.Master.masterpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/master.css" rel="stylesheet" />
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

    <div class="container">
        <section>
            <h2>Welcome to our D'M Factory!!</h2>
            <p>
               Dairy Mania: Your Go-To Dairy Factory.
                Dairy Mania is a premier dairy factory dedicated to producing high-quality dairy products.
                We offer a wide range of dairy items, including milk, cheese, yogurt, and butter, all made with the finest ingredients and the utmost care.</p><br />
                <h2>Why Choose D'M for daily?</h2>
                <p>High-quality products, convenient online and timely delivery, and excellent customer service.</p>         
        </section>
</div>
    </body>
    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
            <ul>
                <li><a href="term.html">Terms and Conditions</a></li>
                <li><a href="policy.html">Privacy Policy</a></li>
                <li><a href="contactus.aspx">Conatact Us</a></li>
            </ul>
        </div>
    </footer>
     
</html>
