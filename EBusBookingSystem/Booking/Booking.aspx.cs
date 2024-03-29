using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace EBusBookingSystem.Booking
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBookNow_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\EBusBookingSystem\EBusBookingSystem\App_Data\BusBookingDT.mdf;Integrated Security=True");
            SqlCommand cmd;
            string str;

            con.Open();
            try
            {
                str = "insert into TblBooking values('"+txtName.Text+"','"+txtDate.Text+"','"+txtDays.Text+"','"+txtMobile.Text+"','"+RadioButtonListGender.SelectedValue.ToString()+"','"+DropDownListCategory.SelectedValue.ToString()+"','"+txtAdress.Text+"')";
                cmd = new SqlCommand(str, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Booking Sucessfully')</script>");
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

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("../User/Home.aspx");
        }
    }
}