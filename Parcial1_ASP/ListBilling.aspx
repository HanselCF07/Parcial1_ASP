<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListBilling.aspx.cs" Inherits="Parcial1_ASP.ListBilling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Listar Facturas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/><br/>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                <br/><br/>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">regresar</asp:HyperLink>
                <br/><br/> 
            </div>
        </div>
    </form>
</body>
</html>
