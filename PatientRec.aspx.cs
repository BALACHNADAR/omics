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

public partial class PatientRec : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    //SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter adp = new SqlDataAdapter("select * from PatientRecord", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {

        }
        else
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        //SqlDataAdapter adp1 = new SqlDataAdapter("select * from PatientRecord", con1);
        //DataSet ds1 = new DataSet();
        //adp1.Fill(ds1);
        //if (ds1.Tables[0].Rows.Count == 0)
        //{

        //}
        //else
        //{
        //    GridView2.DataSource = ds1;
        //    GridView2.DataBind();
        //}
    }
}
