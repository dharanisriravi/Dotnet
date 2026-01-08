<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question2.aspx.cs" Inherits="Validations.Question2" %>
 
<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
    <center>
<head runat="server">
<title>Product List</title>
</head>
<body>
<form id="form1" runat="server">
<div>
<h2>Gadgets</h2>
 
            <asp:DropDownList ID="ddlProd" runat="server" AutoPostBack="true" 
                OnSelectedIndexChanged="ddlChg">
<asp:ListItem Text=" Product List" Value="0" />
<asp:ListItem Text="Ear pods" Value="1" />
<asp:ListItem Text="Smart Phone" Value="2" />
<asp:ListItem Text="Smart Watch" Value="3" />
</asp:DropDownList>
 
            <br /><br />
 
            <asp:Image ID="imgProd" runat="server" Height="200px" Width="200px" />
 
            <br /><br />
 
            <asp:Button ID="btnShowPrice" runat="server" Text="Show Price" OnClick="btnPr" />
 
            <br /><br />
 
            <asp:Label ID="lblPrice" runat="server" Font-Bold="true" />
</div>
</form>
</body>
        </center>
</html>