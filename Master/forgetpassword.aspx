<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="DairyMania.Master.forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
          <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/forget.css" rel="stylesheet" />
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
    <h1 style="font-size:24px">Forgot Password</h1>
    <p style="font-size:20px">Please enter your email address below. We'll send you instructions on how to reset your password.</p>
    
    <form id="forgot" runat="server">
        <label for="email" style="color:#fff ;font-size:20px">Email Address:</label>
        <asp:TextBox ID="email" runat="server" Height="20px" TextMode="Email" Width="100%"></asp:TextBox>
        <br />
        <asp:Button ID="submit" runat="server" BackColor="#000333" BorderColor="White" BorderStyle="Double" Font-Names="Arial" Font-Size="Small" ForeColor="Gold" Height="40px" Text="Reset Password" Width="200px" OnClick="submit_Click" />
        <br />
        <asp:Label ID="msg" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="Small" ForeColor="Gold"></asp:Label>
    </form>
</div>
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