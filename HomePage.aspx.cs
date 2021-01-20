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
    public partial class HomePage1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarInformation();
            }
        }

        protected void Repeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.ToString() == "Duzenle")
            {
                var IdItem = e.CommandArgument;

                Response.Redirect("~/UpdateForm.aspx?Id=" + IdItem.ToString());
            }
            else
            {
                var IdItem = e.CommandArgument;
                Response.Redirect("~/DeleteForm.aspx?Id=" + IdItem.ToString());
            }
        }
        private void CarInformation()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                string sqlQuery = "Select * from tbl_CarInfo ";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);

                SqlDataReader rdr;



                try
                {

                    
                    con.Open();
                    rdr = cmd.ExecuteReader();
                    Repeater1.DataSource = rdr;
                    Repeater1.DataBind();

                    rdr.Close();
                }
                catch
                {
                    Response.Write("Veri okuma işleminde hata meydana geldi");
                }
                finally
                {
                    con.Close();
                }


            }
        }

        protected void BtnKayit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NewRegistry.aspx");
        }        
    
    }


}