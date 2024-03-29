using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EBusBookingSystem.User
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnForgotPass_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\EBusBookingSystem\EBusBookingSystem\App_Data\BusBookingDT.mdf;Integrated Security=True");
            SqlCommand cmd;
            string str;
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            conn.Open();
            try
            {
                str = "select mobile,email from TblUser where email='" + txtemail1.Text + "' and mobile='" + txtmobile1.Text + "'";
                da = new SqlDataAdapter(str, conn);
                dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    string str1 = "update TblUser set pass='" + txtchangepass1.Text + "' where mobile=" + txtmobile1.Text + " and pass='" + txtoldpass1.Text + "'";
                    cmd = new SqlCommand(str1, conn);
                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Success')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
    }
}