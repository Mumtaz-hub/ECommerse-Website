using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using PrjDemo.BusinessLayer;

namespace PrjDemo.Admin
{
    public partial class AddEditCategories : System.Web.UI.Page
    {
        //SqlDataAdapter da;
       // SqlDataSource ds;
        DataTable dt=new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                grdCategory.Visible = false;
                dt = PrjDemo.BusinessLayer.JewelleryAccessories.GetCategories();
                grdCategory.DataSource = dt;
                grdCategory.DataBind();
            }
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PrjDemo.BusinessLayer.JewelleryAccessories k = new PrjDemo.BusinessLayer.JewelleryAccessories
            {
                CategoryName = txtCategoryName.Text
            };
            k.AddNewCategory();

            dt = PrjDemo.BusinessLayer.JewelleryAccessories.GetCategories();
            txtCategoryName.Text=string.Empty;
            //da=DataLayer.DataAccessLayer.ExecuteDTbyProcedure(SP_AddNewCategory,"Select * from Category");
            grdCategory.DataSource = dt;
            grdCategory.DataBind();
            grdCategory.Visible = true;
           //GridView1.DataMember = lblCategoryName.Text;
      
            //Response.Redirect("AddProduct.aspx");

        }

        protected void grdCategory_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            //if (e.Row.RowType == DataControlRowType.DataRow && grdCategory.EditIndex != e.Row.RowIndex)
            //{
            //    (e.Row.Cells[0].Controls[1] as Button).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
                
            //}
        }

        protected void grdCategory_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

           
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
           
                Response.Write("return confirm('Do you want to delete this row?');");

                /*string constr = ConfigurationManager.ConnectionStrings["Jewellery AccessoriesConnectionString"].ConnectionString.ToString();
                SqlConnection cn = new SqlConnection(constr);
                string query;
                SqlCommand com;
                int id = int.Parse(grdCategory.DataKeys[grdCategory.SelectedIndex].Value.ToString());
                HiddenField1.Value = "Delete";
                query = "CategoryAction";
                com = new SqlCommand(query, cn);
                cn.Open();
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Action", HiddenField1.Value).ToString();
                com.Parameters.AddWithValue("CategoryName", SqlDbType.VarChar).Value = txtCategoryName;
                com.ExecuteNonQuery();
                cn.Close();
                BusinessLayer.JewelleryAccessories.GetCategories();
            */
        }



       


      

       

       
    }
}