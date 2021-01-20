using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GalleryProject
{
    public partial class UpdateForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    string sqlQuery = ("select ModelAd,MarkaAd,Yil,Vites,Plaka from tbl_CarInfo where Id=@IdItem");
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);
                    cmd.Parameters.AddWithValue("@IdItem", Convert.ToInt32(Request.QueryString["Id"]));

                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read())
                    {
                        txtModelAdi.Text = rdr[0].ToString();
                        TxtMarkaAdi.Text = rdr[1].ToString();
                        TxtYil.Text = rdr[2].ToString();
                        txtVites.Text = rdr[3].ToString();
                        txtPlaka.Text = rdr[4].ToString();

                    }
                    rdr.Close();
                    con.Close();
                }
            }
        }

        protected void BtnUpdate_Click1(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                con.Open();
                var deneme = Request.QueryString["Id"];
                string sqlQuery = ("update tbl_CarInfo Set ModelAd=@ModelAd,MarkaAd=@MarkaAd,Yil=@Yil,Vites=@Vites,Plaka=@Plaka  where Id=@IdItem");
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                cmd.Parameters.AddWithValue("@IdItem", Convert.ToInt32(Request.QueryString["Id"]));
                cmd.Parameters.AddWithValue("@ModelAd", txtModelAdi.Text);
                cmd.Parameters.AddWithValue("@MarkaAd", TxtMarkaAdi.Text);
                cmd.Parameters.AddWithValue("@Yil", TxtYil.Text);
                cmd.Parameters.AddWithValue("@Vites", txtVites.Text);
                cmd.Parameters.AddWithValue("@Plaka", txtPlaka.Text);
                cmd.ExecuteNonQuery();


                con.Close();
                Response.Redirect("~/HomePage.aspx");

            }
        }
    }
}