<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profesionales.aspx.cs" Inherits="Vistas.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style17 {
            width: 320px;
        }
        .auto-style18 {
            width: 320px;
            height: 45px;
        }
        .auto-style19 {
            width: 320px;
            height: 25px;
        }
        .auto-style20 {
            width: 320px;
            height: 29px;
        }
        .auto-style21 {
            width: 320px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Reportes.aspx">Reports</asp:HyperLink>
                </td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
                <td class="auto-style18"></td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Agregar Profesional.aspx">Add doctor</asp:HyperLink>
                </td>
                <td class="auto-style19">
                    </td>
                <td class="auto-style19"></td>
                <td class="auto-style19"></td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lblMsj2" runat="server" Text="Data management:"></asp:Label>
                </td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
            </tr>
            </table>
        <div>
            <asp:Label ID="lblMsj" runat="server" Text="Enter doctor ID :"></asp:Label>
&nbsp;<asp:TextBox ID="txtBuscarDNI_Pr" runat="server"></asp:TextBox>
            &nbsp;&nbsp;<asp:Button ID="btnBuscar_Pr" runat="server" Text="Search" OnClick="btnBuscar_Pr_Click" ValidationGroup="validarDNIprof" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtBuscarDNI_Pr" ForeColor="Red" ValidationExpression="^\d+$">Only numbers.</asp:RegularExpressionValidator>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuscarDNI_Pr" ValidationGroup="validarDNIprof">Type an ID, please.</asp:RequiredFieldValidator>
                <br />
            <br />
            <asp:Label ID="lblMsj3" runat="server" Text="Doctor list:"></asp:Label>
            <br />
        </div>
                    <asp:GridView ID="grdProfesionales" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" OnRowDeleting="grdProfesionales_RowDeleting" OnRowCancelingEdit="grdProfesionales_RowCancelingEdit" OnRowEditing="grdProfesionales_RowEditing" OnRowUpdating="grdProfesionales_RowUpdating" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="grdProfesionales_SelectedIndexChanged">
                        <Columns>
                            <asp:TemplateField HeaderText="Medical License ID">
                                <EditItemTemplate>
                                    <asp:Label ID="lbl_matricula" runat="server" Text='<%# Bind("Matricula_Pr") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_nro_matricula" runat="server" Text='<%# Bind("Matricula_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ID">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_dni" runat="server" Text='<%# Bind("DNI_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_DNI" runat="server" Text='<%# Bind("DNI_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_nombre" runat="server" Text='<%# Bind("Nombre_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_nombre" runat="server" Text='<%# Bind("Nombre_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Surname">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_apellido" runat="server" Text='<%# Bind("Apellido_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_Apellido" runat="server" Text='<%# Bind("Apellido_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_email" runat="server" Text='<%# Bind("Email_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_Email" runat="server" Text='<%# Bind("Email_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Phone number">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_telefono" runat="server" Text='<%# Bind("Telefono_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_pr_Telefono" runat="server" Text='<%# Bind("Telefono_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_estado" runat="server" Text='<%# Bind("Estado_Pr") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lbl_estado" runat="server" Text='<%# Bind("Estado_Pr") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
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
        <br />
    </form>
</body>
</html>
