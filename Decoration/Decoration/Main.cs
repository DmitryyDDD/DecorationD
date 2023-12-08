using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Decoration
{
    public partial class Main : Form
    {
        public int globalCount;
        public static List<string> articles = new List<string>();

        public Main()
        {
            InitializeComponent();
        }
        
        private void Main_Load(object sender, EventArgs e)
        {
            productView.Size = new Size(880, 429);
            string logoPath = System.IO.Path.GetFullPath("/Проекты Windows Forms/Decoration/logo.png");
            Logo.Image = Image.FromFile(logoPath);
            if (articles.Count == 0)
            {
                btnBasket.Visible = false;
            }
            else
            {
                btnBasket.Visible = true;
            }
            //UserData userData = new UserData();
            labelUserName.Text = UserData.UserName;
            using (SqlConnection connection = new SqlConnection(Properties.Settings.Default.connstring))
            {
                connection.Open();
                string sqlCommand = "Select * from ViewProduct"; 
                SqlCommand command = new SqlCommand(sqlCommand, connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet, "ViewProduct");
                productView.DataSource = dataSet.Tables["ViewProduct"];
                connection.Close();
            }
            
            //productView.Rows[1].Selected = true;
            DataGridView dataGrid = productView;
            globalCount = dataGrid.Rows.Count;
            //PaintRows();
            Count();
            cmbDiscount.Text = "Все диапазоны";
        }
        private void Count()
        {
            DataGridView dataGrid = productView;
            int count = dataGrid.Rows.Count;
            lblCount.Text = Convert.ToString(count) + " из " + Convert.ToString(globalCount);
        }
        public void PaintRows()
        {
            foreach (DataGridViewRow row in productView.Rows)
            {
                if (Convert.ToInt32(row.Cells[4].Value) > 15)
                {
                    row.DefaultCellStyle.BackColor = Color.Chartreuse;
                }
            }
        }
        /*private void textSearch_TextChanged(object sender, EventArgs e)
        {
            
            (productView.DataSource as DataTable).DefaultView.RowFilter = $"[Название] LIKE '%{textSearch.Text}%'";
            
            Count();
        }
        */
        private void productView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void productPhoto_Click(object sender, EventArgs e)
        {

        }

        private void cmbDiscount_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbDiscount.SelectedIndex == 0 )
            {
                (productView.DataSource as DataTable).DefaultView.RowFilter = $"[Размер скидки] >= 0 and [Название] LIKE '%{textSearch.Text}%'" ;
                Count();
                PaintRows();
            }
            else if (cmbDiscount.SelectedIndex == 1)
            {
                (productView.DataSource as DataTable).DefaultView.RowFilter = $"[Размер скидки] > 0 and [Размер скидки] < 10 and [Название] LIKE '%{textSearch.Text}%'";
                Count();
                PaintRows();
            }
            else if (cmbDiscount.SelectedIndex == 2)
            {
                (productView.DataSource as DataTable).DefaultView.RowFilter = $"[Размер скидки] >= 10 and [Размер скидки] < 15 and [Название] LIKE '%{textSearch.Text}%'";
                Count();
                PaintRows();
            }
            else if (cmbDiscount.SelectedIndex == 3)
            {
                (productView.DataSource as DataTable).DefaultView.RowFilter = $"[Размер скидки] >= 15 and [Название] LIKE '%{textSearch.Text}%'";
                Count();
                PaintRows();
            }
        }

        private void productView_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            
            if (e.Button == MouseButtons.Right)
            {
                
                Point po = Cursor.Position;
                conmenu.Show(po);
                foreach (DataGridViewRow r in productView.Rows)
                {
                    productView.Rows[r.Index].Selected = false;
                }
                productView.Rows[e.RowIndex].Selected = true;

                

                //tsmItem.ContextMenuItem = conmenu;
            }
            if (e.Button == MouseButtons.Left)
            {
                panelBottom.Visible = true;
                productView.Size = new Size(880, 282);
                if (e.RowIndex == -1) return;
                DataGridViewRow row = productView.Rows[e.RowIndex];
                ProductName.Text = "Наименование товара: " + Convert.ToString(row.Cells[1].Value);
                Description.Text = "Описание товара: " + Convert.ToString(row.Cells[2].Value);
                int PriceInt = Convert.ToInt32(row.Cells[3].Value);
                int DiscountInt = Convert.ToInt16(row.Cells[4].Value);
                Price.Text = "Цена: " + Convert.ToString(PriceInt);

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
                    newPrice.Text = "Новая цена: " + Convert.ToString(PriceInt - (PriceInt / 100 * Convert.ToInt16(row.Cells[4].Value)));
                }
                else
                {
                    newPrice.Visible = false;
                    Price.Font = new Font(Price.Font, FontStyle.Regular);
                }
                Discount.Text = "Скидка:\r\n    " + Convert.ToString(DiscountInt) + "%";
                Manufacturer.Text = "Производитель: " + Convert.ToString(row.Cells[7].Value);
            }

            
        }

        private void rbtnIncrease_CheckedChanged(object sender, EventArgs e)
        {
            productView.Sort(productView.Columns[3], ListSortDirection.Ascending);
            PaintRows();
        }

        private void rbtnDescending_CheckedChanged(object sender, EventArgs e)
        {
            productView.Sort(productView.Columns[3], ListSortDirection.Descending);
            PaintRows();
        }
        private void conmenu_Click(object sender, EventArgs e)
        {

            btnBasket.Visible = true;
            foreach (DataGridViewRow rows in productView.SelectedRows)
            {

                DataGridViewRow row = productView.Rows[rows.Index];
                articles.Add(Convert.ToString(row.Cells[0].Value));
            }

        }
        private void btnBasket_Click(object sender, EventArgs e)
        {
            BasketForm bsk = new BasketForm();
            bsk.Show();
            Hide();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
