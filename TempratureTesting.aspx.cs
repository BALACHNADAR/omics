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
using System.IO;

public partial class TempratureTesting : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    //SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);
    Class1 cs = new Class1();
    Cryptography cr = new Cryptography();
    int pid,  Bloodid1;
    int dbindex1;
    string empty = "";
    string crFNameplusMobile, crFirst5DMobPlusEncLName, crEncAddPlusL5DMob, EncEmailPlusMobile;
    string mobilnumber, F5DMobNo, L5DMobNo;
    string MatchSts = "Matches", NMatchSts = "Non - Matches", PMatchSts = "Possible Matches", Existsts, otherpid, othermatches;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    //{
    //    if (TextBox1.Text == "")
    //    {
    //        string myStringVariable1 = string.Empty;
    //        myStringVariable1 = "Plz enter NA(mmol/L) !";
    //        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //    }
    //    else
    //    {

    //        if (RadioButtonList1.SelectedIndex == -1)
    //        {
    //            string myStringVariable1 = string.Empty;
    //            myStringVariable1 = "Plz select Blood Urea!";
    //            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //        }
    //        else
    //        {
    //            if (TextBox3.Text == "")
    //            {
    //                string myStringVariable1 = string.Empty;
    //                myStringVariable1 = "Plz enter Basophils !";
    //                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //            }
    //            else
    //            {
    //                if (TextBox4.Text == "")
    //                {
    //                    string myStringVariable1 = string.Empty;
    //                    myStringVariable1 = "Plz enter Magnesium !";
    //                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //                }
    //                else
    //                {
    //                    if (TextBox5.Text == "")
    //                    {
    //                        string myStringVariable1 = string.Empty;
    //                        myStringVariable1 = "Plz enter Blood Renual Cutoff!";
    //                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //                    }
    //                    else
    //                    {
    //                        if (RadioButtonList2.SelectedIndex == -1)
    //                        {
    //                            string myStringVariable1 = string.Empty;
    //                            myStringVariable1 = "Plz select NON - HDLX - M!";
    //                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //                        }
    //                        else
    //                        {
    //                            if (RadioButtonList3.SelectedIndex == -1)
    //                            {
    //                                string myStringVariable1 = string.Empty;
    //                                myStringVariable1 = "Plz select LDL Cholesterol!";
    //                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //                            }
    //                            else
    //                            {

    //                                if (RadioButtonList5.SelectedIndex == -1)
    //                                {
    //                                    string myStringVariable1 = string.Empty;
    //                                    myStringVariable1 = "Plz select HDL Cholesterol!";
    //                                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
    //                                }
    //                                else
    //                                {
                                        
    //                                    //dbindex1 = cs.DB1Indexidgeneration();
    //                                    Bloodid1 = cs.BloodTableidgeneration();

    //                                    //mobilnumber = TextBox5.Text;
    //                                    //F5DMobNo = mobilnumber.Substring(0, 5);
    //                                    //L5DMobNo = mobilnumber.Substring(5, 5);

    //                                    //crFNameplusMobile = crFName + "-" + mobilnumber;

    //                                    //crFirst5DMobPlusEncLName = F5DMobNo + "-" + crLName;

    //                                    //crEncAddPlusL5DMob = CrAddress + "-" + L5DMobNo;

    //                                    //EncEmailPlusMobile = crEMail + "-" + mobilnumber;

    //                                    con.Open();
    //                                    //SqlCommand cmd = new SqlCommand("Insert into BloodTable1 values('" + dbindex1 + "','" + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + RadioButtonList2.SelectedItem.Text + "','" + RadioButtonList3.SelectedItem.Text + "','" + RadioButtonList4.SelectedItem.Text + "','" + RadioButtonList5.SelectedItem.Text + "','" + crFNameplusMobile + "','" + crFirst5DMobPlusEncLName + "','" + crEncAddPlusL5DMob + "','" + EncEmailPlusMobile + "','" + empty + "','" + (string)Session["loginid"] + "')", con);
    //                                    //cmd.ExecuteNonQuery();
    //                                    SqlCommand cmd = new SqlCommand("Insert into BloodTable1 values('" + Bloodid1 + "','" + TextBox1.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + RadioButtonList2.SelectedItem.Text + "','" + RadioButtonList3.SelectedItem.Text + "','" + RadioButtonList5.SelectedItem.Text + "','" + (string)Session["PatientID"] + "')", con);
    //                                    cmd.ExecuteNonQuery();

    //                                    con.Close();

    //                                    Response.Redirect("PatientRecordSuc.aspx");

    //                                }
    //                            }
    //                        }
    //                    }
    //                }
    //            }
    //        }
    //    }
    //}
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Plz enter Temprature !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {

            if (TextBox3.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Plz enter Seldom!";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            else
            {
                if (TextBox5.Text == "")
                {
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Plz enter Hypothermia !";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
                else
                {
                    if (RadioButtonList1.SelectedIndex == -1)
                    {
                        string myStringVariable1 = string.Empty;
                        myStringVariable1 = "Plz select Fever !";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }
                    else
                    {
                        con.Open();
                        SqlCommand cmd1 = new SqlCommand("update BloodTempratureTable1 set Temprature='" + TextBox1.Text + "' where pid='" + (string)Session["PatientID"] + "'", con);
                        cmd1.ExecuteNonQuery();

                        SqlCommand cmd2 = new SqlCommand("update BloodTempratureTable1 set Seldom='" + TextBox3.Text + "' where pid='" + (string)Session["PatientID"] + "'", con);
                        cmd2.ExecuteNonQuery();

                        SqlCommand cmd3 = new SqlCommand("update BloodTempratureTable1 set Hypothermia='" + TextBox5.Text + "' where pid='" + (string)Session["PatientID"] + "'", con);
                        cmd3.ExecuteNonQuery();

                        SqlCommand cmd4 = new SqlCommand("update BloodTempratureTable1 set Fever='" + RadioButtonList1.SelectedItem.Text + "' where pid='" + (string)Session["PatientID"] + "'", con);
                        cmd4.ExecuteNonQuery();

                        con.Close();

                        Response.Redirect("testcomplete.aspx");
                    }
                }
            }
        }
    }
}
