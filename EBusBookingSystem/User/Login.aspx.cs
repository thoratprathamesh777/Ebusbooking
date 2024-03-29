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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\asp.net\EBusBookingSystem\EBusBookingSystem\App_Data\BusBookingDT.mdf;Integrated Security=True");
            SqlCommand cmd;
            string str;
            SqlDataAdapter da = new SqlDataAdapter();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();
            con.Open();
            try
            {
                if (DroupDownListLogin.SelectedValue.ToString() == "USER")
                {



                    str = "select * from TblUser where userName='" + txtUsername.Text + "' and pass='" + txtPassword.Text + "'";
                    da = new SqlDataAdapter(str, con);
                    dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        //Session["Username"] = txt_username.Text;
                        //Session["pass1" ]= txt_password.Text;
                        Response.Redirect("../Booking/Booking.aspx");
                    }
                    else
                    {

                    }

                }
                else if (DroupDownListLogin.SelectedValue.ToString() == "ADMIN")
                {
                    string str1 = "select * from TblAdmin where adminUserName='" + txtUsername.Text + "' and adminpass='" + txtPassword.Text + "'";
                    da = new SqlDataAdapter(str1, con);
                    dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        //Session["Admin"] = "AARAA";
                        Response.Redirect("~/Admin/Home.aspx");
                    }
                    else
                    {

                    }
                }
                else
                {
                    Response.Write("<script>alert('Check Username Or Password')</script>");
                }
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