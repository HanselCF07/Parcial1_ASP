<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoveryPassword.aspx.cs" Inherits="Parcial1_ASP.RecoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Recuperar Contraseña</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>RECUPERAR CONTRASEÑA</h3>
                <br/>             
                <asp:Label ID="Label1" runat="server" Text="Digite su correo:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar su Correo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat ="server" 
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="tb_1a"
                    ValidationExpression="\S+@\S+\.\S+\w+"
                    ForeColor="Red" >
                </asp:RegularExpressionValidator>                
                <asp:TextBox ID="tb_1a" runat="server" class="form-control"></asp:TextBox>               
                <br/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />                                
                <asp:Button ID="Button1" class="btn btn-danger marging" runat="server" OnClick="Button_Click" Text="Recuperar" />
                <br/><br/>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>  
                <br/>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Index.aspx">regresar</asp:HyperLink>
                <br/><br/> 
            </div>
        </div>
    </form>
</body>
</html>
