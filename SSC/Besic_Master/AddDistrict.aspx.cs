using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using SSC.App_Start;

namespace SSC.Besic_Master
{
    public partial class AddDistrict : DataBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Page.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {

                string Qry = Request.QueryString["ID"];
                if (Qry != "")
                {
                    ViewState["Qry"] = Qry;
                    GetData();

                }


            }
        }

        public void GetData()
        {
            DataBase db = new DataBase();
            string Qry = Request.QueryString["ID"];
            //string str = "select * from SMS_CLIENTSTATUS_MASTER where CSM_ID='" + Qry + "'";
            SqlDataReader dr = ExecuteSqlDataReader("DistrictGETDATA", new SqlParameter("@ID", Qry));
            while (dr.Read())
            {

                Name.Text = dr["DistrictName"].ToString();
                CheckBox1.Checked = dr.GetBoolean(3);
                Label2.Visible = true;
                Label1.Text = "Edit City";
            }

        }
        public void AddUpdateData()
        {
            try
            {
                string connectionstring = ConfigurationManager.ConnectionStrings["strCone"].ConnectionString;
                SqlConnection con = new SqlConnection(connectionstring);
                string ID = Convert.ToString(ViewState["Qry"]);
                //string query = "Insert Into VMPCountryMaster(Name,Status,CreatedBy) values(@name,@Status,@CreatedBy)";
                //SqlCommand cm = new SqlCommand(query, con);
                SqlCommand cm = new SqlCommand("DistrictInsertUpdate", con);
                cm.CommandType = CommandType.StoredProcedure;
                cm.Parameters.AddWithValue("@ID", ID);
                cm.Parameters.AddWithValue("@Name", Name.Text);
                if (CheckBox1.Checked)
                {
                    cm.Parameters.AddWithValue("@Isdelete", 1);


                }
                else if (!CheckBox1.Checked)
                {
                    cm.Parameters.AddWithValue("@Isdelete", 0);


                }
                con.Open();
                cm.ExecuteNonQuery();
                con.Close();
                ClientScript.RegisterStartupScript(this.Page.GetType(), "validation", "<script language='javascript'>swal({title:'Data is successfully save',icon:'success'}).then(function() {window.location = 'DistrictLists';});</script>");


            }
            catch (Exception ex) { }
            finally
            {
                SqlConnection.ClearAllPools();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //AddUpdateData();
            string ID = Convert.ToString(ViewState["Qry"]);
            List<string> locationList = new List<string>();
            DataTable dt = ExecuteDataTable("DistrictNameCKList", new SqlParameter("@ID", ID));
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                locationList.Add(Convert.ToString(dt.Rows[i].ItemArray[0]).ToUpper());
            }
            if (ID == "" || ID == null)
            {
                //DataTable dt= ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
                if (locationList.Contains(Name.Text.ToUpper()) == true)
                {
                    //ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "showModal1();", true);
                    ClientScript.RegisterStartupScript(this.Page.GetType(), "validation", "<script language='javascript'>swal({title:'Data already exists',icon:'error'})</script>");

                }
                else
                {
                    AddUpdateData();
                }
            }
            else if (ID != "" || ID != null)
            {
                //DataTable dt = ExecuteDataTable("SMS_ClientTypePayment_CkList", new SqlParameter("@ID", ID));
                if (locationList.Contains(Name.Text.ToUpper()) == true)
                {
                    ClientScript.RegisterStartupScript(this.Page.GetType(), "validation", "<script language='javascript'>swal({title:'Data already exists',icon:'error'})</script>");
                }
                else
                {
                    AddUpdateData();
                }
            }
        }
    }
}