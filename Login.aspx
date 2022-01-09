<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginWeb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="Resources/Images/icon.png" />

    <!-- Styles CSS -->
    <link rel="stylesheet" href="Resources/CSS/Styles.css" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="Resources/CSS/bootstrap.min.css" />

    <title>Formulario de Inicio de Sesión</title>
</head>
<body class="background">
    <div class="login-form my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form id="form_login" class="form-login" runat="server">
                        <asp:Image CssClass="img-login my-3" ImageUrl="Resources/Images/login.png" runat="server" />
                        <asp:Label Id="alertError" CssClass="alert-error" runat="server"></asp:Label>
                        <div class="my-2">
                            <asp:Label Text="Usuario" runat="server" Font-Bold="true"></asp:Label>
                            <asp:TextBox Id="tbUsername" type="text" runat="server" CssClass="form-control" placeholder="Nombre de Usuario" />
                        </div>
                        <div class="my-4">
                            <asp:Label Text="Contraseña" runat="server" Font-Bold="true"></asp:Label>
                            <asp:TextBox Id="tbPassword" type="password" runat="server" CssClass="form-control" placeholder="Contraseña" />
                        </div>
                        <asp:Button Id="btnLogin" CssClass="btn-login" runat="server" text="Iniciar Sesión" OnClick="btnLogin_Click" />
                        <asp:Button Id="btnRegisterForm" CssClass="btn-register pb-3" Text="¿Aún no estás registrado?" runat="server" OnClick="btnRegisterForm_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
