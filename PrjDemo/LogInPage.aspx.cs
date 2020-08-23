using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;


namespace PrjDemo
{
    public partial class LogInPage : System.Web.UI.Page
    {
        

       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        public static void Message(string sMessage)
        {
            string msg="<script language=\"javascript\">";
             msg += "alert(" +sMessage+")";
             msg += "</script>";
             System.Web.HttpContext.Current.Response.Write(msg);
        }

        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Jewellery Accessories;Integrated Security=True");

            con.Open();

        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM Registration WHERE UserName='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'");

        cmd.Connection = con;

        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());

        if (OBJ > 0)

        {
            Session["UserName"] = txtUserName.Text;
            Response.Redirect("Admin/AddProduct.aspx");

        }

        else

        {

            lblMessage.Text = "Invalid username or password";

            this.lblMessage.ForeColor = Color.Red;

        }

    }

        protected void lnkbtnForgotPwd0_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }

     }

  }

       
    

