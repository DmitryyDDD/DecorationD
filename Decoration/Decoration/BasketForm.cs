using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Decoration
{
    public partial class BasketForm : Form
    {
        //public int commonPrice;
        public BasketForm()
        {
            InitializeComponent();
        }
        private void GlobalPrice()
        {
            int price = 0;
            foreach (DataGridViewRow rows in productView.Rows)
            {
                price += Convert.ToInt32(rows.Cells[3].Value);
            }
            CommonPrice.Text = "Общая цена:\r\n    " + Convert.ToString(price);
        }
        private void BasketForm_Load(object sender, EventArgs e)
        {
            productView.Size = new Size(880, 429);
            string logoPath = System.IO.Path.GetFullPath("/Проекты Windows Forms/Decoration/logo.png");
            Logo.Image = Image.FromFile(logoPath);
            labelUserName.Text = UserData.UserName;

            
            
            using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.connstring))
            {
                connection.Open();
                string sqlCommand = "";
                //label1.Text = Convert.ToString(Main.articles.Count);
                string stringForRequest = ""; 
                for (int i = 0; i < Main.articles.Count; i++)
                {
                    if ( i!= 0)
                    {
                        stringForRequest += ", ";
                    }
                    stringForRequest +=  "'" + Main.articles[i] + "'";
                    
                }
                //label1.Text = stringForRequest;
                sqlCommand += $"Select * from ViewProduct where Артикул in ({stringForRequest})";
                SqlCommand command = new SqlCommand(sqlCommand, connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet, "ViewProduct");
                productView.DataSource = dataSet.Tables["ViewProduct"];
                connection.Close();
                
                foreach (DataGridViewRow rows in productView.Rows)
                {
                    int index = rows.Index;
                    int count = 0;
                    int commonPrice;
                    //rows.Cells[3].Value = rows.Cells[3].Value  - rows.Cells[3].Value * Convert.ToInt16(rows.Cells[4].Value) / 100;
                    //List<string> amount = new List<string>();
                    foreach (string item in Main.articles)
                    {
                        if (item == Convert.ToString(productView.Rows[index].Cells[0].Value))
                        {
                            count++;
                        }    
                            
                    }
                    productView.Rows[index].Cells[5].Value = Convert.ToString(count);

                    //
                    productView.Rows[index].Cells[3].Value = Convert.ToInt32(productView.Rows[index].Cells[3].Value)
                        - Convert.ToInt32(productView.Rows[index].Cells[3].Value) * Convert.ToInt32(productView.Rows[index].Cells[4].Value) / 100;
                    //
                    commonPrice = Convert.ToInt32(productView.Rows[index].Cells[3].Value) * Convert.ToInt32(productView.Rows[index].Cells[5].Value);
                    //int newCommonprice = commonPrice - (commonPrice / 100 * Convert.ToInt16(productView.Rows[index].Cells[4].Value));
                    productView.Rows[index].Cells[3].Value = Convert.ToString(commonPrice);
                    //productView.Rows[index].Cells[5].Value = amount;
                }
                GlobalPrice();
            }
            

        }

        private void productView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnClean_Click(object sender, EventArgs e)
        {
            Main.articles.Clear();
            Main main = new Main();
            main.Show();
            Hide();
        }

        private void btnReturn_Click(object sender, EventArgs e)
        {
            Main main = new Main();
            main.Show();
            Hide();
        }

        private void productView_inBasket_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            /*
            if (e.Button == MouseButtons.Right)
            {

                foreach (DataGridViewRow r in productView.Rows)
                {
                    productView.Rows[r.Index].Selected = false;
                }
                productView.Rows[e.RowIndex].Selected = true;

            }
            */
            if (e.Button == MouseButtons.Left)
            {
                productView.Size = new Size(880, 282);
                panelBottom.Visible = true;
                if (e.RowIndex == -1) return;
                DataGridViewRow row = productView.Rows[e.RowIndex];
                ProductName.Text = "Наименование товара: " + Convert.ToString(row.Cells[1].Value);
                Description.Text = "Описание товара: " + Convert.ToString(row.Cells[2].Value);
                int PriceInt = Convert.ToInt32(row.Cells[3].Value) / Convert.ToInt32(row.Cells[5].Value);
                
                int DiscountInt = Convert.ToInt16(row.Cells[4].Value);
                
                Price.Text = "Цена: " + Convert.ToString(PriceInt + (PriceInt / (100- Convert.ToInt32(row.Cells[4].Value)) * Convert.ToInt32(row.Cells[4].Value)));
                
                

                try
                {
                    string logoPath = System.IO.Path.GetFullPath($"/Проекты Windows Forms/Decoration/Decoration/Resources/{Convert.ToString(row.Cells[0].Value)}.jpg");
                    pictureProduct.Image = Image.FromFile(logoPath);
                }
                catch
                {
                    string logoPath = System.IO.Path.GetFullPath("/Проекты Windows Forms/Decoration/picture.png");
                    pictureProduct.Image = Image.FromFile(logoPath);
                }
                if (DiscountInt > 0)
                {
                    newPrice.Visible = true;
                    Price.Font = new Font(Price.Font, FontStyle.Strikeout);
                    
                    newPrice.Text = "Новая цена: " + Convert.ToString(Convert.ToInt32(row.Cells[3].Value) / Convert.ToInt32(row.Cells[5].Value));
                    
                    
                }
                else
                {
                    newPrice.Visible = false;
                    Price.Font = new Font(Price.Font, FontStyle.Regular);
                }
                //CommonPrice.Text = "Скидка:\r\n    " + Convert.ToString(DiscountInt) + "%";
                Manufacturer.Text = "Производитель: " + Convert.ToString(row.Cells[7].Value);

                //numericUpDown
                foreach (DataGridViewRow rows in productView.SelectedRows)
                {
                    using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.connstring))
                    {
                        string sqlquery = $"select Количество from ViewProduct where Артикул = '{Convert.ToString(rows.Cells[0].Value)}'";
                        connection.Open();
                        SqlCommand command = new SqlCommand(sqlquery, connection);
                        
                        command.CommandType = CommandType.Text;
                        command.CommandText = sqlquery;
                        numUD.Maximum = Convert.ToDecimal(command.ExecuteScalar());
                        numUD.Value = Convert.ToDecimal(rows.Cells[5].Value);
                    }
                    
                    //numUD.Maximum = Convert.ToDecimal(rows.Cells[5].Value);
                    //numUD.Value = 1;
                    //numUD.Value = Convert.ToDecimal(row.Cells[5].Value);
                }
                
            }
        }

        private void numUD_ValueChanged(object sender, EventArgs e)
        {
            foreach (DataGridViewRow rows in productView.SelectedRows)
            {
                if (Convert.ToInt32(rows.Cells[5].Value) > 0)
                {
                    //int count = Convert.ToInt32(rows.Cells[5].Value);
                    //int price = Convert.ToInt32(rows.Cells[3].Value);
                    //int discount = Convert.ToInt32(rows.Cells[4].Value);
                    rows.Cells[5].Value = numUD.Value;
                    /*price = price / count;
                    if (Price == 0)
                    {
                        Price = price;
                    }
                    */
                    rows.Cells[3].Value = numUD.Value * Convert.ToInt32(newPrice.Text.Substring(12)); 
                    
                }
                
            }
            GlobalPrice();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
