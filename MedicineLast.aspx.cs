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

public partial class MedicineLast : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    string indexid;
    string bloodurea, BloodRenual, Magnesium, Temprature, FeverYesNo;

    protected void Page_Load(object sender, EventArgs e)
    {
        indexid = Request.Params["ID"];

        SqlDataAdapter adp = new SqlDataAdapter("select * from BloodTempratureTable1 where pid='" + indexid+ "'", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            //Label30.Text = "Index ID : " + ds.Tables[0].Rows[0]["indexid"].ToString();

            Label2.Text = indexid;
            Label7.Text = ds.Tables[0].Rows[0]["bloodid"].ToString();

            bloodurea = ds.Tables[0].Rows[0]["bloodurea"].ToString();
            BloodRenual = ds.Tables[0].Rows[0]["BloodRenual"].ToString();
            Magnesium = ds.Tables[0].Rows[0]["Magnesium"].ToString();
            Temprature = ds.Tables[0].Rows[0]["Temprature"].ToString();
            FeverYesNo = ds.Tables[0].Rows[0]["Fever"].ToString();

            if (bloodurea == "CA")
            {
                Label11.Text = "Aspirine";
            }
            else
            {
                Label11.Text = "Dolo 665";
            }

            if (Convert.ToInt32(BloodRenual) >= 120)
            {
                Label11.Text = "Paracitamal";
            }
            else
            {
                Label11.Text = "Betadamine";
            }

            if (Magnesium == "High")
            {
                Label15.Text = "Astolish";
            }
            else
            {
                Label15.Text = "Hemomanine";
            }

            if (Magnesium == "Low")
            {
                Label19.Text = "Garcek";
            }
            else
            {
                Label19.Text = "Nan";
            }

            if (Convert.ToInt32(Temprature) >= 100)
            {
                Label23.Text = "Palcol";
                Label27.Text = "Falcol";
            }
            else
            {
                Label23.Text = "Vipre";
                Label27.Text = "Waset";
            }

            //Label11.Text = ds.Tables[0].Rows[0]["bloodurea"].ToString();
            //Label15.Text = ds.Tables[0].Rows[0]["BloodRenual"].ToString();
            //Label19.Text = ds.Tables[0].Rows[0]["Magnesium"].ToString();
            //Label23.Text = ds.Tables[0].Rows[0]["Temprature"].ToString();
            //Label27.Text = ds.Tables[0].Rows[0]["Fever"].ToString();
            //Label29.Text = ds.Tables[0].Rows[0]["storedby"].ToString();
        }
    }
    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    Session["PatientID"] = Label2.Text;

    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("Insert into BioMarkers values('" + Convert.ToInt32(Label2.Text) + "','" + Convert.ToInt32(Label7.Text) + "','" + Label11.Text + "','" + Label15.Text + "','" + Label19.Text + "','" + Label23.Text + "','" + Label27.Text + "')", con);
    //    cmd.ExecuteNonQuery();
    //    con.Close();

    //    Response.Redirect("ClientSide1.aspx");
    //}
}
