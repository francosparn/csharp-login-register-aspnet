using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace LoginWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {}

        string patron = "LoginWeb";

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(tbUsername.Text == "" || tbPassword.Text == "")
            {
                alertError.Text = "Los campos están vacíos";
            }
            else
            {
                string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(con);

                SqlCommand cmd = new SqlCommand("SP_ValidateAccount", sqlConnection);
                cmd.CommandType = CommandType.StoredProcedure;

                // Open connection
                cmd.Connection.Open();

                cmd.Parameters.Add("@Username", SqlDbType.VarChar,50).Value = tbUsername.Text;
                cmd.Parameters.Add("@Pass", SqlDbType.VarChar,50).Value = tbPassword.Text;
                cmd.Parameters.Add("@Patron", SqlDbType.VarChar,50).Value = patron;

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["userlogin"] = tbUsername.Text;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    alertError.Text = "Los datos ingresados no son correctos";
                }

                // Close connection
                cmd.Connection.Close();
            }

        }

        protected void btnRegisterForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}