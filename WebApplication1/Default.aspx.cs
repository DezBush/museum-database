using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Printing;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("https://museuminterface.azurewebsites.net/CustomerHomePage.aspx");
            
            SqlConnection museumConn = new SqlConnection("Server=tcp:museum.database.windows.net,1433;Initial Catalog=MuseumDB;Persist Security Info=False;User ID=JeremyL;Password=BabyThing1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                string userName = TextBox3.Text;
                string password = TextBox2.Text;
                SqlDataReader db;
                SqlCommand verify = new SqlCommand("museumSchema.VerifyCredentialsExist");
                museumConn.Open();
                verify.Connection = museumConn;
                verify.CommandType = System.Data.CommandType.StoredProcedure;
                SqlParameter param = new SqlParameter("@UsernameAtt", userName);
                SqlParameter param2 = new SqlParameter("@PasswordAtt", password);
                SqlParameter param3 = new SqlParameter("@authLevel", 1);

                verify.Parameters.Add(param);
                verify.Parameters.Add(param2);
                verify.Parameters.Add(param3);

                verify.Parameters["@UsernameAtt"].Value = userName;
                verify.Parameters["@PasswordAtt"].Value = password;
                verify.Parameters["@authLevel"].Value = 1;

                db = verify.ExecuteReader();
                
                if(db.Read())
                {
                    Response.Redirect("https://museuminterface.azurewebsites.net/CustomerHomePage.aspx");
                }
                
                {
                    db.Close();
                    verify.Parameters["@authLevel"].Value = 2;
                    db = verify.ExecuteReader();
                    if( db.Read())
                    {
                        Response.Redirect("https://museuminterface.azurewebsites.net/ManagerHomePage.aspx");
                    }
                } 

            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}