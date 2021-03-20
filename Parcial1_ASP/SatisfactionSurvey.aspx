<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SatisfactionSurvey.aspx.cs" Inherits="Parcial1_ASP.SatisfactionSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Encuesta de Satisfacción</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous"/> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="col-lg-6">
                <br/>                 
                <br/>
                <h3 style="text-align:center;">Cuentanos tu Experiencia con nuestro Sitio WEB</h3>
                <hr style="border:1px;"/>          
                <p style="text-align:center;">Tu opinion es muy importante para nosotros</p>
                <br/>
                <h2>¿Qué tan satisfecho esta con nuestro Servicio, Donde 1 es Insatisfecho y 5 Satisfecho</h2>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="RadioButtonList1" runat="server" ErrorMessage="Debe seleccionar opcion" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />                
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderWidth="2" RepeatDirection="Horizontal" class="form-check-label" CellPadding="5" CellSpacing="5" Height="50px">
                        <asp:ListItem>1</asp:ListItem> 
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:RadioButtonList>               
                <br/>   
                <h2>¿Porqué califico de esta manera</h2>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_1a" runat="server" ErrorMessage="Debes digitar Comentario" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>                
                <br/>
                <div class="form-floating">
                    <asp:TextBox ID="tb_1a" runat="server" TextMode="MultiLine" class="form-control"></asp:TextBox>
                    <label for="floatingTextarea">Comments</label>
                </div>
                <br/><br/>
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
