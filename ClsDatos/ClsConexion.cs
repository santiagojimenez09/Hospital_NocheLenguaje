using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;

namespace ClsDatos
{
    public class ClsConexion
    {
        public SqlConnection conectar(string Cnx)
        {

            try
            {
                SqlConnection oconectar = new SqlConnection(ConfigurationSettings.AppSettings[Cnx].ToString());
                oconectar.Open();
                return oconectar;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            
            }

        }
    }
}
