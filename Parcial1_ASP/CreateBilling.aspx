<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateBilling.aspx.cs" Inherits="Parcial1_ASP.CreateBilling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Factura</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3>INFORMACION DE LA COMPAÑIA</h3>
                <br/>               
                <asp:Label ID="Label1" runat="server" Text="Nombre de la Compañia:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debe ingresar Nombre de la Compañia" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="tb_1a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1a" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label2" runat="server" Text="Correo Electronico"></asp:Label>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_1b" runat="server" ErrorMessage="Debe ingresar Correo Electronico" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat ="server" 
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="tb_1b"
                    ValidationExpression="\S+@\S+\.\S+\w+"
                    ForeColor="Red" >
                </asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1b" runat="server" TextMode="Email" class="form-control"></asp:TextBox> 
                <br/>               
                <asp:Label ID="Label7" runat="server" Text="Dirección:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_1c" ErrorMessage="Debe ingresar Dirección" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                                                      
                <asp:TextBox ID="tb_1c" runat="server" class="form-control"></asp:TextBox>                
                <br/>       
                <asp:Label ID="Label8" runat="server" Text="Ciudad:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_1d" ErrorMessage="Debe ingresar Ciudad" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tb_1d" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1d" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label3" runat="server" Text="Codigo Postal:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_1e" ErrorMessage="Debe ingresar Codigo Postal" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_1e" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){1,15}"> Digite solo numeros</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_1e" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label4" runat="server" Text="Pais:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Debe Seleccionar el Pais" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>Colombia</asp:ListItem>                   
                </asp:DropDownList>
                <br/><br/>
                <asp:Label ID="Label5" runat="server" Text="Provincia/Estado:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Debe Seleccionar Provincia/Estado" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">                     
                    <asp:ListItem>Amazonas</asp:ListItem> 
                    <asp:ListItem>Antioquía</asp:ListItem> 
                    <asp:ListItem>Arauca</asp:ListItem>
                    <asp:ListItem>Atlántico</asp:ListItem>
                </asp:DropDownList>
                <br/><br/>
                <br/><hr style="border:1px;"/>
                <h3>INFORMACION DE CLIENTE Y FACTURA</h3>
                 <br/>               
                <asp:Label ID="Label6" runat="server" Text="Nombre del Cliente:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="tb_2a" runat="server" ErrorMessage="Debe ingresar Nombre del Cliente" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tb_2a" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_2a" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label9" runat="server" Text="Correo Electronico"></asp:Label>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="tb_2b" runat="server" ErrorMessage="Debe ingresar Correo Electronico" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator id="RegularExpressionValidator5" runat ="server" 
                    ErrorMessage="Please give Email Address! "
                    ControlToValidate="tb_2b"
                    ValidationExpression="\S+@\S+\.\S+\w+"
                    ForeColor="Red" >
                </asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_2b" runat="server" TextMode="Email" class="form-control"></asp:TextBox> 
                <br/>               
                <asp:Label ID="Label10" runat="server" Text="Dirección:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_2c" ErrorMessage="Debe ingresar Dirección" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                                                      
                <asp:TextBox ID="tb_2c" runat="server" class="form-control"></asp:TextBox>                
                <br/>       
                <asp:Label ID="Label11" runat="server" Text="Ciudad:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="tb_2d" ErrorMessage="Debe ingresar Ciudad" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tb_2d" ErrorMessage="*" Display="Dynamic" ValidationExpression="([\w]|[\s]){1,25}"> Digite solo letras</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_2d" runat="server" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label12" runat="server" Text="Codigo Postal:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="tb_2e" ErrorMessage="Debe ingresar Codigo Postal" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="tb_2e" ErrorMessage="*" Display="Dynamic" ValidationExpression="([0-9]){1,15}"> Digite solo numeros</asp:RegularExpressionValidator>
                <asp:TextBox ID="tb_2e" runat="server" Type="Number" class="form-control"></asp:TextBox>                
                <br/>
                <asp:Label ID="Label13" runat="server" Text="Pais:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Debe Seleccionar el Pais" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True">
                    <asp:ListItem>Colombia</asp:ListItem>                   
                </asp:DropDownList>
                <br/><br/>
                <asp:Label ID="Label14" runat="server" Text="Provincia/Estado:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Debe Seleccionar Provincia/Estado" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True">                     
                    <asp:ListItem>Amazonas</asp:ListItem> 
                    <asp:ListItem>Antioquía</asp:ListItem> 
                    <asp:ListItem>Arauca</asp:ListItem>
                    <asp:ListItem>Atlántico</asp:ListItem>
                </asp:DropDownList>
                <br/><br/>
                <asp:Label ID="Label15" runat="server" Text="Fecha de Factura:"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="tb_2f" ErrorMessage="Debe Ingresar Fecha" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                        
                <br/>
                <asp:TextBox ID="tb_2f" runat="server" TextMode="Date"></asp:TextBox>

                <br/><br/>
                <br/><hr style="border:1px;"/>
                <h3>ARTICULOS A FACTURAR</h3>
                



                <br/>                
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" /> 
                <asp:Button ID="Button1" class="btn btn-success marging" runat="server" OnClick="Button_Click" Text="Crear" />
                <br/><br/>
                <asp:Label ID="Label26" runat="server" Text=""></asp:Label>  
                <br/>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx">regresar</asp:HyperLink>
                <br/><br/>
            </div>
        </div>
    </form>
</body>
</html>
