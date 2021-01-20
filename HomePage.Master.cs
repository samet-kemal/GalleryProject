using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GalleryProject
{
    public partial class HomePage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (IsPostBack)
            {
                Response.Redirect("~/HomePage.aspx");
            }
        }
    }
}