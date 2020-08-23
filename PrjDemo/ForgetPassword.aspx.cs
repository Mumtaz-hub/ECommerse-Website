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
using System.Net;
using System.Net.Mail;

namespace PrjDemo
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Jewellery Accessories;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT UserName,Password FROM Registration Where EmailId= '" + txtfrgtEmailId.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                MailMessage email = new MailMessage();
                email.From = new MailAddress(txtfrgtEmailId.Text); //Enter sender email address
                email.To.Add(txtfrgtEmailId.Text); //Destination Recipient e-mail address.
                email.Subject = "Your Forrget Password:";//Subject for your request
                email.Body = "Hi, Your UserName is: " + ds.Tables[0].Rows[0]["UserName"] + "  Your Password is: " + ds.Tables[0].Rows[0]["Password"] + "";
                email.IsBodyHtml = true;
                //SMTP SERVER DETAILS
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                smtpc.Port = 587;
                smtpc.UseDefaultCredentials = false;
                smtpc.EnableSsl = true;
                Label1.Text = "iihtdotnet123@gmail.com"; //<--Enter your gmail id here
                Label2.Text = "iiht@2017";//<--Enter gmail password here
                //Label3.Text = "msdotnet website"; //Subject for your website
                //Label4.Text = "webcome to http://msdotnet.co.in. please share this website to your friends"; //Message body
                smtpc.Credentials = new NetworkCredential(Label1.Text, Label2.Text);
                smtpc.Send(email);
                Label1.Text = "Your password has been sent to your email address";
            }
            else
            {
                Label2.Text = "This email address is not exist in our Database try again";

            }
        }
    }
}