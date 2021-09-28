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

public partial class UserLogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string owrid, onlineloginid, owrpwd, yes;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Enter Login ID";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            if (TextBox2.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Enter Login Password";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            else
            {
                SqlDataAdapter adp = new SqlDataAdapter("select * from Register", con);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    owrid = ds.Tables[0].Rows[i]["loginid"].ToString();
                    owrpwd = ds.Tables[0].Rows[i]["lpassword"].ToString();
                    if (TextBox1.Text == owrid && TextBox2.Text == owrpwd)
                    {
                        yes = "yes";
                    }
                }
                if (yes == "yes")
                {
                    Session["loginid"] = TextBox1.Text;

                    Response.Redirect("UserStart.aspx");
                }
                else
                {
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Enter ID/Password Correctly.";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
            }
        }
    }
}
