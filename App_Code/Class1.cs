using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using System.IO;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"]);
    SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString1"]);
    private static string sKey = "UJYHCX783her*&5@$%#(MJCX**38n*#6835ncv56tvbry(&#MX98cn342cn4*&X#&";
    string id, id1, id2, id3, id4, id5;
    int eid, eid1, eid2, eid3, eid4, eid5;

	public Class1()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public int idgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(lid) from Register", con);
        id = Convert.ToString(c1.ExecuteScalar());
        if (id == "")
        {
            eid = 1;
        }
        else
        {
            eid = Convert.ToInt16(id);
            eid = eid + 1;
        }
        con.Close();
        return eid;
    }

    public int DB1Indexidgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(indexid) from PatientRecord", con);
        id1 = Convert.ToString(c1.ExecuteScalar());
        if (id1 == "")
        {
            eid1 = 1;
        }
        else
        {
            eid1 = Convert.ToInt16(id1);
            eid1 = eid1 + 1;
        }
        con.Close();
        return eid1;
    }

    public int DB1Pidgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(pid) from PatientRecord", con);
        id2 = Convert.ToString(c1.ExecuteScalar());
        if (id2 == "")
        {
            eid2 = 1;
        }
        else
        {
            eid2 = Convert.ToInt16(id2);
            eid2 = eid2 + 1;
        }
        con.Close();
        return eid2;
    }

    public int BloodTableidgeneration()
    {
        con.Open();
        SqlCommand c1 = new SqlCommand("select max(bloodid) from BloodTempratureTable1", con);
        id5 = Convert.ToString(c1.ExecuteScalar());
        if (id5 == "")
        {
            eid5 = 1;
        }
        else
        {
            eid5 = Convert.ToInt16(id5);
            eid5 = eid5 + 1;
        }
        con.Close();
        return eid5;
    }

    public int DB2Indexidgeneration()
    {
        con1.Open();
        SqlCommand c1 = new SqlCommand("select max(indexid) from PatientRecord", con1);
        id3 = Convert.ToString(c1.ExecuteScalar());
        if (id3 == "")
        {
            eid3 = 1;
        }
        else
        {
            eid3 = Convert.ToInt16(id3);
            eid3 = eid3 + 1;
        }
        con1.Close();
        return eid3;
    }

    public int DB2Pidgeneration()
    {
        con1.Open();
        SqlCommand c1 = new SqlCommand("select max(pid) from PatientRecord", con1);
        id4 = Convert.ToString(c1.ExecuteScalar());
        if (id4 == "")
        {
            eid4 = 1;
        }
        else
        {
            eid4 = Convert.ToInt16(id4);
            eid4 = eid4 + 1;
        }
        con1.Close();
        return eid4;
    }

}
