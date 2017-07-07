<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Sitio.Master" CodeBehind="ejercicio1.aspx.vb" Inherits="soccer.ejercicio1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolder_Contenido" runat="server">

    <h4>Ejercicio 1</h4>

    <div class="table-responsive grid">
        <asp:GridView ID="gv_torneos" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered grid" OnSelectedIndexChanged="gv_torneos_SelectedIndexChanged" DataKeyNames="gid" Height="500px">
            <Columns>
                <asp:BoundField DataField="gid" Visible="False" />

                <asp:TemplateField HeaderText="Ver partidos" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="linkbtn_partidos" runat="server" CausesValidation="False" CommandName="Select" Text="Ver"></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Center" Width="70px" />
                </asp:TemplateField>

                <asp:BoundField DataField="name" HeaderText="Torneo">
                    <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>

            </Columns>
        </asp:GridView>        
    </div>

    <h3>Partidos</h3>

    <div class="grid">
        <asp:GridView ID="gv_partidos" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-condensed" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField DataField="formatted_date" HeaderText="Fecha" >
                <HeaderStyle Width="150px" />
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="status" HeaderText="Estatus" >                                
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="localteam" HeaderText="Equipo local" >
                <HeaderStyle Width="150px" />
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="visitorteam" HeaderText="Equipo visitante" >
                <HeaderStyle Width="150px" Wrap="True" />
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="goals" >
                <HeaderStyle Width="30px" />
                <ItemStyle Width="30px" />
                </asp:BoundField>
                <asp:BoundField DataField="goals1" >                
                <HeaderStyle Width="30px" />
                <ItemStyle Width="30px" />
                </asp:BoundField>                                                
            </Columns>
        </asp:GridView>
    </div>
        

</asp:Content>
