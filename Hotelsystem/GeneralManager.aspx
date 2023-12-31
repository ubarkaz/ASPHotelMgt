﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GeneralManager.aspx.cs" Inherits="Hotelsystem.GeneralManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

<style>
    .collapsible {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #777;
        color: white;
        cursor: pointer;
        padding:18px;
        width: 225px;
        text-align: center;
        outline: none;
        font-size: 22px;
  
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}

</style>

</head>
<body>
    <form id="form1" runat="server">

        <asp:Button ID="Button3" runat="server" Text="Log out" OnClick="Button3_Click" /><br />

        <button type="button" class="collapsible">&nbsp;New Employee</button>
        <asp:TextBox ID="TextBox15search"  Width="320px" Height="36px"  border="solid" runat="server"></asp:TextBox> <asp:Button ID="ButtonSearch" Width="150px" Height="36px"  border="solid" runat="server" Text="Button" OnClick="ButtonSearch_Click" />
        <br />
        <div class="content">
          
            <asp:Label ID="Label1" runat="server" Font-Size="20px" Text="EmployeeID"></asp:Label><br />
            <asp:TextBox ID="TextBox1" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />
            
            
            <asp:Label ID="Label2" runat="server" Font-Size="20px" Text="FullName"></asp:Label><br />
            <asp:TextBox ID="TextBox2" Width="320px" Height="36px"  border="solid" runat="server"></asp:TextBox><br />
            
            <asp:Label ID="Label3" runat="server" Font-Size="20px" Text="EmailAddress"></asp:Label><br />
            <asp:TextBox ID="TextBox3" TextMode="Email" Width="320px"  border="solid" Height="36px"  runat="server"></asp:TextBox><br />
            
            <asp:Label ID="Label4" runat="server" Font-Size="20px" Text="Contact"></asp:Label><br />
            <asp:TextBox ID="TextBox4" Width="320px" TextMode="Phone"  border="solid" Height="36px"  runat="server"></asp:TextBox><br />

            
            <asp:Label ID="Label5" runat="server" Font-Size="20px" Text="Address"></asp:Label><br />
            <asp:TextBox ID="TextBox5" Width="320px" Height="36px"  border="solid" runat="server"></asp:TextBox><br />

            
            <asp:Label ID="Label6" runat="server" Font-Size="20px" Text="EmergencyContact"></asp:Label><br />
            <asp:TextBox ID="TextBox6" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />

            
            <asp:Label ID="Label7" runat="server" Font-Size="20px" Text="RoleID"></asp:Label><br />
            <asp:TextBox ID="TextBox7" Width="320px" Height="36px"  border="solid" runat="server"></asp:TextBox><br />

            
            <asp:Label ID="Label8" runat="server" Font-Size="20px" Text="Salary"></asp:Label><br />
            <asp:TextBox ID="TextBox8" Width="320px" Height="36px"  border="solid" runat="server"></asp:TextBox><br />

            
            <asp:Label ID="Label9" runat="server" Font-Size="20px" Text="StartDate"></asp:Label><br />
            <asp:TextBox ID="TextBox9" Width="320px" Height="36px"  border="solid"  TextMode="Date" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click"  border="solid" Width="162px" Height="46px" Font-Size="22px"/> <br /> <br />

        </div>

    <div style="margin-top:15px; margin-bottom:15px">

        <asp:GridView ID="GridView1" runat="server" DataKeyNames="EmployeeID" OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting" EmptyDataText="No records has been added." AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>

    </div>

       <button type="button" class="collapsible">&nbsp;New Supplier</button>
        <div class="content">
           
            <asp:Label ID="Label10" runat="server" Font-Size="20px" Text="SupplierID"></asp:Label><br />
            <asp:TextBox ID="TextBox10" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />
            
            <asp:Label ID="Label11" runat="server" Font-Size="20px" Text="Name"></asp:Label><br />
            <asp:TextBox ID="TextBox11" Width="320px" Height="36px"   border="solid"  runat="server"></asp:TextBox><br />

            <asp:Label ID="Label12" runat="server" Font-Size="20px" Text="Email Address"></asp:Label><br />
            <asp:TextBox ID="TextBox12" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />
            
            <asp:Label ID="Label13" runat="server" Font-Size="20px" Text="Phone Number"></asp:Label><br />
            <asp:TextBox ID="TextBox13" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />

            <asp:Label ID="Label14" runat="server" Font-Size="20px" Text="Address"></asp:Label><br />
            <asp:TextBox ID="TextBox14" Width="320px" Height="36px"  border="solid"  runat="server"></asp:TextBox><br />


            <asp:Label ID="Label16" runat="server" Font-Size="20px" Text="Product"></asp:Label><br />
            <asp:DropDownList ID="DropDownList1" class="dropdown" runat="server" Width="320px" Height="36px"  border="solid" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <asp:ListItem Value="Chairs &Tables"></asp:ListItem>
                        <asp:ListItem Value="Soda"></asp:ListItem>
                        <asp:ListItem Value="Champagne"></asp:ListItem>
                        <asp:ListItem Value="Rice"></asp:ListItem>
                       
                        </asp:DropDownList><br />
    
            
            <asp:Label ID="Label15" runat="server" Font-Size="20px" Text="Product Category"></asp:Label><br />
            <asp:DropDownList ID="DropDownList2" class="dropdown" runat="server" Width="320px" Height="36px"  border="solid" tabindex="10" data-settings='{"wrapperClass":"flat"}'>
                        <asp:ListItem Value="Furniture"></asp:ListItem>
                        <asp:ListItem Value="Foods"></asp:ListItem>
                        <asp:ListItem Value="Whines & Spirits"></asp:ListItem>
                        <asp:ListItem Value="Soft drinks"></asp:ListItem>
                       
                        </asp:DropDownList><br />

            <asp:Button ID="Button2" runat="server" Text="Save" OnClick="Button2_Click" /> <br />
              

        </div>  

         <div style="margin-top:15px">

             <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <EditRowStyle BackColor="#7C6F57" />
                 <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                 <RowStyle BackColor="#E3EAEB" />
                 <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                 <SortedAscendingCellStyle BackColor="#F8FAFA" />
                 <SortedAscendingHeaderStyle BackColor="#246B61" />
                 <SortedDescendingCellStyle BackColor="#D4DFE1" />
                 <SortedDescendingHeaderStyle BackColor="#15524A" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-1N11UBMJ\SQLEXPRESS;Initial Catalog=HotelBookingDatabase;Integrated Security=True;" SelectCommand="SELECT * FROM SupplierDetails">  </asp:SqlDataSource>
             </div>

        <script>
            var coll = document.getElementsByClassName("collapsible");
            var i;

            for (i = 0; i < coll.length; i++) {
                coll[i].addEventListener("click", function () {
                    this.classList.toggle("active");
                    var content = this.nextElementSibling;
                    if (content.style.display === "block") {
                        content.style.display = "none";
                    } else {
                        content.style.display = "block";
                    }
                });
            }
</script>
      
    </form>
</body>
</html>
