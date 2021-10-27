
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmCitas.aspx.cs" Inherits="Hospital_Noche.frmCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 180px;
        }
        .auto-style5 {
            width: 209px;
        }
        .auto-style6 {
            color: #CC3300;
        }
        .auto-style7 {
            width: 180px;
            height: 30px;
        }
        .auto-style8 {
            width: 209px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 414px;
        }
        .auto-style11 {
            width: 414px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong><span class="auto-style1">
            <br />
            ASIGNACION DE CITAS</span></strong><br />
            <br />
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Codigo Cita</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCodCita" runat="server" Width="300px" MaxLength="10"></asp:TextBox>
                </td>               <td>
                    
                    <asp:Button ID="btnConsultarCita" runat="server" OnClick="btnConsultarCita_Click" Text="Consultar Cita" style="height: 26px" />
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td><strong>
                    <asp:Label ID="lblCita" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style4">Fecha</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtFecha" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Hora</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtHora" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Codigo Paciente</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCodPaciente" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnConsPaciente" runat="server" Text="Buscar Paciente" Width="129px" OnClick="btnConsPaciente_Click" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblPaciente" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Codigo Medico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCodMedico" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnBuscarMedico" runat="server" Text="Buscar Medico" Width="131px" OnClick="btnBuscarMedico_Click" Enabled="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5"><strong>
                    <asp:Label ID="lblMedico" runat="server" CssClass="auto-style6" Text="Label"></asp:Label>
                    </strong></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Vlr Consulta</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtVlrConsulta" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Diagnostico</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtDiagnostico" runat="server" Width="300px" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Label ID="LblMensaje" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="btnGuardarCita" runat="server" Text="Guardar Cita" Width="139px" OnClick="btnGuardarCita_Click" Enabled="False" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnAnular" runat="server" OnClick="BtnAnular_Click" Text="Anular" Width="166px" Enabled="False" />
                </td>
                <td>
                    <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" Width="140px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <table class="auto-style3">
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:HyperLink ID="HplMedicos" runat="server" NavigateUrl="~/FrmMedico.aspx">Gestión de personal Médico</asp:HyperLink>
                </td>
                <td class="auto-style2">
                    <asp:HyperLink ID="HplPacientes" runat="server" NavigateUrl="~/FrmPacientes.aspx">Gestión de Pacientes</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
