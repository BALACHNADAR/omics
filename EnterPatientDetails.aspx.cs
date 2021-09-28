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

public partial class EnterPatientDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    //SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);
    Class1 cs = new Class1();
    Cryptography cr = new Cryptography();
    int pid1, pid2;
    int dbindex1, dbindex2;
    string empty = "";
    string crFName, crLName, CrAddress, crEMail;
    string crFNameplusMobile, crFirst5DMobPlusEncLName, crEncAddPlusL5DMob, EncEmailPlusMobile;
    string crFNameplusMobile1, crFirst5DMobPlusEncLName1, crEncAddPlusL5DMob1, EncEmailPlusMobile1;
    string mobilnumber, F5DMobNo, L5DMobNo;
    string MatchSts = "Matches", NMatchSts = "Non - Matches", PMatchSts = "Possible Matches", Existsts, otherpid, othermatches;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "")
        {
            string myStringVariable1 = string.Empty;
            myStringVariable1 = "Plz enter First Name !";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
        }
        else
        {
            if (TextBox2.Text == "")
            {
                string myStringVariable1 = string.Empty;
                myStringVariable1 = "Plz enter Second Name !";
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
            }
            else
            {
                if (RadioButtonList1.SelectedIndex==-1)
                {
                    string myStringVariable1 = string.Empty;
                    myStringVariable1 = "Plz select any Gender!";
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                }
                else
                {
                    if (TextBox3.Text == "")
                    {
                        string myStringVariable1 = string.Empty;
                        myStringVariable1 = "Plz enter Age !";
                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                    }
                    else
                    {
                        if (TextBox4.Text == "")
                        {
                            string myStringVariable1 = string.Empty;
                            myStringVariable1 = "Plz enter D.O.B !";
                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                        }
                        else
                        {
                            if (TextBox5.Text == "")
                            {
                                string myStringVariable1 = string.Empty;
                                myStringVariable1 = "Plz enter Mobile Number!";
                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                            }
                            else
                            {
                                if (TextBox6.Text == "")
                                {
                                    string myStringVariable1 = string.Empty;
                                    myStringVariable1 = "Plz enter E-Mail !";
                                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                }
                                else
                                {
                                    if (TextBox7.Text == "")
                                    {
                                        string myStringVariable1 = string.Empty;
                                        myStringVariable1 = "Plz enter Address !";
                                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                    }
                                    else
                                    {
                                        if (RadioButtonList2.SelectedIndex == -1)
                                        {
                                            string myStringVariable1 = string.Empty;
                                            myStringVariable1 = "Plz select Sys Bloodpre!";
                                            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                        }
                                        else
                                        {
                                            if (RadioButtonList3.SelectedIndex == -1)
                                            {
                                                string myStringVariable1 = string.Empty;
                                                myStringVariable1 = "Plz select Dia Bloodpre!";
                                                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                            }
                                            else
                                            {
                                                if (RadioButtonList4.SelectedIndex == -1)
                                                {
                                                    string myStringVariable1 = string.Empty;
                                                    myStringVariable1 = "Plz select HeartBeats!";
                                                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                                }
                                                else
                                                {
                                                    if (RadioButtonList5.SelectedIndex == -1)
                                                    {
                                                        string myStringVariable1 = string.Empty;
                                                        myStringVariable1 = "Plz select Proteincatabolic!";
                                                        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                                    }
                                                    else
                                                    {
                                                        //if (DropDownList1.SelectedIndex == 0)
                                                        //{
                                                        //    string myStringVariable1 = string.Empty;
                                                        //    myStringVariable1 = "Plz select stored database by!";
                                                        //    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + myStringVariable1 + "');", true);
                                                        //}
                                                        //else
                                                        //{
                                                            //if (DropDownList1.SelectedIndex == 1)
                                                            //{
                                                                dbindex1 = cs.DB1Indexidgeneration();
                                                                pid1 = cs.DB1Pidgeneration();

                                                                crFName = cr.Encrypt(TextBox1.Text);
                                                                crLName = cr.Encrypt(TextBox2.Text);
                                                                CrAddress = cr.Encrypt(TextBox7.Text);
                                                                crEMail = cr.Encrypt(TextBox6.Text);
                                                                mobilnumber = TextBox5.Text;
                                                                F5DMobNo = mobilnumber.Substring(0, 5);
                                                                L5DMobNo = mobilnumber.Substring(5, 5);

                                                                crFNameplusMobile = crFName + "-" + mobilnumber;

                                                                crFirst5DMobPlusEncLName = F5DMobNo + "-" + crLName;

                                                                crEncAddPlusL5DMob = CrAddress + "-" + L5DMobNo;

                                                                EncEmailPlusMobile = crEMail + "-" + mobilnumber;

                                                                con.Open();
                                                                SqlCommand cmd = new SqlCommand("Insert into PatientRecord values('" + dbindex1 + "','" + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + RadioButtonList2.SelectedItem.Text + "','" + RadioButtonList3.SelectedItem.Text + "','" + RadioButtonList4.SelectedItem.Text + "','" + RadioButtonList5.SelectedItem.Text + "','" + crFNameplusMobile + "','" + crFirst5DMobPlusEncLName + "','" + crEncAddPlusL5DMob + "','" + EncEmailPlusMobile + "','" + empty + "','" + (string)Session["loginid"] + "')", con);
                                                                cmd.ExecuteNonQuery();
                                                                con.Close();

                                                                //SqlDataAdapter adp = new SqlDataAdapter("Select * from PatientRecord", con1);
                                                                //DataSet ds = new DataSet();
                                                                //adp.Fill(ds);
                                                                //if (ds.Tables[0].Rows.Count == 0)
                                                                //{
                                                                //    con.Open();
                                                                //    SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + NMatchSts + "' where pid='" + pid1 + "'", con);
                                                                //    cmd1.ExecuteNonQuery();
                                                                //    con.Close();
                                                                //}
                                                                //else
                                                                //{
                                                                //    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                                                //    {
                                                                //        otherpid = ds.Tables[0].Rows[i]["pid"].ToString();
                                                                //        crFNameplusMobile1 = ds.Tables[0].Rows[i]["EncFNamePlusMob"].ToString();
                                                                //        crFirst5DMobPlusEncLName1 = ds.Tables[0].Rows[i]["First5DMobPlusEncLName"].ToString();
                                                                //        crEncAddPlusL5DMob1 = ds.Tables[0].Rows[i]["EncAddPlusL5DMob"].ToString();
                                                                //        EncEmailPlusMobile1 = ds.Tables[0].Rows[i]["EncEmailPlusMobile"].ToString();
                                                                //        othermatches = ds.Tables[0].Rows[i]["MatchSts"].ToString();

                                                                //        if (crFNameplusMobile == crFNameplusMobile1 && crFirst5DMobPlusEncLName == crFirst5DMobPlusEncLName1 && crEncAddPlusL5DMob == crEncAddPlusL5DMob1 && EncEmailPlusMobile == EncEmailPlusMobile1)
                                                                //        {
                                                                //            con.Open();
                                                                //            SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + MatchSts + "' where pid='" + pid1 + "'", con);
                                                                //            cmd1.ExecuteNonQuery();
                                                                //            con.Close();
                                                                //            con1.Open();
                                                                //            SqlCommand cmd2 = new SqlCommand("update PatientRecord set MatchSts='" + MatchSts + "' where pid='" + otherpid + "'", con1);
                                                                //            cmd2.ExecuteNonQuery();
                                                                //            con1.Close();
                                                                //        }
                                                                //        else
                                                                //        {
                                                                //            if (crFNameplusMobile == crFNameplusMobile1 || crFirst5DMobPlusEncLName == crFirst5DMobPlusEncLName1 || crEncAddPlusL5DMob == crEncAddPlusL5DMob1 || EncEmailPlusMobile == EncEmailPlusMobile1)
                                                                //            {
                                                                //                SqlDataAdapter adp1 = new SqlDataAdapter("Select * from PatientRecord where pid='" + pid1 + "'", con);
                                                                //                DataSet ds1 = new DataSet();
                                                                //                adp1.Fill(ds1);
                                                                //                if (ds1.Tables[0].Rows.Count == 0)
                                                                //                {

                                                                //                }
                                                                //                else
                                                                //                {
                                                                //                    Existsts = ds1.Tables[0].Rows[0]["MatchSts"].ToString();
                                                                //                }
                                                                //                if (Existsts == "Matches")
                                                                //                {

                                                                //                }
                                                                //                else
                                                                //                {
                                                                //                    con.Open();
                                                                //                    SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + PMatchSts + "' where pid='" + pid1 + "'", con);
                                                                //                    cmd1.ExecuteNonQuery();
                                                                //                    con.Close();
                                                                //                }

                                                                //                if (othermatches == "Matches")
                                                                //                {

                                                                //                }
                                                                //                else
                                                                //                {
                                                                //                    con1.Open();
                                                                //                    SqlCommand cmd2 = new SqlCommand("update PatientRecord set MatchSts='" + PMatchSts + "' where pid='" + otherpid + "'", con1);
                                                                //                    cmd2.ExecuteNonQuery();
                                                                //                    con1.Close();
                                                                //                }
                                                                //            }
                                                                //            else
                                                                //            {
                                                                //                SqlDataAdapter adp2 = new SqlDataAdapter("Select * from PatientRecord where pid='" + pid1 + "'", con);
                                                                //                DataSet ds2 = new DataSet();
                                                                //                adp2.Fill(ds2);
                                                                //                if (ds.Tables[0].Rows.Count == 0)
                                                                //                {

                                                                //                }
                                                                //                else
                                                                //                {
                                                                //                    Existsts = ds2.Tables[0].Rows[0]["MatchSts"].ToString();
                                                                //                }
                                                                //                if (Existsts == "Matches" || Existsts == "Possible Matches")
                                                                //                {

                                                                //                }
                                                                //                else
                                                                //                {
                                                                //                    con.Open();
                                                                //                    SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + NMatchSts + "' where pid='" + pid1 + "'", con);
                                                                //                    cmd1.ExecuteNonQuery();
                                                                //                    con.Close();
                                                                //                }
                                                                //            }
                                                                //        }
                                                                //    }
                                                                //}
                                                                //con1.Close();


                                                                Response.Redirect("PatientRecordSuc.aspx");


                                                            //}
                                                            //else
                                                            //{

                                                            //    dbindex2 = cs.DB2Indexidgeneration();
                                                            //    pid2 = cs.DB2Pidgeneration();

                                                            //    crFName = cr.Encrypt(TextBox1.Text);
                                                            //    crLName = cr.Encrypt(TextBox2.Text);
                                                            //    CrAddress = cr.Encrypt(TextBox7.Text);
                                                            //    crEMail = cr.Encrypt(TextBox6.Text);
                                                            //    mobilnumber = TextBox5.Text;
                                                            //    F5DMobNo = mobilnumber.Substring(0, 5);
                                                            //    L5DMobNo = mobilnumber.Substring(5, 5);

                                                            //    crFNameplusMobile = crFName + "-" + mobilnumber;

                                                            //    crFirst5DMobPlusEncLName = F5DMobNo + "-" + crLName;

                                                            //    crEncAddPlusL5DMob = CrAddress + "-" + L5DMobNo;

                                                            //    EncEmailPlusMobile = crEMail + "-" + mobilnumber;

                                                            //    con1.Open();
                                                            //    SqlCommand cmd = new SqlCommand("Insert into PatientRecord values('" + dbindex2 + "','" + pid2 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + RadioButtonList2.SelectedItem.Text + "','" + RadioButtonList3.SelectedItem.Text + "','" + RadioButtonList4.SelectedItem.Text + "','" + RadioButtonList5.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + crFNameplusMobile + "','" + crFirst5DMobPlusEncLName + "','" + crEncAddPlusL5DMob + "','" + EncEmailPlusMobile + "','" + empty + "')", con1);
                                                            //    cmd.ExecuteNonQuery();
                                                            //    con1.Close();

                                                            //    SqlDataAdapter adp = new SqlDataAdapter("Select * from PatientRecord", con);
                                                            //    DataSet ds = new DataSet();
                                                            //    adp.Fill(ds);
                                                            //    if (ds.Tables[0].Rows.Count == 0)
                                                            //    {
                                                            //        con1.Open();
                                                            //        SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + NMatchSts + "' where pid='" + pid2 + "'", con1);
                                                            //        cmd1.ExecuteNonQuery();
                                                            //        con1.Close();
                                                            //    }
                                                            //    else
                                                            //    {
                                                            //        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                                                            //        {
                                                            //            otherpid = ds.Tables[0].Rows[i]["pid"].ToString();
                                                            //            crFNameplusMobile1 = ds.Tables[0].Rows[i]["EncFNamePlusMob"].ToString();
                                                            //            crFirst5DMobPlusEncLName1 = ds.Tables[0].Rows[i]["First5DMobPlusEncLName"].ToString();
                                                            //            crEncAddPlusL5DMob1 = ds.Tables[0].Rows[i]["EncAddPlusL5DMob"].ToString();
                                                            //            EncEmailPlusMobile1 = ds.Tables[0].Rows[i]["EncEmailPlusMobile"].ToString();
                                                            //            othermatches = ds.Tables[0].Rows[i]["MatchSts"].ToString();

                                                            //            if (crFNameplusMobile == crFNameplusMobile1 && crFirst5DMobPlusEncLName == crFirst5DMobPlusEncLName1 && crEncAddPlusL5DMob == crEncAddPlusL5DMob1 && EncEmailPlusMobile == EncEmailPlusMobile1)
                                                            //            {
                                                            //                con1.Open();
                                                            //                SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + MatchSts + "' where pid='" + pid2 + "'", con1);
                                                            //                cmd1.ExecuteNonQuery();
                                                            //                con1.Close();
                                                            //                con.Open();
                                                            //                SqlCommand cmd2 = new SqlCommand("update PatientRecord set MatchSts='" + MatchSts + "' where pid='" + otherpid + "'", con);
                                                            //                cmd2.ExecuteNonQuery();
                                                            //                con.Close();
                                                            //            }
                                                            //            else
                                                            //            {
                                                            //                if (crFNameplusMobile == crFNameplusMobile1 || crFirst5DMobPlusEncLName == crFirst5DMobPlusEncLName1 || crEncAddPlusL5DMob == crEncAddPlusL5DMob1 || EncEmailPlusMobile == EncEmailPlusMobile1)
                                                            //                {
                                                            //                    SqlDataAdapter adp3 = new SqlDataAdapter("Select * from PatientRecord where pid='" + pid2 + "'", con1);
                                                            //                    DataSet ds3 = new DataSet();
                                                            //                    adp3.Fill(ds3);
                                                            //                    if (ds3.Tables[0].Rows.Count == 0)
                                                            //                    {

                                                            //                    }
                                                            //                    else
                                                            //                    {
                                                            //                        Existsts = ds3.Tables[0].Rows[0]["MatchSts"].ToString();
                                                            //                    }
                                                            //                    if (Existsts == "Matches")
                                                            //                    {

                                                            //                    }
                                                            //                    else
                                                            //                    {
                                                            //                        con1.Open();
                                                            //                        SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + PMatchSts + "' where pid='" + pid2 + "'", con1);
                                                            //                        cmd1.ExecuteNonQuery();
                                                            //                        con1.Close();
                                                            //                    }

                                                            //                    if (othermatches == "Matches")
                                                            //                    {

                                                            //                    }
                                                            //                    else
                                                            //                    {
                                                            //                        con.Open();
                                                            //                        SqlCommand cmd2 = new SqlCommand("update PatientRecord set MatchSts='" + PMatchSts + "' where pid='" + otherpid + "'", con);
                                                            //                        cmd2.ExecuteNonQuery();
                                                            //                        con.Close();
                                                            //                    }
                                                            //                }
                                                            //                else
                                                            //                {
                                                            //                    SqlDataAdapter adp4 = new SqlDataAdapter("Select * from PatientRecord where pid='" + pid2 + "'", con1);
                                                            //                    DataSet ds4 = new DataSet();
                                                            //                    adp4.Fill(ds4);
                                                            //                    if (ds4.Tables[0].Rows.Count == 0)
                                                            //                    {

                                                            //                    }
                                                            //                    else
                                                            //                    {
                                                            //                        Existsts = ds4.Tables[0].Rows[0]["MatchSts"].ToString();
                                                            //                    }
                                                            //                    if (Existsts == "Matches" || Existsts == "Possible Matches")
                                                            //                    {

                                                            //                    }
                                                            //                    else
                                                            //                    {
                                                            //                        con1.Open();
                                                            //                        SqlCommand cmd1 = new SqlCommand("update PatientRecord set MatchSts='" + NMatchSts + "' where pid='" + pid2 + "'", con1);
                                                            //                        cmd1.ExecuteNonQuery();
                                                            //                        con1.Close();
                                                            //                    }
                                                            //                }
                                                            //            }
                                                            //        }
                                                            //    }
                                                            //    con.Close();

                                                            //    Response.Redirect("PatientRecordSuc.aspx");
                                                            //}
                                                        //}
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
