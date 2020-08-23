﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using PrjDemo.BusinessLayer;
using PrjDemo.DataLayer;

namespace PrjDemo.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            grdCategory.Visible = false;
            dt = PrjDemo.BusinessLayer.JewelleryAccessories.GetCategories();
            grdCategory.DataSource = dt;
            grdCategory.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PrjDemo.BusinessLayer.JewelleryAccessories k = new PrjDemo.BusinessLayer.JewelleryAccessories
            {
                CategoryName = txtCategoryName.Text
            };
            k.AddNewCategory();

            dt = PrjDemo.BusinessLayer.JewelleryAccessories.GetCategories();
            txtCategoryName.Text = string.Empty;
            //da=DataLayer.DataAccessLayer.ExecuteDTbyProcedure(SP_AddNewCategory,"Select * from Category");
            grdCategory.DataSource = dt;
            grdCategory.DataBind();
            grdCategory.Visible = true;
            //GridView1.DataMember = lblCategoryName.Text;

            //Response.Redirect("AddProduct.aspx");

        }

       
    }
}