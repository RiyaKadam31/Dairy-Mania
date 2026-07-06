<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DairyMania.Master.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/login.css" rel="stylesheet" />
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


                 </ul>
            </nav>
        </div>
    </header>
        <form id="form1" runat="server">
    <div id="Div1" class="login-container" runat="server">
    <h1>LogIn To D'M </h1>
        <asp:Label ID="msg" runat="server" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small" ForeColor="#000333"></asp:Label>
        <br />
    <asp:TextBox required= "true" placeholder="username" runat="server" ID="username" ></asp:TextBox>
    <asp:TextBox required= "true" TextMode="Password" placeholder="Password" runat="server" ID="password" ></asp:TextBox>
    <asp:Button Text="LOGIN" CssClass="btn" Height="50px" Width="400px" runat="server" ID="logbtn" OnClick="logbtn_Click" />
        <asp:HyperLink ID="forget" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Gold" NavigateUrl="forgetpassword.aspx">Forget Password  :(</asp:HyperLink>
        </div>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="adminbtn" runat="server" ForeColor="Gold" Height="25px" PostBackUrl="~/Admin/AdminLogIn.aspx" Width="130px">Admin LogIn!!</asp:LinkButton>
        </div>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="signuobtn" runat="server" ForeColor="Gold" PostBackUrl="signup.aspx" Width="350px">Create An Account First On D'M Factory.!</asp:LinkButton>
        </div>
            
            
</form>
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