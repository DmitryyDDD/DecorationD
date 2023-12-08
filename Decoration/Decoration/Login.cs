using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Xml.Linq;

namespace Decoration
{
    public partial class Login : Form
    {
 
        public Login()
        {
            InitializeComponent();   
        }
        
        private void buttonLogin_Click(object sender, EventArgs e)
        {

            using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.connstring))
            {
                connection.Open();
                SqlCommand command = new SqlCommand();
        
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "LoginProc";
                command.Parameters.AddWithValue("login", textLogin.Text);
                command.Parameters.AddWithValue("password", textPassword.Text);
                command.Connection = connection;
                SqlDataReader reader = command.ExecuteReader();
                reader.Read();
                
                if (reader.HasRows)
                {
                    //UserData userData = new UserData();
                    UserData.UserName = Convert.ToString(reader.GetValue(1)) + " " + Convert.ToString(reader.GetValue(2)) + " " + Convert.ToString(reader.GetValue(3));
                    
                    string userName = UserData.UserName;
                    userName = userName.Remove(0, userName.IndexOf(' '));
                    MessageBox.Show("Добро пожаловать," + userName + "!");
                    Main main = new Main();
                    main.Show();
                    Hide();
                }
                else
                {
                    MessageBox.Show("Неправильный логин или пароль");
                }
                connection.Close();
            }
        }

        private void buttonLoginAsGuest_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Добро пожаловать!");
            Main main = new Main();
            main.Show();
            Hide();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            string logoPath = System.IO.Path.GetFullPath("/Проекты Windows Forms/Decoration/logo.png");
            Logo.Image = Image.FromFile(logoPath);
            //System.IO.Directory.GetFiles(logoPath);
            //Image.FromFile(logoPath);
        }
    }
}
