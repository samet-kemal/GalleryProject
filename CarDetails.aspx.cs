using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GalleryProject
{
    public partial class CarDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBound();
            }
        }
        public void DataBound()
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                string sqlQuery = "Select * from tbl_CarDetails where CarId=@CarId";
                SqlCommand cmd = new SqlCommand(sqlQuery, con);
                cmd.Parameters.AddWithValue("@CarId", Convert.ToInt32(Request.QueryString["Id"]));
                SqlDataReader rdr;



                try
                {


                    con.Open();
                    rdr = cmd.ExecuteReader();
                    RptDetail.DataSource = rdr;
                    RptDetail.DataBind();

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

        protected void RptDetail_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataBound();
        }
    }
}