using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Drawing;

namespace PrjDemo
{
    public partial class Registration : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
             SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Jewellery Accessories;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select*from Registration where UserName='" + txtUserName.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            lblMessage.Text = "User Name is Already Exist";
            this.lblMessage.ForeColor = Color.Red;
        }
        else
            {
            lblMessage.Text = "UserName is Available";
            this.lblMessage.ForeColor = Color.Red;
        }
        con.Close();

        }

        protected void btnCreateAcc1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Jewellery Accessories;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Registration values(@UserName,@Password,@EmailId)", con);
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            //cmd.Parameters.AddWithValue("c", txtconfrmPwd.Text);
            cmd.Parameters.AddWithValue("@EmailId", txtEmailId0.Text);
            cmd.ExecuteNonQuery();
            Session["UserName"] = txtUserName.Text;
            Response.Redirect("LogInPage.aspx");
            con.Close();

        }
        
    }
}