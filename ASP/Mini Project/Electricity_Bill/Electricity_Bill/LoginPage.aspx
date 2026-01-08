<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LoginPage.aspx.cs"
    Inherits="Electricity_Bill.LoginPage" %>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin Login</title>
 
<style>
 
body {
    font-family: 'Inter', 'Segoe UI', sans-serif;
    margin: 0;
    min-height: 100vh;
    background: linear-gradient(135deg,
        #F5EFE6,
        #EADBC8
    );
}

.login-card {
    width: 420px;
    margin: 120px auto;
    background: #FFFFFF;
    padding: 38px 42px;
    border-radius: 8px; 
    box-shadow: 0 12px 30px rgba(58,46,42,0.18);
    border-left: 6px solid #8B5E3C;
}


.login-card h2 {
    text-align: left; 
    margin-bottom: 26px;
    color: #3A2E2A;
    font-size: 22px;
    font-weight: 700;
    letter-spacing: 0.4px;
}

input[type=text],
input[type=password] {
    width: 100%;
    padding: 14px 14px;
    margin-bottom: 18px;
    border-radius: 6px;
    border: 1px solid #C4A484;
    background: #FBF7F2;
    font-size: 14px;
    font-weight: 500;
    color: #3A2E2A;
    box-shadow: inset 0 2px 4px rgba(0,0,0,0.06);
    transition: 0.2s ease;
}

input::placeholder {
    font-weight: 500;
    color: #9A8C82;
}

input:focus {
    outline: none;
    background: #FFFFFF;
    border-color: #8B5E3C;
    box-shadow:
        inset 0 0 0 1px #8B5E3C,
        0 2px 6px rgba(139,94,60,0.25);
}

input[type=submit],
button {
    margin-top: 10px;
    width: 100%;
    padding: 13px;
    border-radius: 6px;
    border: none;
    background: linear-gradient(135deg,
        #8B5E3C,
        #C4A484
    );
    color: #FFFFFF;
    font-size: 14px;
    font-weight: 700;
    letter-spacing: 0.6px;
    text-transform: uppercase;
    cursor: pointer;
    transition: 0.2s ease;
}

input[type=submit]:hover,
button:hover {
    transform: none; 
    box-shadow: inset 0 -2px 0 rgba(0,0,0,0.15);
}


.error {
    display: block;
    text-align: left;
    font-size: 13px;
    margin-bottom: 10px;
    font-weight: 600;
    color: #9B1C1C;
}

</style>
 
 
</head>
 
<body>
<form runat="server">
 
<div class="login-card">
    <center>
<h1> Login </h1>
        </center>
 
    <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
 
    <asp:TextBox ID="txtUsername" runat="server" Placeholder="Enter Username"></asp:TextBox>
 
    <asp:TextBox ID="txtPassword" runat="server"
        TextMode="Password" Placeholder="Enter Password"></asp:TextBox>
 
    <asp:Button ID="btnLogin" runat="server"
        Text="Login" OnClick="btnLogin_Click" />
</div>
 
</form>
</body>
</html>