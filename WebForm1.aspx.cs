using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace cmpg321
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection("SERVER = den1.mysql6.gear.host;  DATABASE = comhelp1;UID = comhelp1;PASSWORD=@Kamogelo12;");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {


            cnn.Open();
            string query = ("select count(1) from login where WHERE Username = @username and Password = @password");
            SqlCommand cmd = new SqlCommand(query, cnn);
            cmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
            cmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());


            if (count == 1)
            {
                Response.Redirect("landingpage.aspx");
            }
            else
            {
                Response.Write("Username and password are Incorrect");
            }
            cnn.Close();
        }

    }



}



 