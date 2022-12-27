<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reportes.aspx.cs" Inherits="Vistas.Reportes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style21 {
            width: 320px;
            height: 23px;
        }
        .auto-style18 {
            width: 320px;
            height: 45px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style17 {
            width: 320px;
        }
        .auto-style20 {
            width: 320px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <table class="auto-style1">
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
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Turnos.aspx">Appointments</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Profesionales.aspx">Doctors</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Pacientes.aspx">Patients</asp:HyperLink>
                </td>
                <td class="auto-style21">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/HistoriasClinicas.aspx">Medical Records</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    &nbsp;</td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            </table>
                <br />
            <br />
                GET REPORTS<br />
            <br />
                Select criteria for reports:&nbsp;
            <asp:DropDownList ID="ddlCriterio" runat="server">
                <asp:ListItem Value="0">--Select criteria--</asp:ListItem>
                <asp:ListItem Value="1">Successful appointments</asp:ListItem>
                <asp:ListItem Value="2">Canceled Appointments</asp:ListItem>
                <asp:ListItem Value="3">Medical Field</asp:ListItem>
                <asp:ListItem Value="4">Patients by Medical Company</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
                <asp:Button ID="btnSeleccionarCrit" runat="server" OnClick="btnSeleccionarCrit_Click" Text="Select" />
                <br />
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblReporte5" runat="server" Text="From"></asp:Label>
            &nbsp;&nbsp;<asp:Label ID="lbl_fecha_inicial" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_fecha_inicial" runat="server" Height="26px" OnClick="btn_fecha_inicial_Click" Text="Select Date" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblReporte6" runat="server" Text="Up to"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lbl_fecha_final" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_fecha_final" runat="server" OnClick="btn_fecha_final_Click" Text="Select Date" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
            <br />
                <asp:Label ID="lblDato" runat="server" Text="Select type of data:"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlDatos" runat="server" OnSelectedIndexChanged="ddlDatos_SelectedIndexChanged">
                </asp:DropDownList>
                <br />
                <br />
                <br />
            <br />
            <asp:Button ID="btnReporte1" runat="server" Text="Generate report" OnClick="btnReporte1_Click" />
            <br />
            <br />
            <asp:Label ID="lblReporte" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
