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

public partial class IdentifyOmics : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string patientid;
    string bloodurea, BloodRenual, Magnesium, Temprature, FeverYesNo;

    protected void Page_Load(object sender, EventArgs e)
    {
        patientid = Request.Params["ID"];

        SqlDataAdapter adp = new SqlDataAdapter("select * from BioMarkers where patientid='" + patientid + "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            //Label30.Text = "Index ID : " + ds.Tables[0].Rows[0]["indexid"].ToString();

            Label2.Text = patientid;
            Label7.Text = ds.Tables[0].Rows[0]["bloodid"].ToString();

            Label11.Text = ds.Tables[0].Rows[0]["Asymptomatic"].ToString();
            Label15.Text = ds.Tables[0].Rows[0]["Fungus"].ToString();
            Label19.Text = ds.Tables[0].Rows[0]["Lymphopenia"].ToString();
            Label23.Text = ds.Tables[0].Rows[0]["Backteria"].ToString();
            Label27.Text = ds.Tables[0].Rows[0]["Virus"].ToString();

            //if (Convert.ToInt32(bloodurea) >= 60)
            //{
            //    Label11.Text = "HVirmela";
            //}
            //else
            //{
            //    Label11.Text = "LVirmela";
            //}

            //if (Convert.ToInt32(BloodRenual) >= 120)
            //{
            //    Label11.Text = "HParastimea";
            //}
            //else
            //{
            //    Label11.Text = "LParastimea";
            //}

            //if (Convert.ToInt32(Magnesium) >= 40)
            //{
            //    Label15.Text = "Hormone";
            //}
            //else
            //{
            //    Label15.Text = "NONHormone";
            //}

            //if (Convert.ToInt32(Magnesium) >= 40)
            //{
            //    Label19.Text = "Buniya";
            //}
            //else
            //{
            //    Label19.Text = "NONBuniya";
            //}

            //if (Convert.ToInt32(Temprature) >= 100)
            //{
            //    Label23.Text = "Spirilla";
            //    Label27.Text = "Flaviv";
            //}
            //else
            //{
            //    Label23.Text = "Coccl";
            //    Label27.Text = "Arenav";
            //}

            //Label11.Text = ds.Tables[0].Rows[0]["bloodurea"].ToString();
            //Label15.Text = ds.Tables[0].Rows[0]["BloodRenual"].ToString();
            //Label19.Text = ds.Tables[0].Rows[0]["Magnesium"].ToString();
            //Label23.Text = ds.Tables[0].Rows[0]["Temprature"].ToString();
            //Label27.Text = ds.Tables[0].Rows[0]["Fever"].ToString();
            //Label29.Text = ds.Tables[0].Rows[0]["storedby"].ToString();
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["PatientID"] = Label2.Text;

        //con.Open();
        //SqlCommand cmd = new SqlCommand("Insert into BioMarkers values('" + Convert.ToInt32(Label2.Text) + "','" + Convert.ToInt32(Label7.Text) + "','" + Label11.Text + "','" + Label15.Text + "','" + Label19.Text + "','" + Label23.Text + "','" + Label27.Text + "')", con);
        //cmd.ExecuteNonQuery();
        //con.Close();

        Response.Redirect("IdentifyOmics2.aspx");
    }
}
