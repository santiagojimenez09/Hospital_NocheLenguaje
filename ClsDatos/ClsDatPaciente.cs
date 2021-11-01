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
    public class ClsDatPaciente
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand cmd = new SqlCommand();

        public bool guardar_paciente(ClsEntPaciente oentpaciente)
        {
            try { 
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_guardar_paciente";
                cmd.Parameters.Add("@pid_paciente",oentpaciente.Id_paciente);
                cmd.Parameters.Add("@pnom_paciente",oentpaciente.Nom_paciente);
                cmd.Parameters.Add("@pdir_paciente",oentpaciente.Dir_paciente);
                cmd.Parameters.Add("@ptel_paciente",oentpaciente.Tel_paciente);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch(Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool anular_paciente(ClsEntPaciente oentpaciente)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_anular_paciente";
                cmd.Parameters.Add("@pid_paciente", oentpaciente.Id_paciente);
                cmd.Parameters.Add("@ptipo", oentpaciente.Tipo); 
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consultar_paciente(ClsEntPaciente oentpaciente)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_consultar_paciente";
                cmd.Parameters.Add("@pid_paciente", oentpaciente.Id_paciente);
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
