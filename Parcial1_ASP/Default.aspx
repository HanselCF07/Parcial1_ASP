<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parcial1_ASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

      <div class="jumbotron">

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CreateBilling.aspx">Crear Factura</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ListBilling.aspx">Listar Facturas</asp:HyperLink>
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/SatisfactionSurvey.aspx">Encuesta de Satisfacción</asp:HyperLink>

    </div>

</asp:Content>
