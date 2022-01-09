<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="LoginWeb.Index" %>

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

    <title>Inicio</title>
</head>
<body>
    <div class="container text-center">
        <div class="row">
            <asp:Label Id="messageWelcome" CssClass="h2 mt-5" Text="" runat="server"></asp:Label>
        </div>
        <form id="form_logout" runat="server">
            <asp:Button Id="btnLogout" Text="Cerrar Sesión" CssClass="btn-logout mt-2" runat="server" OnClick="btnLogout_Click"/>
        </form>
    </div>
</body>
</html>
