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

public partial class IdentifyOmics3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string indexid;

    protected void Page_Load(object sender, EventArgs e)
    {
        //indexid = Request.Params["ID"];

        SqlDataAdapter adp = new SqlDataAdapter("select * from BloodTempratureTable1 where pid='" + (string)Session["PatientID"] + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            //Label30.Text = "Index ID : " + ds.Tables[0].Rows[0]["indexid"].ToString();

            Label2.Text = ds.Tables[0].Rows[0]["bloodid"].ToString();
            Label7.Text = ds.Tables[0].Rows[0]["Magnesium"].ToString();
            Label11.Text = ds.Tables[0].Rows[0]["HDLCholesterol"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["Temprature"].ToString();
            Label19.Text = ds.Tables[0].Rows[0]["Seldom"].ToString();
            Label23.Text = ds.Tables[0].Rows[0]["Hypothermia"].ToString();
            Label27.Text = ds.Tables[0].Rows[0]["Fever"].ToString();
            //Label29.Text = ds.Tables[0].Rows[0]["storedby"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["PatientID"] = Label2.Text;

        Response.Redirect("IdentifyOmicsStart.aspx");
    }
}
