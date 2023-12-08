namespace Decoration
{
    partial class Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panelTop = new System.Windows.Forms.Panel();
            this.lblCount = new System.Windows.Forms.Label();
            this.rbtnDescending = new System.Windows.Forms.RadioButton();
            this.rbtnIncrease = new System.Windows.Forms.RadioButton();
            this.Sortby = new System.Windows.Forms.Label();
            this.FilterbyDiscount = new System.Windows.Forms.Label();
            this.Searchbyname = new System.Windows.Forms.Label();
            this.cmbDiscount = new System.Windows.Forms.ComboBox();
            this.labelUserName = new System.Windows.Forms.Label();
            this.labelName = new System.Windows.Forms.Label();
            this.textSearch = new System.Windows.Forms.TextBox();
            this.Logo = new System.Windows.Forms.PictureBox();
            this.panelBottom = new System.Windows.Forms.Panel();
            this.btnBasket = new System.Windows.Forms.Button();
            this.panelDiscount = new System.Windows.Forms.Panel();
            this.Discount = new System.Windows.Forms.Label();
            this.panelInfo = new System.Windows.Forms.Panel();
            this.newPrice = new System.Windows.Forms.Label();
            this.Price = new System.Windows.Forms.Label();
            this.Manufacturer = new System.Windows.Forms.Label();
            this.Description = new System.Windows.Forms.Label();
            this.ProductName = new System.Windows.Forms.Label();
            this.panelPhoto = new System.Windows.Forms.Panel();
            this.pictureProduct = new System.Windows.Forms.PictureBox();
            this.productView = new System.Windows.Forms.DataGridView();
            this.conmenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tsmItem = new System.Windows.Forms.ToolStripMenuItem();
            this.btnExit = new System.Windows.Forms.Button();
            this.panelTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).BeginInit();
            this.panelBottom.SuspendLayout();
            this.panelDiscount.SuspendLayout();
            this.panelInfo.SuspendLayout();
            this.panelPhoto.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureProduct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.productView)).BeginInit();
            this.conmenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panelTop.Controls.Add(this.btnExit);
            this.panelTop.Controls.Add(this.btnBasket);
            this.panelTop.Controls.Add(this.lblCount);
            this.panelTop.Controls.Add(this.rbtnDescending);
            this.panelTop.Controls.Add(this.rbtnIncrease);
            this.panelTop.Controls.Add(this.Sortby);
            this.panelTop.Controls.Add(this.FilterbyDiscount);
            this.panelTop.Controls.Add(this.Searchbyname);
            this.panelTop.Controls.Add(this.cmbDiscount);
            this.panelTop.Controls.Add(this.labelUserName);
            this.panelTop.Controls.Add(this.labelName);
            this.panelTop.Controls.Add(this.textSearch);
            this.panelTop.Controls.Add(this.Logo);
            this.panelTop.Location = new System.Drawing.Point(0, 0);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(880, 97);
            this.panelTop.TabIndex = 0;
            // 
            // lblCount
            // 
            this.lblCount.AutoSize = true;
            this.lblCount.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.lblCount.Location = new System.Drawing.Point(784, 68);
            this.lblCount.Name = "lblCount";
            this.lblCount.Size = new System.Drawing.Size(15, 18);
            this.lblCount.TabIndex = 16;
            this.lblCount.Text = "/";
            // 
            // rbtnDescending
            // 
            this.rbtnDescending.AutoSize = true;
            this.rbtnDescending.Location = new System.Drawing.Point(604, 69);
            this.rbtnDescending.Name = "rbtnDescending";
            this.rbtnDescending.Size = new System.Drawing.Size(93, 17);
            this.rbtnDescending.TabIndex = 15;
            this.rbtnDescending.TabStop = true;
            this.rbtnDescending.Text = "По убыванию";
            this.rbtnDescending.UseVisualStyleBackColor = true;
            this.rbtnDescending.CheckedChanged += new System.EventHandler(this.rbtnDescending_CheckedChanged);
            // 
            // rbtnIncrease
            // 
            this.rbtnIncrease.AutoSize = true;
            this.rbtnIncrease.Location = new System.Drawing.Point(489, 69);
            this.rbtnIncrease.Name = "rbtnIncrease";
            this.rbtnIncrease.Size = new System.Drawing.Size(109, 17);
            this.rbtnIncrease.TabIndex = 14;
            this.rbtnIncrease.TabStop = true;
            this.rbtnIncrease.Text = "По возрастанию";
            this.rbtnIncrease.UseVisualStyleBackColor = true;
            this.rbtnIncrease.CheckedChanged += new System.EventHandler(this.rbtnIncrease_CheckedChanged);
            // 
            // Sortby
            // 
            this.Sortby.AutoSize = true;
            this.Sortby.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Sortby.Location = new System.Drawing.Point(486, 48);
            this.Sortby.Name = "Sortby";
            this.Sortby.Size = new System.Drawing.Size(178, 18);
            this.Sortby.TabIndex = 13;
            this.Sortby.Text = "Сортировать по стоимости";
            // 
            // FilterbyDiscount
            // 
            this.FilterbyDiscount.AutoSize = true;
            this.FilterbyDiscount.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.FilterbyDiscount.Location = new System.Drawing.Point(348, 48);
            this.FilterbyDiscount.Name = "FilterbyDiscount";
            this.FilterbyDiscount.Size = new System.Drawing.Size(117, 18);
            this.FilterbyDiscount.TabIndex = 12;
            this.FilterbyDiscount.Text = "Фильтр по скидке";
            // 
            // Searchbyname
            // 
            this.Searchbyname.AutoSize = true;
            this.Searchbyname.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Searchbyname.Location = new System.Drawing.Point(121, 48);
            this.Searchbyname.Name = "Searchbyname";
            this.Searchbyname.Size = new System.Drawing.Size(134, 18);
            this.Searchbyname.TabIndex = 11;
            this.Searchbyname.Text = "Поиск по названию";
            // 
            // cmbDiscount
            // 
            this.cmbDiscount.BackColor = System.Drawing.SystemColors.Window;
            this.cmbDiscount.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbDiscount.FormattingEnabled = true;
            this.cmbDiscount.Items.AddRange(new object[] {
            "Все диапазоны",
            "0-9,99%",
            "10-14,99%",
            "15% и более"});
            this.cmbDiscount.Location = new System.Drawing.Point(344, 68);
            this.cmbDiscount.Name = "cmbDiscount";
            this.cmbDiscount.Size = new System.Drawing.Size(121, 21);
            this.cmbDiscount.TabIndex = 10;
            this.cmbDiscount.SelectedIndexChanged += new System.EventHandler(this.cmbDiscount_SelectedIndexChanged);
            // 
            // labelUserName
            // 
            this.labelUserName.AutoSize = true;
            this.labelUserName.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.labelUserName.Location = new System.Drawing.Point(379, 9);
            this.labelUserName.Name = "labelUserName";
            this.labelUserName.Size = new System.Drawing.Size(53, 23);
            this.labelUserName.TabIndex = 9;
            this.labelUserName.Text = "Гость";
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.Font = new System.Drawing.Font("Comic Sans MS", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.labelName.Location = new System.Drawing.Point(89, 9);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(152, 23);
            this.labelName.TabIndex = 5;
            this.labelName.Text = "\"ООО\" Украшение";
            // 
            // textSearch
            // 
            this.textSearch.BackColor = System.Drawing.SystemColors.Window;
            this.textSearch.Location = new System.Drawing.Point(124, 69);
            this.textSearch.Name = "textSearch";
            this.textSearch.Size = new System.Drawing.Size(191, 20);
            this.textSearch.TabIndex = 2;
            this.textSearch.TextChanged += new System.EventHandler(this.cmbDiscount_SelectedIndexChanged);
            // 
            // Logo
            // 
            this.Logo.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.Logo.ErrorImage = null;
            this.Logo.ImageLocation = "";
            this.Logo.InitialImage = null;
            this.Logo.Location = new System.Drawing.Point(3, 3);
            this.Logo.Name = "Logo";
            this.Logo.Size = new System.Drawing.Size(80, 80);
            this.Logo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.Logo.TabIndex = 8;
            this.Logo.TabStop = false;
            // 
            // panelBottom
            // 
            this.panelBottom.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panelBottom.Controls.Add(this.panelDiscount);
            this.panelBottom.Controls.Add(this.panelInfo);
            this.panelBottom.Controls.Add(this.panelPhoto);
            this.panelBottom.Location = new System.Drawing.Point(0, 376);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(880, 143);
            this.panelBottom.TabIndex = 1;
            this.panelBottom.Visible = false;
            // 
            // btnBasket
            // 
            this.btnBasket.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.btnBasket.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.btnBasket.Location = new System.Drawing.Point(700, 9);
            this.btnBasket.Name = "btnBasket";
            this.btnBasket.Size = new System.Drawing.Size(91, 32);
            this.btnBasket.TabIndex = 4;
            this.btnBasket.Text = "Корзина";
            this.btnBasket.UseVisualStyleBackColor = false;
            this.btnBasket.Visible = false;
            this.btnBasket.Click += new System.EventHandler(this.btnBasket_Click);
            // 
            // panelDiscount
            // 
            this.panelDiscount.BackColor = System.Drawing.Color.White;
            this.panelDiscount.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelDiscount.Controls.Add(this.Discount);
            this.panelDiscount.Location = new System.Drawing.Point(725, 28);
            this.panelDiscount.Name = "panelDiscount";
            this.panelDiscount.Size = new System.Drawing.Size(117, 86);
            this.panelDiscount.TabIndex = 1;
            // 
            // Discount
            // 
            this.Discount.AutoSize = true;
            this.Discount.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Discount.Location = new System.Drawing.Point(23, 20);
            this.Discount.Name = "Discount";
            this.Discount.Size = new System.Drawing.Size(55, 18);
            this.Discount.TabIndex = 6;
            this.Discount.Text = "Скидка:";
            // 
            // panelInfo
            // 
            this.panelInfo.BackColor = System.Drawing.Color.White;
            this.panelInfo.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelInfo.Controls.Add(this.newPrice);
            this.panelInfo.Controls.Add(this.Price);
            this.panelInfo.Controls.Add(this.Manufacturer);
            this.panelInfo.Controls.Add(this.Description);
            this.panelInfo.Controls.Add(this.ProductName);
            this.panelInfo.Location = new System.Drawing.Point(213, 18);
            this.panelInfo.Name = "panelInfo";
            this.panelInfo.Size = new System.Drawing.Size(472, 109);
            this.panelInfo.TabIndex = 3;
            // 
            // newPrice
            // 
            this.newPrice.AutoSize = true;
            this.newPrice.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.newPrice.Location = new System.Drawing.Point(114, 76);
            this.newPrice.Name = "newPrice";
            this.newPrice.Size = new System.Drawing.Size(84, 18);
            this.newPrice.TabIndex = 7;
            this.newPrice.Text = "Новая цена:";
            this.newPrice.Visible = false;
            // 
            // Price
            // 
            this.Price.AutoSize = true;
            this.Price.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Price.Location = new System.Drawing.Point(14, 76);
            this.Price.Name = "Price";
            this.Price.Size = new System.Drawing.Size(43, 18);
            this.Price.TabIndex = 6;
            this.Price.Text = "Цена:";
            // 
            // Manufacturer
            // 
            this.Manufacturer.AutoSize = true;
            this.Manufacturer.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Manufacturer.Location = new System.Drawing.Point(14, 54);
            this.Manufacturer.Name = "Manufacturer";
            this.Manufacturer.Size = new System.Drawing.Size(111, 18);
            this.Manufacturer.TabIndex = 5;
            this.Manufacturer.Text = "Производитель:";
            // 
            // Description
            // 
            this.Description.AutoSize = true;
            this.Description.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Description.Location = new System.Drawing.Point(14, 30);
            this.Description.Name = "Description";
            this.Description.Size = new System.Drawing.Size(116, 18);
            this.Description.TabIndex = 4;
            this.Description.Text = "Описание товара";
            // 
            // ProductName
            // 
            this.ProductName.AutoSize = true;
            this.ProductName.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.ProductName.Location = new System.Drawing.Point(14, 8);
            this.ProductName.Name = "ProductName";
            this.ProductName.Size = new System.Drawing.Size(150, 19);
            this.ProductName.TabIndex = 3;
            this.ProductName.Text = "Наименование товара";
            // 
            // panelPhoto
            // 
            this.panelPhoto.BackColor = System.Drawing.Color.White;
            this.panelPhoto.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelPhoto.Controls.Add(this.pictureProduct);
            this.panelPhoto.Location = new System.Drawing.Point(39, 18);
            this.panelPhoto.Name = "panelPhoto";
            this.panelPhoto.Size = new System.Drawing.Size(132, 109);
            this.panelPhoto.TabIndex = 0;
            // 
            // pictureProduct
            // 
            this.pictureProduct.Image = ((System.Drawing.Image)(resources.GetObject("pictureProduct.Image")));
            this.pictureProduct.Location = new System.Drawing.Point(-2, -2);
            this.pictureProduct.Name = "pictureProduct";
            this.pictureProduct.Size = new System.Drawing.Size(130, 109);
            this.pictureProduct.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureProduct.TabIndex = 3;
            this.pictureProduct.TabStop = false;
            // 
            // productView
            // 
            this.productView.AllowUserToAddRows = false;
            this.productView.AllowUserToDeleteRows = false;
            this.productView.AllowUserToResizeColumns = false;
            this.productView.AllowUserToResizeRows = false;
            this.productView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.productView.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.productView.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.productView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle8.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle8.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle8.SelectionBackColor = System.Drawing.SystemColors.ScrollBar;
            dataGridViewCellStyle8.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle8.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.productView.DefaultCellStyle = dataGridViewCellStyle8;
            this.productView.Location = new System.Drawing.Point(0, 95);
            this.productView.Name = "productView";
            this.productView.ReadOnly = true;
            this.productView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.productView.Size = new System.Drawing.Size(880, 282);
            this.productView.TabIndex = 2;
            this.productView.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.productView_CellContentClick);
            this.productView.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.productView_CellMouseClick);
            // 
            // conmenu
            // 
            this.conmenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmItem});
            this.conmenu.Name = "conmenu";
            this.conmenu.Size = new System.Drawing.Size(173, 26);
            // 
            // tsmItem
            // 
            this.tsmItem.Name = "tsmItem";
            this.tsmItem.Size = new System.Drawing.Size(172, 22);
            this.tsmItem.Text = "Добавить к заказу";
            this.tsmItem.Click += new System.EventHandler(this.conmenu_Click);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.btnExit.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.btnExit.Location = new System.Drawing.Point(797, 9);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(80, 32);
            this.btnExit.TabIndex = 17;
            this.btnExit.Text = "Выйти";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.ClientSize = new System.Drawing.Size(879, 520);
            this.Controls.Add(this.productView);
            this.Controls.Add(this.panelBottom);
            this.Controls.Add(this.panelTop);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Украшение";
            this.Load += new System.EventHandler(this.Main_Load);
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).EndInit();
            this.panelBottom.ResumeLayout(false);
            this.panelDiscount.ResumeLayout(false);
            this.panelDiscount.PerformLayout();
            this.panelInfo.ResumeLayout(false);
            this.panelInfo.PerformLayout();
            this.panelPhoto.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureProduct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.productView)).EndInit();
            this.conmenu.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Panel panelBottom;
        private System.Windows.Forms.PictureBox Logo;
        private System.Windows.Forms.TextBox textSearch;
        private System.Windows.Forms.Label labelName;
        private System.Windows.Forms.Label labelUserName;
        private System.Windows.Forms.DataGridView productView;
        private System.Windows.Forms.Panel panelDiscount;
        private System.Windows.Forms.Panel panelInfo;
        private System.Windows.Forms.Panel panelPhoto;
        private System.Windows.Forms.Label Price;
        private System.Windows.Forms.Label Manufacturer;
        private System.Windows.Forms.Label Description;
        private System.Windows.Forms.Label ProductName;
        private System.Windows.Forms.ComboBox cmbDiscount;
        private System.Windows.Forms.Label Discount;
        private System.Windows.Forms.Label Searchbyname;
        private System.Windows.Forms.Label FilterbyDiscount;
        private System.Windows.Forms.Label Sortby;
        private System.Windows.Forms.RadioButton rbtnDescending;
        private System.Windows.Forms.RadioButton rbtnIncrease;
        private System.Windows.Forms.PictureBox pictureProduct;
        private System.Windows.Forms.Label newPrice;
        private System.Windows.Forms.Label lblCount;
        private System.Windows.Forms.Button btnBasket;
        private System.Windows.Forms.ContextMenuStrip conmenu;
        private System.Windows.Forms.ToolStripMenuItem tsmItem;
        private System.Windows.Forms.Button btnExit;
    }
}