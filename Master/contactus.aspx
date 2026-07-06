<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="DairyMania.Master.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/contactus.css" rel="stylesheet" />
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
                      <li><a href="login.aspx">Log IN</a></li>

                 </ul>
            </nav>
        </div>
    </header>
        <section class="container">
        <h2 style="color:#ffd700;font-size:32px">Contact Us</h2>
            <form id="Form1" class="contact-form" runat="server" onsubmit="return submitForm()">
            <label for="name" style="color:#FFF">Your Name:<br />
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </label>
&nbsp;

            <label for="email" style="color:#FFF">Your Email:<br />
                <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                </label>&nbsp;

            <label for="message"style="color:#FFF">Your Message:<br />
                <asp:TextBox ID="message" runat="server" Height="41px" Width="382px"></asp:TextBox>
                <br />
                <asp:Button ID="submit" runat="server" CssClass="button" Text="Submit" BackColor="#333333" ForeColor="White" Height="50px" OnClick="submit_Click" Width="100px" />
                </label>
&nbsp;</form>
    </section>
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
</body>
</html>
