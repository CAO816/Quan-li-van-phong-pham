namespace QLVPP.Form
{
    partial class FrmDonNhap
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmDonNhap));
            this.lblDonNhap = new System.Windows.Forms.Label();
            this.txtMaDN = new System.Windows.Forms.TextBox();
            this.lblMaDN = new System.Windows.Forms.Label();
            this.lblNgay = new System.Windows.Forms.Label();
            this.dateTimePickerNgay = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerGio = new System.Windows.Forms.DateTimePicker();
            this.lblGio = new System.Windows.Forms.Label();
            this.gvDonNhap = new System.Windows.Forms.DataGridView();
            this.TenSP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DonGia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ThanhTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtThue = new System.Windows.Forms.TextBox();
            this.lblThue = new System.Windows.Forms.Label();
            this.txtTong = new System.Windows.Forms.TextBox();
            this.lblTong = new System.Windows.Forms.Label();
            this.txtNCC = new System.Windows.Forms.TextBox();
            this.lblNCC = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gvDonNhap)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDonNhap
            // 
            this.lblDonNhap.AutoSize = true;
            this.lblDonNhap.Font = new System.Drawing.Font("Calibri", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDonNhap.ForeColor = System.Drawing.Color.White;
            this.lblDonNhap.Location = new System.Drawing.Point(39, 20);
            this.lblDonNhap.Name = "lblDonNhap";
            this.lblDonNhap.Size = new System.Drawing.Size(126, 29);
            this.lblDonNhap.TabIndex = 0;
            this.lblDonNhap.Text = "ĐƠN NHẬP";
            // 
            // txtMaDN
            // 
            this.txtMaDN.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMaDN.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaDN.Location = new System.Drawing.Point(196, 64);
            this.txtMaDN.Name = "txtMaDN";
            this.txtMaDN.ReadOnly = true;
            this.txtMaDN.Size = new System.Drawing.Size(147, 32);
            this.txtMaDN.TabIndex = 26;
            // 
            // lblMaDN
            // 
            this.lblMaDN.AutoSize = true;
            this.lblMaDN.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaDN.ForeColor = System.Drawing.Color.White;
            this.lblMaDN.Location = new System.Drawing.Point(41, 67);
            this.lblMaDN.Name = "lblMaDN";
            this.lblMaDN.Size = new System.Drawing.Size(124, 24);
            this.lblMaDN.TabIndex = 27;
            this.lblMaDN.Text = "Mã đơn nhập";
            // 
            // lblNgay
            // 
            this.lblNgay.AutoSize = true;
            this.lblNgay.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNgay.ForeColor = System.Drawing.Color.White;
            this.lblNgay.Location = new System.Drawing.Point(45, 125);
            this.lblNgay.Name = "lblNgay";
            this.lblNgay.Size = new System.Drawing.Size(51, 24);
            this.lblNgay.TabIndex = 30;
            this.lblNgay.Text = "Ngày";
            // 
            // dateTimePickerNgay
            // 
            this.dateTimePickerNgay.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerNgay.Location = new System.Drawing.Point(126, 123);
            this.dateTimePickerNgay.Name = "dateTimePickerNgay";
            this.dateTimePickerNgay.Size = new System.Drawing.Size(145, 26);
            this.dateTimePickerNgay.TabIndex = 31;
            // 
            // dateTimePickerGio
            // 
            this.dateTimePickerGio.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dateTimePickerGio.Location = new System.Drawing.Point(408, 123);
            this.dateTimePickerGio.Name = "dateTimePickerGio";
            this.dateTimePickerGio.Size = new System.Drawing.Size(145, 26);
            this.dateTimePickerGio.TabIndex = 33;
            // 
            // lblGio
            // 
            this.lblGio.AutoSize = true;
            this.lblGio.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGio.ForeColor = System.Drawing.Color.White;
            this.lblGio.Location = new System.Drawing.Point(327, 125);
            this.lblGio.Name = "lblGio";
            this.lblGio.Size = new System.Drawing.Size(40, 24);
            this.lblGio.TabIndex = 32;
            this.lblGio.Text = "Giờ";
            // 
            // gvDonNhap
            // 
            this.gvDonNhap.AllowUserToAddRows = false;
            this.gvDonNhap.AllowUserToDeleteRows = false;
            this.gvDonNhap.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvDonNhap.BackgroundColor = System.Drawing.Color.White;
            this.gvDonNhap.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvDonNhap.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TenSP,
            this.SoLuong,
            this.DonGia,
            this.ThanhTien});
            this.gvDonNhap.Location = new System.Drawing.Point(24, 171);
            this.gvDonNhap.Name = "gvDonNhap";
            this.gvDonNhap.ReadOnly = true;
            this.gvDonNhap.RowHeadersVisible = false;
            this.gvDonNhap.RowHeadersWidth = 62;
            this.gvDonNhap.RowTemplate.Height = 28;
            this.gvDonNhap.Size = new System.Drawing.Size(657, 324);
            this.gvDonNhap.TabIndex = 34;
            // 
            // TenSP
            // 
            this.TenSP.DataPropertyName = "TenSP";
            this.TenSP.HeaderText = "Tên sản phẩm";
            this.TenSP.MinimumWidth = 8;
            this.TenSP.Name = "TenSP";
            this.TenSP.ReadOnly = true;
            this.TenSP.Width = 200;
            // 
            // SoLuong
            // 
            this.SoLuong.DataPropertyName = "SoLuong";
            this.SoLuong.HeaderText = "Số lượng";
            this.SoLuong.MinimumWidth = 8;
            this.SoLuong.Name = "SoLuong";
            this.SoLuong.ReadOnly = true;
            this.SoLuong.Width = 150;
            // 
            // DonGia
            // 
            this.DonGia.DataPropertyName = "DonGia";
            this.DonGia.HeaderText = "Đơn giá";
            this.DonGia.MinimumWidth = 8;
            this.DonGia.Name = "DonGia";
            this.DonGia.ReadOnly = true;
            this.DonGia.Width = 150;
            // 
            // ThanhTien
            // 
            this.ThanhTien.DataPropertyName = "ThanhTien";
            this.ThanhTien.HeaderText = "Thành tiền";
            this.ThanhTien.MinimumWidth = 8;
            this.ThanhTien.Name = "ThanhTien";
            this.ThanhTien.ReadOnly = true;
            this.ThanhTien.Width = 150;
            // 
            // txtThue
            // 
            this.txtThue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtThue.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThue.Location = new System.Drawing.Point(126, 525);
            this.txtThue.Name = "txtThue";
            this.txtThue.ReadOnly = true;
            this.txtThue.Size = new System.Drawing.Size(147, 32);
            this.txtThue.TabIndex = 37;
            this.txtThue.Text = "0";
            // 
            // lblThue
            // 
            this.lblThue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblThue.AutoSize = true;
            this.lblThue.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThue.ForeColor = System.Drawing.Color.White;
            this.lblThue.Location = new System.Drawing.Point(45, 528);
            this.lblThue.Name = "lblThue";
            this.lblThue.Size = new System.Drawing.Size(52, 24);
            this.lblThue.TabIndex = 38;
            this.lblThue.Text = "Thuế";
            // 
            // txtTong
            // 
            this.txtTong.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTong.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTong.Location = new System.Drawing.Point(485, 525);
            this.txtTong.Name = "txtTong";
            this.txtTong.ReadOnly = true;
            this.txtTong.Size = new System.Drawing.Size(196, 32);
            this.txtTong.TabIndex = 39;
            // 
            // lblTong
            // 
            this.lblTong.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblTong.AutoSize = true;
            this.lblTong.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTong.ForeColor = System.Drawing.Color.White;
            this.lblTong.Location = new System.Drawing.Point(330, 528);
            this.lblTong.Name = "lblTong";
            this.lblTong.Size = new System.Drawing.Size(148, 24);
            this.lblTong.TabIndex = 40;
            this.lblTong.Text = "Tổng thanh toán";
            // 
            // txtNCC
            // 
            this.txtNCC.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtNCC.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNCC.Location = new System.Drawing.Point(519, 64);
            this.txtNCC.Name = "txtNCC";
            this.txtNCC.ReadOnly = true;
            this.txtNCC.Size = new System.Drawing.Size(162, 32);
            this.txtNCC.TabIndex = 41;
            // 
            // lblNCC
            // 
            this.lblNCC.AutoSize = true;
            this.lblNCC.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNCC.ForeColor = System.Drawing.Color.White;
            this.lblNCC.Location = new System.Drawing.Point(364, 67);
            this.lblNCC.Name = "lblNCC";
            this.lblNCC.Size = new System.Drawing.Size(122, 24);
            this.lblNCC.TabIndex = 42;
            this.lblNCC.Text = "Nhà cung cấp";
            // 
            // FrmDonNhap
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.ClientSize = new System.Drawing.Size(705, 600);
            this.Controls.Add(this.txtNCC);
            this.Controls.Add(this.lblNCC);
            this.Controls.Add(this.txtTong);
            this.Controls.Add(this.lblTong);
            this.Controls.Add(this.txtThue);
            this.Controls.Add(this.lblThue);
            this.Controls.Add(this.gvDonNhap);
            this.Controls.Add(this.dateTimePickerGio);
            this.Controls.Add(this.lblGio);
            this.Controls.Add(this.dateTimePickerNgay);
            this.Controls.Add(this.lblNgay);
            this.Controls.Add(this.txtMaDN);
            this.Controls.Add(this.lblMaDN);
            this.Controls.Add(this.lblDonNhap);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmDonNhap";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmHoaDon";
            this.Load += new System.EventHandler(this.FrmHoaDon_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvDonNhap)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblDonNhap;
        private System.Windows.Forms.TextBox txtMaDN;
        private System.Windows.Forms.Label lblMaDN;
        private System.Windows.Forms.Label lblNgay;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgay;
        private System.Windows.Forms.DateTimePicker dateTimePickerGio;
        private System.Windows.Forms.Label lblGio;
        private System.Windows.Forms.DataGridView gvDonNhap;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSP;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn DonGia;
        private System.Windows.Forms.DataGridViewTextBoxColumn ThanhTien;
        private System.Windows.Forms.TextBox txtThue;
        private System.Windows.Forms.Label lblThue;
        private System.Windows.Forms.TextBox txtTong;
        private System.Windows.Forms.Label lblTong;
        private System.Windows.Forms.TextBox txtNCC;
        private System.Windows.Forms.Label lblNCC;
    }
}