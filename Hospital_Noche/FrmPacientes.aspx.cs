using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ClsEntidades;
using ClsReglas;
using System.Windows.Forms;

namespace Hospital_intersofware
{
    public partial class FrmPacientes : System.Web.UI.Page
    {
        ClsEntPaciente oentpaciente = new ClsEntPaciente();
        ClsRegPaciente oregpaciente = new ClsRegPaciente();


        protected void BtnGuardarPaciente_Click(object sender, EventArgs e)
        {
            if (TxtNombrePaciente.Text.Trim()=="" && TxtDireccionPaciente.Text.Trim()=="" && TxtTelefonoPaciente.Text.Trim()=="")
            {
                LblMensaje.Text = "Debe ingresar todos los datos";
                TxtNombrePaciente.Focus();
            }
            else
            {
                oentpaciente.Id_paciente = TxtIdPaciente.Text;
                oentpaciente.Nom_paciente = TxtNombrePaciente.Text;
                oentpaciente.Dir_paciente = TxtDireccionPaciente.Text;
                oentpaciente.Tel_paciente = TxtTelefonoPaciente.Text;
                if (oregpaciente.guardar_paciente(oentpaciente))
                {
                    LblMensaje.Text = "Paciente guardado";
                    limpiar_campos();
                }
                else
                {
                    LblMensaje.Text = "Error guardando paciente";
                    TxtIdPaciente.Focus();
                }
            }
        }

        protected void BtnConsultarPaciente_Click(object sender, EventArgs e)
        {
            if (TxtIdPaciente.Text.Trim() == "")
            {
                LblMensaje.Text = "Ingresar la identificacion del paciente";
                TxtIdPaciente.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentpaciente.Id_paciente = TxtIdPaciente.Text;
                ds = oregpaciente.consultar_paciente(oentpaciente);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "Paciente no existe";
                    TxtIdPaciente.Focus();
                }
                else 
                {
                    TxtNombrePaciente.Text = ds.Tables[0].Rows[0]["nom_paciente"].ToString();
                    TxtDireccionPaciente.Text = ds.Tables[0].Rows[0]["dir_paciente"].ToString();
                    TxtTelefonoPaciente.Text = ds.Tables[0].Rows[0]["tel_paciente"].ToString();
                }
            }
        }

        protected void BtnAnularPaciente_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea anular este paciente?","Anular",MessageBoxButtons.YesNo,MessageBoxIcon.Question)==DialogResult.Yes)
            {
                oentpaciente.Id_paciente = TxtIdPaciente.Text;
                oentpaciente.Tipo = 0;
                if (oregpaciente.anular_paciente(oentpaciente))
                {
                    LblMensaje.Text = "Paciente anulado";
                    limpiar_campos();
                }
                else
                {
                    LblMensaje.Text = "Error anulando paciente";
                    TxtIdPaciente.Focus();
                }
            }
            
        }

        protected void BtnLimpiarCampos_Click(object sender, EventArgs e)
        {
            limpiar_campos();
        }

        public void limpiar_campos()
        {
            TxtIdPaciente.Text = "";
            TxtNombrePaciente.Text = "";
            TxtDireccionPaciente.Text = "";
            TxtTelefonoPaciente.Text = "";
            LblMensaje.Text = "";
            TxtIdPaciente.Focus();
        }

    }
}