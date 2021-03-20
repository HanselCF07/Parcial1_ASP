<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Parcial1_ASP.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Cuenta</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>Crear Cuenta</h3>
                <br/>    
                <asp:Label ID="Label3" runat="server" Text="Correo"></asp:Label>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar su Correo" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat ="server" 
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="tb_1a"
                    ValidationExpression="\S+@\S+\.\S+\w+"
                    ForeColor="Red" >
                </asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1a" runat="server" TextMode="Email" class="form-control"></asp:TextBox> 
                <br/>
                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ControlToValidate="tb_1b" ErrorMessage="Debe ingresar su Nombre" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="tb_1b" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,15}"> Digite solo letras</asp:RegularExpressionValidator>

                <asp:TextBox ID="tb_1b" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Apellido:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_1c" ErrorMessage="Debe ingresar su Apellido" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_1c" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>               
                <asp:TextBox ID="tb_1c" runat="server" class="form-control"></asp:TextBox>
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tb_1d" runat="server" ErrorMessage="Debe ingresar su Contraseña" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1d" runat="server" TextMode="Password" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:Label ID="Label5" runat="server" Text="Confirmar Contraseña"></asp:Label> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tb_1e" runat="server" ErrorMessage="Debe ingresar su Contraseña" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                     
                <asp:TextBox ID="tb_1e" runat="server" TextMode="Password" class="form-control"></asp:TextBox>                                         
                <br/>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />   
                <asp:Button ID="Button1" class="btn btn-success marging" runat="server" OnClick="Button_Click" Text="Registrar" />
                <br/><br/>
                <asp:Label ID="Label6" runat="server" Text=""></asp:Label>  
                <br/>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Index.aspx">regresar</asp:HyperLink>
                <br/><br/> 
            </div>
        </div>
    </form>
</body>
</html>
