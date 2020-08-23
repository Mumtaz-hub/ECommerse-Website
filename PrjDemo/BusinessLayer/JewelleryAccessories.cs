using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PrjDemo.BusinessLayer
{
    public class JewelleryAccessories
    {
        public string CategoryName;
        public int CategoryId;

        public string Name;
        public string ImageUrl;
        public string Price;
        public string Description;


        public void AddNewCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccessLayer.AddParameter("@CategoryName",CategoryName,System.Data.SqlDbType.VarChar,200);
            DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_AddNewCategory", parameters);

            //for (int i = 0; i < gridviewRows.Count; i++)
            //{
            //    StrQuery = "INSERT INTO Category VALUES(@CategoryName)";
            //    con.Parameters.Add(dataGridView1.Rows[i].Cells[0].Value.ToString());
            //    comm.Parameters.Add(dataGridView1.Rows[i].Cells[1].Value.ToString());
            //    comm.Parameters.Add(dataGridView1.Rows[i].Cells[2].Value.ToString());
            //}
       
        }

        public void DeleteCategory()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccessLayer.AddParameter("@CategoryId", CategoryId, System.Data.SqlDbType.Int, 200);
            DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_DeleteCategory", parameters);
            GetCategories();
        }

        public static DataTable GetCategories()
        {
            SqlParameter[] parameters = new SqlParameter[0];
            DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_GetAllCategories", parameters);
           // DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_DeleteCategory",parameters);
            return dt;
        }

        public void AddNewProduct()
        {
            SqlParameter[] parameters=new SqlParameter[5];
            parameters[0] = DataLayer.DataAccessLayer.AddParameter("@Name",Name,System.Data.SqlDbType.VarChar,300);
            parameters[1] = DataLayer.DataAccessLayer.AddParameter("@Price",Price,System.Data.SqlDbType.Int,100);
            parameters[2] = DataLayer.DataAccessLayer.AddParameter("@ImageUrl",ImageUrl,System.Data.SqlDbType.VarChar,500);
            parameters[3] = DataLayer.DataAccessLayer.AddParameter("@Description",Description,System.Data.SqlDbType.VarChar,5000);
            parameters[4] = DataLayer.DataAccessLayer.AddParameter("@CategoryId",CategoryId,System.Data.SqlDbType.Int,100);

            DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_AddNewProduct", parameters);
        }

        public void GetProduct()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataLayer.DataAccessLayer.AddParameter("@CategoryId",CategoryId,System.Data.SqlDbType.Int,100);
            DataTable dt = DataLayer.DataAccessLayer.ExecuteDTbyProcedure("SP_GetAllProducts", parameters);
        }
    }
}