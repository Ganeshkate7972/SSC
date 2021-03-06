using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.Sql;
using System.Configuration;
using System.ComponentModel;
using SSC.App_Start;

namespace SSC.Besic_Master
{
    public partial class DistrictLists : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getWhileLoopData()
        {
            string htmlStr = "";
            DataBase db = new DataBase();
            DataTable dt = new DataTable();
            string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cm = new SqlCommand("DistrictDateshow", con);
            cm.CommandType = CommandType.StoredProcedure;
            //cm.Parameters.AddWithValue("@Name", Name.Text);
            SqlDataReader dr = cm.ExecuteReader();
            int id = 1;
            string Delete = "";
            while (dr.Read())
            {
                int Edit = dr.GetInt32(0);
                string Name = dr.GetString(2);
                //bool active = dr.GetBoolean(2);

                if (dr.GetBoolean(3) == false)
                {
                    Delete = "-";
                }
                else if (dr.GetBoolean(3) == true)
                {
                    Delete = "Deleted";
                }
                htmlStr += "<tr style='padding-left:100px'><td>" + id++ + "</td><td>" + Name + "</td><td>" + Delete + "</td><td><a href='AddDistrict?id=" + Edit + "'><i class='fas fa-edit fa-2x'></i></a></td></tr>";
            }
            con.Close();
            return htmlStr;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddDistrict");
        }
    }
}