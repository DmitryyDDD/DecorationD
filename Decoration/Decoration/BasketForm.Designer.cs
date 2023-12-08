
namespace Decoration
{
    partial class BasketForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(BasketForm));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            this.panelTop = new System.Windows.Forms.Panel();
            this.labelUserName = new System.Windows.Forms.Label();
            this.labelName = new System.Windows.Forms.Label();
            this.btnClean = new System.Windows.Forms.Button();
            this.btnReturn = new System.Windows.Forms.Button();
            this.Logo = new System.Windows.Forms.PictureBox();
            this.numUD = new System.Windows.Forms.NumericUpDown();
            this.panelBottom = new System.Windows.Forms.Panel();
            this.panelDiscount = new System.Windows.Forms.Panel();
            this.CommonPrice = new System.Windows.Forms.Label();
            this.panelInfo = new System.Windows.Forms.Panel();
            this.newPrice = new System.Windows.Forms.Label();
            this.Price = new System.Windows.Forms.Label();
            this.Manufacturer = new System.Windows.Forms.Label();
            this.Description = new System.Windows.Forms.Label();
            this.ProductName = new System.Windows.Forms.Label();
            this.panelPhoto = new System.Windows.Forms.Panel();
            this.pictureProduct = new System.Windows.Forms.PictureBox();
            this.productView = new System.Windows.Forms.DataGridView();
            this.btnExit = new System.Windows.Forms.Button();
            this.panelTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numUD)).BeginInit();
            this.panelBottom.SuspendLayout();
            this.panelDiscount.SuspendLayout();
            this.panelInfo.SuspendLayout();
            this.panelPhoto.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureProduct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.productView)).BeginInit();
            this.SuspendLayout();
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panelTop.Controls.Add(this.panelDiscount);
            this.panelTop.Controls.Add(this.btnExit);
            this.panelTop.Controls.Add(this.labelUserName);
            this.panelTop.Controls.Add(this.labelName);
            this.panelTop.Controls.Add(this.btnClean);
            this.panelTop.Controls.Add(this.btnReturn);
            this.panelTop.Controls.Add(this.Logo);
            this.panelTop.Location = new System.Drawing.Point(1, 1);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(879, 97);
            this.panelTop.TabIndex = 1;
            // 
            // labelUserName
            // 
            this.labelUserName.AutoSize = true;
            this.labelUserName.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.labelUserName.Location = new System.Drawing.Point(326, 9);
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
            // btnClean
            // 
            this.btnClean.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.btnClean.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.btnClean.Location = new System.Drawing.Point(614, 51);
            this.btnClean.Name = "btnClean";
            this.btnClean.Size = new System.Drawing.Size(166, 32);
            this.btnClean.TabIndex = 6;
            this.btnClean.Text = "Очистить корзину";
            this.btnClean.UseVisualStyleBackColor = false;
            this.btnClean.Click += new System.EventHandler(this.btnClean_Click);
            // 
            // btnReturn
            // 
            this.btnReturn.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.btnReturn.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.btnReturn.Location = new System.Drawing.Point(409, 51);
            this.btnReturn.Name = "btnReturn";
            this.btnReturn.Size = new System.Drawing.Size(196, 32);
            this.btnReturn.TabIndex = 7;
            this.btnReturn.Text = "Вернуться на главную";
            this.btnReturn.UseVisualStyleBackColor = false;
            this.btnReturn.Click += new System.EventHandler(this.btnReturn_Click);
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
            // numUD
            // 
            this.numUD.Font = new System.Drawing.Font("Comic Sans MS", 9.75F);
            this.numUD.Location = new System.Drawing.Point(514, 7);
            this.numUD.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numUD.Name = "numUD";
            this.numUD.Size = new System.Drawing.Size(46, 26);
            this.numUD.TabIndex = 10;
            this.numUD.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.numUD.ValueChanged += new System.EventHandler(this.numUD_ValueChanged);
            // 
            // panelBottom
            // 
            this.panelBottom.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(204)))), ((int)(((byte)(153)))));
            this.panelBottom.Controls.Add(this.panelInfo);
            this.panelBottom.Controls.Add(this.panelPhoto);
            this.panelBottom.Location = new System.Drawing.Point(1, 370);
            this.panelBottom.Name = "panelBottom";
            this.panelBottom.Size = new System.Drawing.Size(879, 149);
            this.panelBottom.TabIndex = 4;
            this.panelBottom.Visible = false;
            // 
            // panelDiscount
            // 
            this.panelDiscount.BackColor = System.Drawing.Color.White;
            this.panelDiscount.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelDiscount.Controls.Add(this.CommonPrice);
            this.panelDiscount.Location = new System.Drawing.Point(93, 35);
            this.panelDiscount.Name = "panelDiscount";
            this.panelDiscount.Size = new System.Drawing.Size(117, 52);
            this.panelDiscount.TabIndex = 10;
            // 
            // CommonPrice
            // 
            this.CommonPrice.AutoSize = true;
            this.CommonPrice.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.CommonPrice.Location = new System.Drawing.Point(15, 7);
            this.CommonPrice.Name = "CommonPrice";
            this.CommonPrice.Size = new System.Drawing.Size(86, 18);
            this.CommonPrice.TabIndex = 6;
            this.CommonPrice.Text = "Общая цена:";
            // 
            // panelInfo
            // 
            this.panelInfo.BackColor = System.Drawing.Color.White;
            this.panelInfo.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelInfo.Controls.Add(this.numUD);
            this.panelInfo.Controls.Add(this.newPrice);
            this.panelInfo.Controls.Add(this.Price);
            this.panelInfo.Controls.Add(this.Manufacturer);
            this.panelInfo.Controls.Add(this.Description);
            this.panelInfo.Controls.Add(this.ProductName);
            this.panelInfo.Location = new System.Drawing.Point(244, 18);
            this.panelInfo.Name = "panelInfo";
            this.panelInfo.Size = new System.Drawing.Size(567, 109);
            this.panelInfo.TabIndex = 6;
            // 
            // newPrice
            // 
            this.newPrice.AutoSize = true;
            this.newPrice.Font = new System.Drawing.Font("Comic Sans MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.newPrice.Location = new System.Drawing.Point(114, 76);
            this.newPrice.Name = "newPrice";
            this.newPrice.Size = new System.Drawing.Size(117, 18);
            this.newPrice.TabIndex = 7;
            this.newPrice.Text = "Цена со скидкой:";
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
            this.panelPhoto.TabIndex = 8;
            // 
            // pictureProduct
            // 
            this.pictureProduct.Image = ((System.Drawing.Image)(resources.GetObject("pictureProduct.Image")));
            this.pictureProduct.Location = new System.Drawing.Point(0, -2);
            this.pictureProduct.Name = "pictureProduct";
            this.pictureProduct.Size = new System.Drawing.Size(130, 109);
            this.pictureProduct.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureProduct.TabIndex = 4;
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
            this.productView.Location = new System.Drawing.Point(0, 100);
            this.productView.Name = "productView";
            this.productView.ReadOnly = true;
            this.productView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.productView.Size = new System.Drawing.Size(880, 282);
            this.productView.TabIndex = 5;
            this.productView.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.productView_inBasket_CellMouseClick);
            // 
            // btnExit
            // 
            this.btnExit.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(102)))), ((int)(((byte)(0)))));
            this.btnExit.Font = new System.Drawing.Font("Comic Sans MS", 12F);
            this.btnExit.Location = new System.Drawing.Point(786, 51);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(80, 32);
            this.btnExit.TabIndex = 18;
            this.btnExit.Text = "Выйти";
            this.btnExit.UseVisualStyleBackColor = false;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // BasketForm
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
            this.Name = "BasketForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Украшение";
            this.Load += new System.EventHandler(this.BasketForm_Load);
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Logo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numUD)).EndInit();
            this.panelBottom.ResumeLayout(false);
            this.panelDiscount.ResumeLayout(false);
            this.panelDiscount.PerformLayout();
            this.panelInfo.ResumeLayout(false);
            this.panelInfo.PerformLayout();
            this.panelPhoto.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureProduct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.productView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Label labelUserName;
        private System.Windows.Forms.Label labelName;
        private System.Windows.Forms.PictureBox Logo;
        private System.Windows.Forms.Panel panelBottom;
        private System.Windows.Forms.DataGridView productView;
        private System.Windows.Forms.Button btnClean;
        private System.Windows.Forms.Button btnReturn;
        private System.Windows.Forms.Panel panelPhoto;
        private System.Windows.Forms.PictureBox pictureProduct;
        private System.Windows.Forms.Panel panelInfo;
        private System.Windows.Forms.Label newPrice;
        private System.Windows.Forms.Label Price;
        private System.Windows.Forms.Label Manufacturer;
        private System.Windows.Forms.Label Description;
        private System.Windows.Forms.Label ProductName;
        private System.Windows.Forms.Panel panelDiscount;
        private System.Windows.Forms.Label CommonPrice;
        private System.Windows.Forms.NumericUpDown numUD;
        private System.Windows.Forms.Button btnExit;
    }
}