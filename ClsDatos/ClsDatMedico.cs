using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using ClsEntidades;

namespace ClsDatos
{
    public class ClsDatMedico
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand cmd = new SqlCommand();

        public bool guardar_medico(ClsEntMedico oentmedico)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_guardar_medico";
                cmd.Parameters.Add("@pid_medico", oentmedico.Id_medico);
                cmd.Parameters.Add("@pnom_medico", oentmedico.Nom_medico);
                cmd.Parameters.Add("@pespecialidad", oentmedico.Especialidad);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool anular_medico(ClsEntMedico oentmedico)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_anular_medico";
                cmd.Parameters.Add("@pid_medico", oentmedico.Id_medico);
                cmd.Parameters.Add("@ptipo", oentmedico.Tipo);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consultar_medico(ClsEntMedico oentmedico)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_consultar_medico";
                cmd.Parameters.Add("@pid_medico", oentmedico.Id_medico);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}
