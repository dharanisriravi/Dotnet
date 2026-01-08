<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="BillGeneration.aspx.cs"
    Inherits="Electricity_Bill.BillGeneration" %>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>View Electricity Bills</title>
 
<style>
body {
    font-family: 'Inter', 'Segoe UI', sans-serif;
    margin: 0;
    min-height: 100vh;
    background: linear-gradient(135deg, #F5EFE6, #EADBC8);
}


.header {
    background: #8B5E3C;
    color: #FFFFFF;
    padding: 14px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0 6px 18px rgba(0,0,0,0.2);
}

.header h2 {
    margin: 0;
    font-size: 20px;
    font-weight: 700;
    letter-spacing: 0.6px;
}

.header a {
    color: #FFFFFF;
    text-decoration: none;
    margin-left: 24px;
    font-size: 14px;
    font-weight: 600;
}

.header a:hover {
    text-decoration: underline;
}

.container {
    width: 92%;
    max-width: 1100px;
    margin: 50px auto;
    background: #FFFFFF;
    padding: 30px 34px;
    border-radius: 8px;
    box-shadow: 0 14px 32px rgba(58,46,42,0.18);
    border-top: 5px solid #C4A484;
}

.container h3 {
    text-align: left;
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 20px;
    color: #3A2E2A;
}


.input-row {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 18px;
}


input[type=text] {
    flex: 0 0 220px;
    padding: 11px 12px;
    border-radius: 6px;
    border: 1px solid #C4A484;
    background: #FBF7F2;
    font-size: 13px;
    font-weight: 500;
    color: #3A2E2A;
}

input::placeholder {
    color: #9A8C82;
}

input:focus {
    outline: none;
    background: #FFFFFF;
    border-color: #8B5E3C;
}


input[type=submit],
button {
    padding: 11px 18px;
    border-radius: 6px;
    border: none;
    background: linear-gradient(135deg, #8B5E3C, #C4A484);
    color: #FFFFFF;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 0.5px;
    cursor: pointer;
}

input[type=submit]:hover,
button:hover {
    box-shadow: inset 0 -2px 0 rgba(0,0,0,0.2);
}


.error {
    margin: 10px 0 16px;
    font-size: 13px;
    font-weight: 600;
    color: #9B1C1C;
}


.grid {
    width: 100%;
    border-collapse: collapse;
    font-size: 13px;
    table-layout: fixed;
}

.grid th {
    background: #8B5E3C;
    color: #FFFFFF;
    padding: 12px 10px;
    font-weight: 700;
    border: 1px solid #C4A484;
}

.grid td {
    padding: 10px 8px;
    text-align: center;
    border: 1px solid #EADBC8;
    color: #3A2E2A;
    word-break: break-word;
}


.grid tr:nth-child(even) {
    background: #FBF7F2;
}

.grid tr:hover {
    background: #EFE3D3;
}

 
</style>
 
</head>
 
<body>
<form id="form1" runat="server">
 
<div class="header">
    <center>
<h2>Electricity Bill List</h2>
        </center>
<div>
<a href="AddingBill.aspx">Calculate Bill</a>
<a href="LogoutPage.aspx">Logout</a>
</div>
</div>
 
<div class="container">
    <center>
<h3>Show Electricity Bills</h3>
        </center>
 
    <div class="input-row">
<asp:TextBox ID="txtCount" runat="server"
            Placeholder="Enter no of Bills"></asp:TextBox>
 
        <asp:Button ID="btnShow" runat="server"
            Text="Show Bills" OnClick="btnShow_Click" />
</div>
 
    <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
 
    <asp:GridView ID="gvBills" runat="server"
        CssClass="grid" AutoGenerateColumns="true"
        BorderWidth="0">
</asp:GridView>
</div>
 
</form>
</body>
</html>