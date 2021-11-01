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
    public partial class FrmMedico : System.Web.UI.Page
    {

        ClsEntMedico oentmedico = new ClsEntMedico();
        ClsRegMedico oregmedico = new ClsRegMedico();

        protected void BtnConsultarMedico_Click(object sender, EventArgs e)
        {
            if (TxtCodigoMedico.Text.Trim()=="")
            {
                LblMensaje.Text = "Ingrese el codigo del medico";
                TxtCodigoMedico.Focus();
            }
            else
            {
                DataSet ds = new DataSet();
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                ds = oregmedico.consultar_medico(oentmedico);
                if (ds.Tables[0].Rows.Count == 0)
                {
                    LblMensaje.Text = "Medico no existe";
                    TxtCodigoMedico.Focus();
                }
                else
                {
                    TxtNombreMedico.Text = ds.Tables[0].Rows[0]["nom_medico"].ToString();
                    TxtEspecilidadMedico.Text = ds.Tables[0].Rows[0]["especialidad"].ToString();
                }
            }
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (TxtNombreMedico.Text.Trim()=="" && TxtEspecilidadMedico.Text.Trim()=="")
            {
                LblMensaje.Text = "Debe ingresar todos los datos";
                TxtNombreMedico.Focus();
            } else 
            {
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                oentmedico.Nom_medico = TxtNombreMedico.Text;
                oentmedico.Especialidad = TxtEspecilidadMedico.Text;
                if (oregmedico.guardar_medico(oentmedico))
                {
                    LblMensaje.Text = "Medico guardado";
                    limpiar_campos();
                }
                else
                {
                    LblMensaje.Text = "Error guardando medico";
                    TxtCodigoMedico.Focus();
                }
            }
        }

        protected void BtnAnular_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Desea anular el medico?","Anular",MessageBoxButtons.YesNo,MessageBoxIcon.Question)==DialogResult.Yes)
            {
                oentmedico.Id_medico = TxtCodigoMedico.Text;
                oentmedico.Tipo = 0;
                if (oregmedico.anular_medico(oentmedico))
                {
                    LblMensaje.Text = "Medico anulado";
                    limpiar_campos();
                }
                else
                {
                    LblMensaje.Text = "Error anulando medico";
                    TxtCodigoMedico.Focus();
                }
            }
            
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar_campos();
        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {

        }

        protected void BtnGeneral_Click(object sender, EventArgs e)
        {

        }

        public void limpiar_campos()
        {
            TxtCodigoMedico.Text = "";
            TxtNombreMedico.Text = "";
            TxtEspecilidadMedico.Text = "";
            LblMensaje.Text = "";
        }
    }
}