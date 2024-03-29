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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Clcik(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\EBusBookingSystem\EBusBookingSystem\App_Data\BusBookingDT.mdf;Integrated Security=True");
            SqlCommand cmd;
            string str;

            con.Open();
            try
            {
                str = "insert into TblFeedback values('" + txtName.Text + "','" + txtEmail.Text + "', '"+txtSubject.Text+"','"+txtMessage.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Feedback Sucessfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
}