<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LoginWeb.Register" %>

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

    <title>Formulario de Registro</title>
</head>
<body class="background">
    <div class="register-form my-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form id="form_register" class="form-register py-2" runat="server">
                        <asp:Image CssClass="img-login my-3" ImageUrl="Resources/Images/register.png" runat="server" />
                        <asp:Label Id="alertError" CssClass="alert-error mt-2" runat="server"></asp:Label>
                        <asp:Label Id="alertOk" CssClass="alert-ok" runat="server"></asp:Label>
                        <div class="my-2">
                            <asp:Label Text="Usuario" runat="server" Font-Bold="true"></asp:Label>
                            <asp:TextBox Id="tbUsername" type="text" runat="server" CssClass="form-control" placeholder="Nombre de Usuario" />
                        </div>
                        <div class="my-4">
                            <asp:Label Text="Contraseña" runat="server" Font-Bold="true"></asp:Label>
                            <asp:TextBox Id="tbPassword" type="password" runat="server" CssClass="form-control" placeholder="Contraseña" />
                        </div>
                        <div class="my-4">
                            <asp:Label Text="Confirmar Contraseña" runat="server" Font-Bold="true"></asp:Label>
                            <asp:TextBox Id="tbConfirmPassword" type="password" runat="server" CssClass="form-control" placeholder="Repetir Contraseña" />
                        </div>
                        <asp:Button Id="btnRegister" CssClass="btn-login text-uppercase" runat="server" text="Registrar" OnClick="btnRegister_Click" />
                        <asp:Button Id="btnBack" CssClass="btn-back pb-3" Text="Volver al Inicio" runat="server" onClick="btnBack_Click" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
