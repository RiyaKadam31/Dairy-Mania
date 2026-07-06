<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCustomer.aspx.cs" Inherits="DairyMania.Admin.AdminBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
           <title>D'M Factory</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>
    <link href="../Css/admincustomer.css" rel="stylesheet" />
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
           <li><a href="AdminBooking.aspx">Booking Management</a></li>
           <li><a href="../Master/login.aspx">LogOut</a></li>
         </ul>
            </nav>
        </div>
    </header>
             <form id="form1" runat="server">
        <div style="height: 350px">
            <asp:Label ID="Usercount" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="Gold" Text="Total User Of D'M :"></asp:Label>
            <asp:Label ID="count" runat="server" Font-Size="X-Large" ForeColor="Gold"></asp:Label>
            <br />
            <asp:Button ID="show" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Solid" Font-Names="Arial" Font-Size="Medium" ForeColor="White" Height="40px" Text="SHOW" Width="100px" OnClick="Button1_Click" />
            <br />
            <asp:GridView ID="userdata" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="200px" style="margin-right: 0px" Width="580px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ULID" 
                OnRowCancelingEdit="userdata_RowCancelingEdit" 
                OnRowDeleting="userdata_RowDeleting" 
                OnRowEditing="userdata_RowEditing" 
                OnRowUpdating="userdata_RowUpdating"  >
                <Columns>
                    <asp:BoundField DataField="ULID" HeaderText="ULID" InsertVisible="False" ReadOnly="True" SortExpression="ULID" />
                   
                    <asp:TemplateField HeaderText="ULUserName">
                        <ItemTemplate>
                            <%# Eval("ULUserName") %>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("ULUserName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="ULEmail">
                       <ItemTemplate>
                            <%# Eval("ULEmail") %>
                       </ItemTemplate>
                       <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("ULEmail") %>'></asp:TextBox>
                       </EditItemTemplate>
                     </asp:TemplateField>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" />
                </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DM %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [UserLog]">
            </asp:SqlDataSource>
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