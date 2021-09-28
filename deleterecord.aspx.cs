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

public partial class deleterecord : System.Web.UI.Page
{
    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);
    string MatchSts = "Matches";

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("select * from PatientRecord where MatchSts='" + MatchSts + "'", con1);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();

            con1.Open();
            SqlCommand cmd1 = new SqlCommand("delete from PatientRecord where MatchSts='" + MatchSts + "'", con1);
            cmd1.ExecuteNonQuery();
            con1.Close();
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Indexing6.aspx");
    }
}
