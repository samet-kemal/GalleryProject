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
    public partial class NewRegistry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    string sqlQuery = "Insert Into tbl_CarInfo(ModelAd,MarkaAd,Yil,Vites,Plaka) values(@ModelAd,@MarkaAd,@Yil,@Vites,@Plaka)";
                    SqlCommand cmd = new SqlCommand(sqlQuery, con);

                    SqlDataReader rdr;



                    try
                    {
                        cmd.Parameters.AddWithValue("@ModelAd", txtModelAdiYeni.Text);
                        cmd.Parameters.AddWithValue("@MarkaAd", TxtMarkaAdiYeni.Text);
                        cmd.Parameters.AddWithValue("@Yil", TxtYilYeni.Text);
                        cmd.Parameters.AddWithValue("@Vites", TxtYilYeni.Text);
                        cmd.Parameters.AddWithValue("@Plaka", txtPlakaYeni.Text);
              
                        con.Open();
                        rdr = cmd.ExecuteReader();
                        //Repeater1.DataSource = rdr;
                        //Repeater1.DataBind();

                        rdr.Close();
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Veri Yazma işleminde hata meydana geldi");
                    }
                    finally
                    {
                        
                        lblOnay.Text = "KayıtTamamlandı Anasayfaya Yönlendiriliyorsunuz.";
                        lblOnay.Visible = true;
                        con.Close();
                        this.Page.ClientScript.RegisterStartupScript(this.GetType(), "Message", "Kayıt İşleminiz Başarılı!", true);
                        System.Threading.Thread.Sleep(5000);
                        Response.Redirect("~/HomePage.aspx");
                    }
                    

                }

            }
        }
    }
}