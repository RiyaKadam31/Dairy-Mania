<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBooking.aspx.cs" Inherits="DairyMania.Admin.AdminBooking1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
              <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/admincustomer.css" rel="stylesheet" />
              <style type="text/css">
                  .auto-style1 {
                      margin-left: 29px;
                  }
              </style>
   </head>
<body>

    <header>
        <div class="container header-container">
            <img src="../Image/Logo.png" alt="DM Logo" class="logo" />
            <h1>Dairy Mania</h1>
            <nav>
                 <ul>
  <li><a href="Dashboard.aspx">Dashboard</a></li>
 <li><a href="AdminStore.aspx">Store Management</a></li>
<li><a href="AdminAnimal.aspx">Animal Management</a></li>
<li><a href="AdminCustomer.aspx">Customer Management</a></li>
<li><a href="../Master/login.aspx">LogOut</a></li>
                 </ul>
            </nav>
        </div>
    </header>
     <form id="form1" runat="server">
     <div style="height: 350px">
         
         &nbsp;&nbsp;&nbsp;
         
         <asp:Label ID="todaybking" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Gold" Text="Todays Booking :"></asp:Label>
         <asp:Label ID="count" runat="server" Font-Size="X-Large" ForeColor="Gold"></asp:Label>
         <br />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="todaybk" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" Text="Today's" Width="100px" OnClick="todaybk_Click" />
         <br />
         &nbsp;&nbsp;
         <asp:Label ID="monthbking" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Gold" Text="Month Booking :"></asp:Label>
         <asp:Label ID="countm" runat="server" Font-Size="X-Large" ForeColor="Gold"></asp:Label>
         <br />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="monthbk" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" Text="Month's" Width="100px" OnClick="monthbk_Click" />
         <br />
         &nbsp;&nbsp;&nbsp;
         <asp:Label ID="yearbking" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Gold" Text="Yearly Booking :"></asp:Label>
         <asp:Label ID="county" runat="server" Font-Size="X-Large" ForeColor="Gold"></asp:Label>
         <br />
         &nbsp;&nbsp;&nbsp;
         <asp:Button ID="yearbk" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" Text="Year's" Width="100px" OnClick="yearbk_Click" />
         <br />
         <br />
         
         </div>
         </form>

    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
           
        </div>
    </footer>
</body>
</html>