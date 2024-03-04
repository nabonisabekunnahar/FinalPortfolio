<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AgainPortfolio.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
    body{

        background-color:#8BDCE7;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
           <div>
              
          <table style="margin:auto;border:5px solid white">
               <center>
            <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
       <td colspan="2" style="text-align:center;">
            <asp:CheckBox ID="chkRememberMe" runat="server" Text="Remember Me" AutoPostBack="True"></asp:CheckBox>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label></td>
           </tr> </center>
        </table>
      
</div>
    </form>
</body>
</html>
