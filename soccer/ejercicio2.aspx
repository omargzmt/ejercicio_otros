<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Sitio.Master" CodeBehind="ejercicio2.aspx.vb" Inherits="soccer.ejercicio2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder_Contenido" runat="server">
    <h4>Ejercicio 2
        <div class="table-responsive">
            <asp:GridView ID="gv" runat="server" DataSourceID="SQLDS" Width="100%" CssClass="table table-hover">
            </asp:GridView>
        </div>        
        <asp:SqlDataSource ID="SQLDS" runat="server" ConnectionString="<%$ ConnectionStrings:pickwin_serverCS %>" ProviderName="<%$ ConnectionStrings:pickwin_serverCS.ProviderName %>" SelectCommand="sp_resultados" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</h4>

</asp:Content>
