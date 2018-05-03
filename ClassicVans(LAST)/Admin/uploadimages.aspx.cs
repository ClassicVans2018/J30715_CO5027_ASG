using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClassicVans_LAST_.Admin
{
    public partial class uploadimages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];
            string filename = productId + ".jpg";

            CrntImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["id"];

            string filename = productId + ".jpg";
            string saveLocation = Server.MapPath("~/ProductImages/" + filename);

            FileUpload.SaveAs(saveLocation);
        }
    }
}