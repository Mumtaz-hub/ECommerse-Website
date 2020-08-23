using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PrjDemo.DataLayer
{
    public class DataAccessLayer
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["Jewellery AccessoriesConnectionString"].ConnectionString.ToString();
            }
        }

        public static SqlParameter AddParameter(string parameterName,object value,SqlDbType Dbtype,int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = parameterName;
            param.Value = value.ToString();
            param.SqlDbType = Dbtype;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }


        public static DataTable ExecuteDTbyProcedure(string ProcedureName,SqlParameter[] Params)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = ProcedureName;
            cmd.Parameters.AddRange(Params);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dTable = new DataTable();

            try
            {
                sda.Fill(dTable);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                sda.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                conn.Dispose();
            }
            return dTable;
        }


    }
}