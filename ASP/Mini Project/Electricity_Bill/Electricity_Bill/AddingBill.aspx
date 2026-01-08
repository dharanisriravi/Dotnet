<%@ Page Language="C#" AutoEventWireup="true"

    CodeBehind="AddingBill.aspx.cs"

    Inherits="Electricity_Bill.AddingBill" %>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Add Electricity Bill</title>
 
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


.card {
    width: 720px; 
    margin: 60px auto;
    background: #FFFFFF;
    padding: 34px 40px;
    border-radius: 8px;
    border-top: 5px solid #C4A484;
    box-shadow: 0 14px 32px rgba(58,46,42,0.18);
}


.card h3 {
    text-align: left;
    font-size: 18px;
    margin-bottom: 28px;
    color: #3A2E2A;
    font-weight: 700;
    border-bottom: 1px solid #EADBC8;
    padding-bottom: 10px;
}


input[type=text] {
    width: 100%;
    padding: 13px 14px;
    margin-bottom: 18px;
    border-radius: 6px;
    border: 1px solid #C4A484;
    background: #FBF7F2;
    font-size: 14px;
    font-weight: 500;
    color: #3A2E2A;
    transition: 0.2s ease;
}

input::placeholder {
    color: #9A8C82;
    font-size: 13px;
}

input:focus {
    outline: none;
    background: #FFFFFF;
    border-color: #8B5E3C;
    box-shadow: inset 0 0 0 1px #8B5E3C;
}


input[type=submit],
button {
    width: 200px;
    padding: 12px;
    border-radius: 6px;
    border: none;
    background: linear-gradient(135deg, #8B5E3C, #C4A484);
    color: #FFFFFF;
    font-size: 13px;
    font-weight: 700;
    letter-spacing: 0.6px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover,
button:hover {
    box-shadow: inset 0 -2px 0 rgba(0,0,0,0.2);
}

.message {
    clear: both;
    margin-top: 20px;
    font-size: 13px;
    font-weight: 600;
    color: #065F46;
}

.amount {
    margin-top: 6px;
    font-size: 18px;
    font-weight: 800;
    color: #8B5E3C;
}

</style>
 
</head>
 
<body>
<form id="form1" runat="server">
 
<div class="header">
    <center>
<h2>Electricity Bill Calculator</h2>
        </center>
<div>
<a href="BillGeneration.aspx">Show Bills</a>
<a href="LogoutPage.aspx">Logout</a>
</div>
</div>
 
<div class="card">
<h3>Add Electricity Bill</h3>
 
    <asp:TextBox ID="txtConsumerNumber" runat="server"

        Placeholder="Enter EB Number  "></asp:TextBox>
 
    <asp:TextBox ID="txtConsumerName" runat="server"

        Placeholder="Enter Name"></asp:TextBox>
 
    <asp:TextBox ID="txtUnitsConsumed" runat="server"

        Placeholder="Enter Units"></asp:TextBox>
 
    <asp:Button ID="btnAddBill" runat="server"

        Text="Total Amount" OnClick="btnAddBill_Click" />
 
    <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
<asp:Label ID="lblBillAmount" runat="server" CssClass="amount"></asp:Label>
</div>
 
</form>
</body>
</html>

 