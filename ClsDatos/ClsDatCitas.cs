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
    public class ClsDatCitas
    {
        ClsConexion objconexion = new ClsConexion();
        SqlCommand cmd = new SqlCommand();

        public bool guardar_cita(ClsEntCitas oentcitas) {

            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_guardar_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
                cmd.Parameters.Add("@pfecha", oentcitas.Fecha);
                cmd.Parameters.Add("@pidpaciente", oentcitas.Id_paciente);
                cmd.Parameters.Add("@pidpaciente", oentcitas.Id_medico);
                cmd.Parameters.Add("@pidpaciente", oentcitas.Valor);
                cmd.Parameters.Add("@pidpaciente", oentcitas.Observaciones);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }



        }


        public bool anular_cita(ClsEntCitas oentcitas)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_anular_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
                cmd.Parameters.Add("@ptipo", oentcitas.Tipo);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consultar_cita(ClsEntCitas oentcitas)
        {
            try
            {
                cmd.Connection = objconexion.conectar("dbhospital");
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "sp_consultar_cita";
                cmd.Parameters.Add("@pcod_cita", oentcitas.Cod_cita);
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
