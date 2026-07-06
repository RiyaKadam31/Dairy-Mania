<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminStore.aspx.cs" Inherits="DairyMania.Admin.storemanagement" %>

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
                  <li><a href="AdminAnimal.aspx">Animal Management</a></li>
                  <li><a href="AdminBooking.aspx">Booking Management</a></li>
                  <li><a href="AdminCustomer.aspx">Customer Management</a></li>
                  <li><a href="../Master/login.aspx">LogOut</a></li>
                     
                 </ul>
            </nav>
        </div>
    </header>

            <div class="store">
        <form id="form1" runat="server">
        <h2>Store Form</h2>
            <div>
        <label for="storeName">Name:<asp:RequiredFieldValidator ID="storeNameValidator" runat="server" ControlToValidate="storeName" ErrorMessage="Please Enter The Name." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="storeName" runat="server"></asp:TextBox>

        </label>

    </div>
            <div>
                <label for="storeowner">Name:<asp:RequiredFieldValidator ID="storeownerValidator" runat="server" ControlToValidate="storeowner" ErrorMessage="Please Enter The Owner Name." ForeColor="#000333" Font-Bold="False" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="storeowner" runat="server"></asp:TextBox>
                </label>
            </div>
    <div>
        <label for="gender">Gender:<asp:RequiredFieldValidator ID="GenderValidator" runat="server" ControlToValidate="storeGender" ErrorMessage="Please Select The Gender." ForeColor="#000333" Font-Italic="true" Font-Names="arial" Font-Size="Small"></asp:RequiredFieldValidator>
            <br />
            <asp:DropDownList ID="storeGender" runat="server">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
                <asp:ListItem>OTHERS</asp:ListItem>

            </asp:DropDownList>
            <label for="storeAddress">Address:<asp:RequiredFieldValidator ID="storeAddressValidator" runat="server" ControlToValidate="storeAddress" ErrorMessage="Please Enter The Address." ForeColor="#000333" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="storeAddress" runat="server"></asp:TextBox>

            </label>

        </label></div>
    <div>
        <label for="storeMobile">Mobile Number:<asp:RequiredFieldValidator ID="storeMobileValidator" runat="server" ControlToValidate="storeMobile" ErrorMessage="Please Enter The Mobile Number." ForeColor="#000333" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>

        </label>
        <asp:TextBox ID="storeMobile" runat="server"></asp:TextBox>
        <label for="storeJD">Date of Joining:<asp:RequiredFieldValidator ID="storeJDValidator" runat="server" ControlToValidate="storeJD" ErrorMessage="Please Enter The Date Of Joining." ForeColor="#000333" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>

        </label>

    </div>
    <div>
        <asp:TextBox ID="storeJD" runat="server" TextMode="Date"></asp:TextBox>

    </div>
    
    <div>
        <label for="storeAadhar">Aadhar Card Number:<asp:RequiredFieldValidator ID="storeAadharValidator" runat="server" ControlToValidate="storeAadhar" ErrorMessage="Please Enter The Aadhar Number." ForeColor="#000333" Font-Italic="True" Font-Names="Arial" Font-Size="Small"></asp:RequiredFieldValidator>

        </label>
        <asp:TextBox ID="storeAadhar" runat="server" requiredpattern="^\d{12}$" MaxLength="12"></asp:TextBox>

    </div>
    <asp:Button ID="storebtn" runat="server" Text="SUBMIT" Height="48px" OnClick="storebtn_Click" Width="286px" />

</form>

</div>

    <footer>
        <div class="container">
            &copy; 2024 D'M Factory. All rights reserved.
           
        </div>
    </footer>
</body>
</html>