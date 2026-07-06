<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAnimal.aspx.cs" Inherits="DairyMania.Admin.AdminAnimal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
         <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/adminstore.css" rel="stylesheet" />
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
<li><a href="AdminBooking.aspx">Booking Management</a></li>
<li><a href="AdminCustomer.aspx">Customer Management</a></li>
<li><a href="../Master/login.aspx">LogOut</a></li>

                 </ul>
            </nav>
        </div>
    </header>
    <div class="animal">
        <form id="form1" runat="server">
            <h2>Live Stock</h2>
            <div>
                <label for="aName">AnimalName:<asp:RequiredFieldValidator ID="animalNameValidator" runat="server" ControlToValidate="animalName" ErrorMessage="Please Enter The Name." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="animalName" runat="server"></asp:TextBox>

                </label>
            </div>
            <div>
                <label for="aPrice">Price:<asp:RequiredFieldValidator ID="animalPriceValidator" runat="server" ControlToValidate="animalPrice" ErrorMessage="Please Enter The Price" ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="animalPrice" runat="server"></asp:TextBox>
                </label>
            </div>
            <div>
                <label for="aType">Type<asp:RequiredFieldValidator ID="animalTypeValidator" runat="server" ControlToValidate="animalType" ErrorMessage="Please Select The Type" ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList ID="animalType" runat="server">
                        <asp:ListItem>Cow</asp:ListItem>                        
                        <asp:ListItem>Buffalo</asp:ListItem>                       
                        <asp:ListItem>Goat</asp:ListItem>
                        </asp:DropDownList>
                    </label>
            </div>
            <div>
                <label for="aBreed">Breed:<asp:RequiredFieldValidator ID="animalBreedValidator" runat="server" ControlToValidate="animalBreed" ErrorMessage="Please Select The Breed" ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:DropDownList ID="animalBreed" runat="server">
                        <asp:ListItem>Kankrej</asp:ListItem>
                        <asp:ListItem>Halli</asp:ListItem>
                        <asp:ListItem>Dangi</asp:ListItem>
                        <asp:ListItem>Nagpuri</asp:ListItem>
                        <asp:ListItem>Murrah</asp:ListItem>
                        <asp:ListItem>Surti</asp:ListItem>
                        <asp:ListItem>Gavrang</asp:ListItem>
                    </asp:DropDownList>
                    </label>
            </div>
            <div>
                <label for="animalQty">Quantity(in L):<asp:RequiredFieldValidator ID="animalQtyValidator" runat="server" ControlToValidate="animalQty" ErrorMessage="Please Enter The Quantity " ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="animalQty" runat="server" ></asp:TextBox>
                    </label>
            </div>
            <asp:Button ID="animlbtn" runat="server" Text="Submit" OnClientClick="animalbtn_Click" OnClick="animlbtn_Click" />
        </form>
    </div>
    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
            
        </div>
    </footer>
</body>
</html>
