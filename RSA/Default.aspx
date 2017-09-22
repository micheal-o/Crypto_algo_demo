<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><img src="images/RSA-Encryption.jpg.png" /></center><br />
            <asp:Label ID="lberror" runat="server" Text="" ForeColor="Red"></asp:Label><br /><br />
            <asp:Button ID="btnGeneratePnQ" runat="server" Text="Generate p and q" OnClick="btnGeneratePnQ_Click" />
            <asp:Label ID="lbp" runat="server" Text="p:"></asp:Label><asp:TextBox ID="txtP" runat="server"></asp:TextBox>
            <asp:Label ID="lbq" runat="server" Text="q:"></asp:Label><asp:TextBox ID="txtQ" runat="server"></asp:TextBox><br /><br /><br />
            <asp:Button ID="btnCalNPhiE" runat="server" Text="Calculate n, phi and e" OnClick="btnCalNPhiE_Click" />
            <asp:Label ID="lbn" runat="server" Text="n = p x q:"></asp:Label><asp:TextBox ID="txtN" runat="server"></asp:TextBox>
            <asp:Label ID="lbphi" runat="server" Text="PHI = (p-1) x (q-1):"></asp:Label><asp:TextBox ID="txtPHI" runat="server"></asp:TextBox>
            <asp:Label ID="lbe" runat="server" Text="Encryption key e: gcd(e , PHI)=1;"></asp:Label><asp:TextBox ID="txtE" runat="server"></asp:TextBox><br /><br /><br />
            <asp:Button ID="btnCalcD" runat="server" Text="Calculate d" OnClick="btnCalcD_Click" />
            <asp:Label ID="lbd" runat="server" Text="Decryption key d: [e x d = 1 mod (PHI) ]"></asp:Label><asp:TextBox ID="txtD" runat="server"></asp:TextBox><br /><br /><br />
            <asp:Label ID="lbmessage" runat="server" Text="Message"></asp:Label><asp:TextBox ID="txtM" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="valtxtM" runat="server" ErrorMessage="Message should only contain numbers (no alphabets)!" ControlToValidate="txtM" ValidationExpression="[0123456789]{1,10}" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:Button ID="btnEncrypt" runat="server" Text="Encrypt" OnClick="btnEncrypt_Click" /><asp:TextBox ID="txtEncrypted" runat="server"></asp:TextBox>
            <asp:Button ID="btnDecrypt" runat="server" Text="Decrypt" OnClick="btnDecrypt_Click" /><asp:TextBox ID="txtDecrypted" runat="server"></asp:TextBox><br /><br /><br />
            <asp:Button ID="btnclear" runat="server" Text="clear all" OnClick="btnclear_Click" />
        </div>
    </form>
</body>
</html>
