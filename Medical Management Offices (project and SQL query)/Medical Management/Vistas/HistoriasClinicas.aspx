<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HistoriasClinicas.aspx.cs" Inherits="Vistas.HistoriasClinicas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style3 {
            height: 23px;
            width: 320px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 320px;
        }
        .auto-style5 {
            width: 100%;
            height: 165px;
        }
        .auto-style17 {
            width: 320px;
        }
        .auto-style20 {
            width: 320px;
            height: 29px;
        }
        .auto-style21 {
            width: 320px;
            height: 23px;
        }
        .auto-style18 {
            width: 320px;
            height: 45px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
            <table class="auto-style5">
                <tr>
                <td class="auto-style17">
                    Logged user: 
                    <asp:Label ID="lblUsuario" runat="server" Font-Bold="True"></asp:Label>
                    <br />
                    Type of user:
                    <asp:Label ID="lblTipoUsuario" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style17">
                    &nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style20">
                    </td>
                <td class="auto-style20">
                    </td>
                <td class="auto-style20"></td>
                <td class="auto-style20"></td>
                </tr>
                <tr>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Turnos.aspx">Appointments</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Profesionales.aspx">Doctors</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Pacientes.aspx">Patients</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/HistoriasClinicas.aspx">Medical Records</asp:HyperLink>
                </td>
                </tr>
                <tr>
                <td class="auto-style18">
                    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Reportes.aspx">Reports</asp:HyperLink>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Agregar Historia-Detalle.aspx">Add medical record/entry</asp:HyperLink>
                    </td>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
            </table>
                    </td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="grdHistoriasClinicas" runat="server" AutoGenerateColumns="False" OnRowCommand="grdHistoriasClinicas_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="grdHistoriasClinicas_SelectedIndexChanged"  >
            <Columns>
                <asp:TemplateField HeaderText="Medical Record Nº">
                    <ItemTemplate>
                        <asp:Label ID="lbl_hc_Legajo" runat="server" Text='<%# Bind("Legajo_HC") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Patient number">
                    <ItemTemplate>
                        <asp:Label ID="lbl_hc_CodigoPaciente" runat="server" Text='<%# Bind("CodPaciente_HC") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Nombre" runat="server" Text='<%# Bind("Nombre_Pac") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Surname">
                    <ItemTemplate>
                        <asp:Label ID="lbl_Apellido" runat="server" Text='<%# Bind("Apellido_Pac") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
              
                <asp:ButtonField ButtonType="Button" CommandName="eventoDetalle" Text="Record entries" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="grdDetallesHistoriaClinica" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Field">
                    <ItemTemplate>
                        <asp:Label ID="lbl_DHC_Especialidad" runat="server" Text='<%# Bind("Descripcion_Esp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reason">
                    <ItemTemplate>
                        <asp:Label ID="lbl_DHC_Motivo" runat="server" Text='<%# Bind("MotivoConsulta_DHC") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Diagnosis">
                    <ItemTemplate>
                        <asp:Label ID="lbl_DHC_Diagnostico" runat="server" Text='<%# Bind("Diagnostico_DHC") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="lbl_DHC_Fecha" runat="server" Text='<%# Bind("FechaConsulta_DHC", "{0:dd-M-yyyy}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl_detalles" runat="server"></asp:Label>
    </form>
</body>
</html>
