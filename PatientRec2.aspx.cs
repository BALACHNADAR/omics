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

public partial class PatientRec2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);
    string indexid;

    protected void Page_Load(object sender, EventArgs e)
    {
        indexid = Request.Params["ID"];

        SqlDataAdapter adp = new SqlDataAdapter("select * from PatientRecord where indexid='" + indexid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            Label30.Text = "Index ID : " + ds.Tables[0].Rows[0]["indexid"].ToString();

            Label2.Text = ds.Tables[0].Rows[0]["pid"].ToString();
            Label5.Text = ds.Tables[0].Rows[0]["pfname"].ToString();

            Label7.Text = ds.Tables[0].Rows[0]["plname"].ToString();
            Label9.Text = ds.Tables[0].Rows[0]["gender"].ToString();

            Label11.Text = ds.Tables[0].Rows[0]["Age"].ToString();
            Label13.Text = ds.Tables[0].Rows[0]["DOB"].ToString();

            Label15.Text = ds.Tables[0].Rows[0]["pmobile"].ToString();
            Label17.Text = ds.Tables[0].Rows[0]["pemail"].ToString();

            Label19.Text = ds.Tables[0].Rows[0]["pAddress"].ToString();
            Label21.Text = ds.Tables[0].Rows[0]["systolicbloodpre"].ToString();

            Label23.Text = ds.Tables[0].Rows[0]["diastolicbloodpre"].ToString();
            Label25.Text = ds.Tables[0].Rows[0]["heartbeats"].ToString();

            Label27.Text = ds.Tables[0].Rows[0]["proteincatabolic"].ToString();
            Label29.Text = ds.Tables[0].Rows[0]["storedby"].ToString();
        }
    }
}
