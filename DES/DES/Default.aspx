<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DES.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DES encryption demo site</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-image:url(images/encryption.jpg);">
            <br /><br />
            <center><h1 style="color:white;">DES ENCRYPTION DEMO</h1></center>
            <asp:Label ID="lbplain" runat="server" Text="Please enter plain text here:" ForeColor="White"></asp:Label>
            <asp:TextBox ID="tbPlainText" runat="server"></asp:TextBox>
            <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" OnClick="btnEncrypt_Click" />
            <asp:TextBox ID="tbEncryptedOutput" runat="server"></asp:TextBox>
            <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" OnClick="btnDecrypt_Click" />
            <asp:TextBox ID="tbDecryptedOutput" runat="server"></asp:TextBox>
            <asp:Button ID="btnclear" runat="server" Text="Clear All" OnClick="btnclear_Click" />
            <br /><br /><br />
        </div>
    </form>
</body>
</html>
