using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace LoginWeb
{
    public partial class Register : System.Web.UI.Page
    {
        // Connection DB
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

        string patron = "LoginWeb";

        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // Validation
            if (tbUsername.Text == "" || tbPassword.Text == "")
            {
                alertError.Text = "Todos los campos son obligatorios";
            }
            else
            {
                if (tbPassword.Text != tbConfirmPassword.Text)
                {
                    alertError.Text = "Las contraseñas no coinciden";
                }
                else
                {
                    // Open connection
                    connection.Open();

                    string query = "SELECT COUNT(*) FROM Account WHERE Username='" + tbUsername.Text + "'";

                    SqlCommand cmd = new SqlCommand(query, connection);
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.AddWithValue("@Username", tbUsername.Text);

                    int user = Convert.ToInt32(cmd.ExecuteScalar());

                    // Verify that there is no more than one user registered with that username
                    if (user < 1)
                    {
                        string con = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
                        SqlConnection sqlConnection = new SqlConnection(con);

                        SqlCommand cmm = new SqlCommand("SP_AddAccount", sqlConnection);
                        cmm.CommandType = CommandType.StoredProcedure;

                        cmm.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = tbUsername.Text;
                        cmm.Parameters.Add("@Pass", SqlDbType.VarChar, 50).Value = tbPassword.Text;
                        cmm.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;

                        // Open connection
                        cmm.Connection.Open();

                        cmm.ExecuteNonQuery();

                        // Empty error alert
                        alertError.Text = "";

                        // Show success alert
                        alertOk.Text = "El usuario ha sido registrado correctamente";

                        // Close connection
                        cmm.Connection.Close();
                    }
                    else
                    {
                        alertError.Text = "El nombre de usuario '" + tbUsername.Text + "' ya está en uso";

                        // Empty username field
                        tbUsername.Text = "";
                    }
                }
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}