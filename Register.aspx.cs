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

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    Class1 cs = new Class1();
    int lid;
    string filePath, Localpath, fileext, filename;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        lid = cs.idgeneration();
        con.Open();
        filePath = Request.PhysicalApplicationPath + "photo/" + System.IO.Path.GetFileName(FileUpload1.FileName);
        filename = System.IO.Path.GetFileName(FileUpload1.FileName);
        if (filename == "")
        {

        }
        else
        {
            FileUpload1.SaveAs(filePath);

            Localpath = "photo/" + System.IO.Path.GetFileName(FileUpload1.FileName);

            fileext = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);

            SqlCommand cmd = new SqlCommand("Insert into Register values('" + lid + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + Localpath + "','" + fileext + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("RegSuccess.aspx");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
}
