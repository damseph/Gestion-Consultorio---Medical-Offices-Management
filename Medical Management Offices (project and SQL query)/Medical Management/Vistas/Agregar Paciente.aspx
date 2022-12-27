<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar Paciente.aspx.cs" Inherits="Vistas.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 158px;
        }
        .auto-style3 {
            height: 30px;
            width: 158px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 158px;
        }
        .auto-style6 {
            width: 158px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            width: 158px;
            height: 24px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            height: 30px;
        }
        .auto-style11 {
            width: 158px;
            height: 32px;
        }
        .auto-style12 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Logged User: 
                    <asp:Label ID="lblUsuario" runat="server" Font-Bold="True"></asp:Label>
                        <br />
                        Type of User:
                        <asp:Label ID="lblTipoUsuario" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" EnableViewState="False" NavigateUrl="~/Pacientes.aspx">Return to patients</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">ADD PATIENT</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                <td class="auto-style2">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
                    <td>
                    <asp:TextBox ID="txtNombre_Pac" runat="server" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre_Pac">Type name.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">Surname:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; </td>
                    <td>
                    <asp:TextBox ID="txtApellido_Pac" runat="server" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido_Pac">Type surname.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                    <td>
                    <asp:TextBox ID="txtDNI_Pac" runat="server" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDNI_Pac">Type ID.</asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="revTxtDni" runat="server" ControlToValidate="txtDNI_Pac" Font-Bold="False" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="validacionPaso1">Numbers only.</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">Medical company:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; </td>
                    <td>
                    <asp:TextBox ID="txtObraSocial_Pac" runat="server" MaxLength="15"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtObraSocial_Pac">Type Medical Company</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style3">Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                    <td class="auto-style10">
                    <asp:TextBox ID="txtDireccion_Pac" runat="server" MaxLength="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDireccion_Pac">Type Address</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style5">Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style4">
                    <asp:TextBox ID="txtEmail_Pac" runat="server" MaxLength="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail_Pac">Type email.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td class="auto-style2">Phone number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                    <td>
                    <asp:TextBox ID="txtTelefono_Pac" runat="server" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTelefono_Pac">Type phone number.</asp:RequiredFieldValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="revTxtDni0" runat="server" ControlToValidate="txtTelefono_Pac" Font-Bold="False" ForeColor="Red" ValidationExpression="^\d+$" ValidationGroup="validacionPaso1">Numbers only.</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        </td>
                    <td class="auto-style12">
                    <asp:Button ID="btnAgregar_Pac" runat="server" Height="27px" Text="Add" OnClick="btnAgregar_Pac_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
