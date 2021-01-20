using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace GalleryProject
{
    public partial class DeleteForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LabelText_Change();
            }
        }

        protected void BtnTamamenSil_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string sqlQuery = ("Delete  from tbl_CarInfo where Id=@IdItem");
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                cmd.Parameters.AddWithValue("@IdItem", Convert.ToInt32(Request.QueryString["Id"]));
                //cmd.Parameters.AddWithValue("@IdItem", Convert.ToInt32(Request.QueryString["Id"]));
                SqlDataReader rdr;
                cmd.ExecuteNonQuery();
                rdr = cmd.ExecuteReader();
                con.Close();

            }
            Response.Redirect("~/HomePage.aspx");

        }

        protected void BtnVazgec_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }
        private void LabelText_Change()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                string sqlQuery2 = ("Select MarkaAd,ModelAd,Plaka from tbl_CarInfo where Id=@IdItem");
                SqlCommand cmd2 = new SqlCommand(sqlQuery2, con);
                cmd2.Parameters.AddWithValue("@IdItem", Convert.ToInt32(Request.QueryString["Id"]));
                SqlDataReader rdr2;
                cmd2.ExecuteNonQuery();
                rdr2 = cmd2.ExecuteReader();
                while (rdr2.Read())
                {
                    lblModel.Text = (string)rdr2[1];
                    lblMarka.Text = (string)rdr2[0];
                    lblPlaka.Text = (string)rdr2[2];


                }
                con.Close();
            }
        }
    }
}