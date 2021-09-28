using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class ClientLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string owrid, onlineloginid, owrpwd, yes;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text.ToUpper().Trim() == "CLIENT" && TextBox2.Text.ToUpper().Trim() == "CLIENT")
        {
            Response.Redirect("ClientHome.aspx");
        }
        else
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Enter Client ID/Password Correctly.";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
    }
}
