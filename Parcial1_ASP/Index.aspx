<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Parcial1_ASP.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container login-container">          
            <div class="col-md-4 col-md-offset-4">
                <br/>                 
                <br/>
                <fieldset>
                    <legend>Iniciar Sesión</legend>                        
                    <asp:Label ID="Label1" runat="server" Text="Correo"></asp:Label>  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar su Correo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat ="server" 
                        ErrorMessage="Please give Email Address! "
                        ControlToValidate="tb_1a"
                        ValidationExpression="\S+@\S+\.\S+\w+"
                        ForeColor="Red" >
                    </asp:RegularExpressionValidator>

                    <asp:TextBox ID="tb_1a" runat="server" TextMode="Email" class="form-control"></asp:TextBox>                    
                    <br/> 
                    <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_1b" runat="server" ErrorMessage="Debe ingresar su Contraseña" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                    <asp:TextBox ID="tb_1b" runat="server" TextMode="Password" class="form-control"></asp:TextBox>                     
                    <br/>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />            
                    <asp:Button ID="Button1" class="btn btn-success marging" runat="server" OnClick="Button_Click" Text="Login" />
                    <br/><br/>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/RecoveryPassword.aspx">¿Olvidaste tu contraseña?</asp:HyperLink>
                    <br/>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateAccount.aspx">registrarse</asp:HyperLink>
                    <br/><br/>                    
                </fieldset>  
            </div>
        </div>
    </form>
</body>
</html>
