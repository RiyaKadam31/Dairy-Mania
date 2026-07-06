<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="DairyMania.Admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../Css/Dashboard.css" rel="stylesheet" />
    <title>Admin Dashboard</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <aside class="sidebar">
            <h2>D'M Factory</h2>
            <nav>
  <ul>
     <li><a href="#">Dashboard</a></li>
     <li><a href="AdminAnimal.aspx">Animals</a></li>
     <li><a href="AdminCustomer.aspx">Customers</a></li>
     <li><a href="AdminBooking.aspx">Booking</a></li>
  </ul>
</nav>
        </aside>

        <main class="main-content">
            <header>
                <h1>Dashboard</h1>
                <div class="user-info">
                    <span>Admin</span>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
                    
                </div>
            </header>

            <section class="stats">
                <div class="card">
                    <h3>Total</h3>
                    <p><asp:Label ID="lblTotal" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="card">
                    <h3>Animal</h3>
                    <p><asp:Label ID="lblAnimal" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="card">
                    <h3>Booking</h3>
                    <p><asp:Label ID="lblBooking" runat="server" Text="0"></asp:Label></p>
                </div>
                <div class="card">
                    <h3>Customers</h3>
                    <p><asp:Label ID="lblCustomers" runat="server" Text="0"></asp:Label></p>
                </div>
            </section>

            
            </main>
            
    </div>
    <script src="admindashboard.js"></script>
    
    </form>
    
</body>
</html>


