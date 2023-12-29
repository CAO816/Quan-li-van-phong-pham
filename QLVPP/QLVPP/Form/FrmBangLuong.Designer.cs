namespace QLVPP
{
    partial class FrmBangLuong
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmBangLuong));
            this.gvBangLuong = new System.Windows.Forms.DataGridView();
            this.lblThang = new System.Windows.Forms.Label();
            this.cbThang = new System.Windows.Forms.ComboBox();
            this.lblNam = new System.Windows.Forms.Label();
            this.cbNam = new System.Windows.Forms.ComboBox();
            this.MaNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoCa = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Luong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnXem = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.gvBangLuong)).BeginInit();
            this.SuspendLayout();
            // 
            // gvBangLuong
            // 
            this.gvBangLuong.AllowUserToAddRows = false;
            this.gvBangLuong.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvBangLuong.BackgroundColor = System.Drawing.Color.White;
            this.gvBangLuong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvBangLuong.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaNV,
            this.HoNV,
            this.TenNV,
            this.SoCa,
            this.Luong});
            this.gvBangLuong.Location = new System.Drawing.Point(3, 91);
            this.gvBangLuong.Name = "gvBangLuong";
            this.gvBangLuong.ReadOnly = true;
            this.gvBangLuong.RowHeadersVisible = false;
            this.gvBangLuong.RowHeadersWidth = 62;
            this.gvBangLuong.RowTemplate.Height = 28;
            this.gvBangLuong.Size = new System.Drawing.Size(1200, 505);
            this.gvBangLuong.TabIndex = 0;
            // 
            // lblThang
            // 
            this.lblThang.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblThang.AutoSize = true;
            this.lblThang.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThang.ForeColor = System.Drawing.Color.White;
            this.lblThang.Location = new System.Drawing.Point(36, 32);
            this.lblThang.Name = "lblThang";
            this.lblThang.Size = new System.Drawing.Size(127, 29);
            this.lblThang.TabIndex = 3;
            this.lblThang.Text = "Chọn tháng";
            // 
            // cbThang
            // 
            this.cbThang.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbThang.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbThang.FormattingEnabled = true;
            this.cbThang.Items.AddRange(new object[] {
            "1",
            "2",
            "3",
            "4",
            "5",
            "6",
            "7",
            "8",
            "9",
            "10",
            "11",
            "12"});
            this.cbThang.Location = new System.Drawing.Point(181, 29);
            this.cbThang.Name = "cbThang";
            this.cbThang.Size = new System.Drawing.Size(112, 32);
            this.cbThang.TabIndex = 2;
            // 
            // lblNam
            // 
            this.lblNam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblNam.AutoSize = true;
            this.lblNam.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNam.ForeColor = System.Drawing.Color.White;
            this.lblNam.Location = new System.Drawing.Point(368, 32);
            this.lblNam.Name = "lblNam";
            this.lblNam.Size = new System.Drawing.Size(114, 29);
            this.lblNam.TabIndex = 5;
            this.lblNam.Text = "Chọn năm";
            // 
            // cbNam
            // 
            this.cbNam.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cbNam.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbNam.FormattingEnabled = true;
            this.cbNam.Items.AddRange(new object[] {
            "2023",
            "2024",
            "2035",
            "2026",
            "2027",
            "2028",
            "2029",
            "2030",
            "2031",
            "2032",
            "2033",
            "2034",
            "2035",
            "2036",
            "2037",
            "2038",
            "2039",
            "2040"});
            this.cbNam.Location = new System.Drawing.Point(513, 29);
            this.cbNam.Name = "cbNam";
            this.cbNam.Size = new System.Drawing.Size(112, 32);
            this.cbNam.TabIndex = 4;
            // 
            // MaNV
            // 
            this.MaNV.DataPropertyName = "MaNV";
            this.MaNV.HeaderText = "Mã nhân viên";
            this.MaNV.MinimumWidth = 8;
            this.MaNV.Name = "MaNV";
            this.MaNV.ReadOnly = true;
            this.MaNV.Width = 250;
            // 
            // HoNV
            // 
            this.HoNV.DataPropertyName = "HoNV";
            this.HoNV.HeaderText = "Họ";
            this.HoNV.MinimumWidth = 8;
            this.HoNV.Name = "HoNV";
            this.HoNV.ReadOnly = true;
            this.HoNV.Width = 250;
            // 
            // TenNV
            // 
            this.TenNV.DataPropertyName = "TenNV";
            this.TenNV.HeaderText = "Tên";
            this.TenNV.MinimumWidth = 8;
            this.TenNV.Name = "TenNV";
            this.TenNV.ReadOnly = true;
            this.TenNV.Width = 250;
            // 
            // SoCa
            // 
            this.SoCa.DataPropertyName = "SoCa";
            this.SoCa.HeaderText = "Số ca trong tháng";
            this.SoCa.MinimumWidth = 8;
            this.SoCa.Name = "SoCa";
            this.SoCa.ReadOnly = true;
            this.SoCa.Width = 250;
            // 
            // Luong
            // 
            this.Luong.DataPropertyName = "Luong";
            this.Luong.HeaderText = "Lương tháng";
            this.Luong.MinimumWidth = 8;
            this.Luong.Name = "Luong";
            this.Luong.ReadOnly = true;
            this.Luong.Width = 250;
            // 
            // btnXem
            // 
            this.btnXem.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.btnXem.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnXem.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXem.ForeColor = System.Drawing.Color.White;
            this.btnXem.Location = new System.Drawing.Point(762, 28);
            this.btnXem.Name = "btnXem";
            this.btnXem.Size = new System.Drawing.Size(125, 32);
            this.btnXem.TabIndex = 6;
            this.btnXem.Text = "Xem";
            this.btnXem.UseVisualStyleBackColor = true;
            this.btnXem.Click += new System.EventHandler(this.btnXem_Click);
            // 
            // FrmBangLuong
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.ClientSize = new System.Drawing.Size(1206, 597);
            this.Controls.Add(this.btnXem);
            this.Controls.Add(this.lblNam);
            this.Controls.Add(this.cbNam);
            this.Controls.Add(this.lblThang);
            this.Controls.Add(this.cbThang);
            this.Controls.Add(this.gvBangLuong);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmBangLuong";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Bảng lương nhân viên";
            ((System.ComponentModel.ISupportInitialize)(this.gvBangLuong)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView gvBangLuong;
        private System.Windows.Forms.Label lblThang;
        private System.Windows.Forms.ComboBox cbThang;
        private System.Windows.Forms.Label lblNam;
        private System.Windows.Forms.ComboBox cbNam;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoCa;
        private System.Windows.Forms.DataGridViewTextBoxColumn Luong;
        private System.Windows.Forms.Button btnXem;
    }
}