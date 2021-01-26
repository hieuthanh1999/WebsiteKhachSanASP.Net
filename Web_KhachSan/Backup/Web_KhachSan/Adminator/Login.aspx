<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_KhachSan.Adminator.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link href="assets/css/login.css" rel="stylesheet" />
</head>
<body style="background-image: url('assets/img/anhnen.jpg')">
    <form id="form1" runat="server">
    <div>
        <div class="form-lo">
            <div class="heading">
                Login
            </div>
            <div class="container">
                <div class="EM">
                    <label for="email">
                        Accout</label>
                    <input type="text" id="account" placeholder="Accout" runat="server" class="" />
                </div>
                <div class="PW">
                    <label for="pass">
                        Password</label>
                    <input id="pass" type="password" placeholder="Password" runat="server" />
                </div>
                <div class="remember">
                    <input type="checkbox" id="chkRemember" name="remem" runat="server" />
                    <label for="chkRemember">
                        Remember me</label>
                </div>
                <div class="login">
                    <asp:Button runat="server" ID="btnlogin" type="submit" CssClass="button" Text="Login"
                        OnClick="btnlogin_Click" />
                </div>
                <asp:Label ID="msg" runat="server"></asp:Label>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
