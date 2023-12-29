namespace QLVPP.Form
{
    partial class FrmHoaDon
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmHoaDon));
            this.lblHoaDon = new System.Windows.Forms.Label();
            this.txtMaHD = new System.Windows.Forms.TextBox();
            this.lblMaHD = new System.Windows.Forms.Label();
            this.lblNgay = new System.Windows.Forms.Label();
            this.dateTimePickerNgay = new System.Windows.Forms.DateTimePicker();
            this.dateTimePickerGio = new System.Windows.Forms.DateTimePicker();
            this.lblGio = new System.Windows.Forms.Label();
            this.gvHoaDon = new System.Windows.Forms.DataGridView();
            this.TenSP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DonGia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ThanhTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtUuDai = new System.Windows.Forms.TextBox();
            this.lblUuDai = new System.Windows.Forms.Label();
            this.txtThue = new System.Windows.Forms.TextBox();
            this.lblThue = new System.Windows.Forms.Label();
            this.txtTong = new System.Windows.Forms.TextBox();
            this.lblTong = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.gvHoaDon)).BeginInit();
            this.SuspendLayout();
            // 
            // lblHoaDon
            // 
            this.lblHoaDon.AutoSize = true;
            this.lblHoaDon.Font = new System.Drawing.Font("Calibri", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHoaDon.ForeColor = System.Drawing.Color.White;
            this.lblHoaDon.Location = new System.Drawing.Point(39, 20);
            this.lblHoaDon.Name = "lblHoaDon";
            this.lblHoaDon.Size = new System.Drawing.Size(113, 29);
            this.lblHoaDon.TabIndex = 0;
            this.lblHoaDon.Text = "HÓA ĐƠN";
            // 
            // txtMaHD
            // 
            this.txtMaHD.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMaHD.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaHD.Location = new System.Drawing.Point(196, 64);
            this.txtMaHD.Name = "txtMaHD";
            this.txtMaHD.Size = new System.Drawing.Size(147, 32);
            this.txtMaHD.TabIndex = 26;
            // 
            // lblMaHD
            // 
            this.lblMaHD.AutoSize = true;
            this.lblMaHD.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaHD.ForeColor = System.Drawing.Color.White;
            this.lblMaHD.Location = new System.Drawing.Point(41, 67);
            this.lblMaHD.Name = "lblMaHD";
            this.lblMaHD.Size = new System.Drawing.Size(113, 24);
            this.lblMaHD.TabIndex = 27;
            this.lblMaHD.Text = "Mã hóa đơn";
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
            // gvHoaDon
            // 
            this.gvHoaDon.AllowUserToAddRows = false;
            this.gvHoaDon.AllowUserToDeleteRows = false;
            this.gvHoaDon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvHoaDon.BackgroundColor = System.Drawing.Color.White;
            this.gvHoaDon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvHoaDon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.TenSP,
            this.SoLuong,
            this.DonGia,
            this.ThanhTien});
            this.gvHoaDon.Location = new System.Drawing.Point(24, 171);
            this.gvHoaDon.Name = "gvHoaDon";
            this.gvHoaDon.ReadOnly = true;
            this.gvHoaDon.RowHeadersVisible = false;
            this.gvHoaDon.RowHeadersWidth = 62;
            this.gvHoaDon.RowTemplate.Height = 28;
            this.gvHoaDon.Size = new System.Drawing.Size(657, 263);
            this.gvHoaDon.TabIndex = 34;
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
            // txtUuDai
            // 
            this.txtUuDai.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtUuDai.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUuDai.Location = new System.Drawing.Point(126, 450);
            this.txtUuDai.Name = "txtUuDai";
            this.txtUuDai.Size = new System.Drawing.Size(147, 32);
            this.txtUuDai.TabIndex = 35;
            this.txtUuDai.Text = "0";
            // 
            // lblUuDai
            // 
            this.lblUuDai.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblUuDai.AutoSize = true;
            this.lblUuDai.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUuDai.ForeColor = System.Drawing.Color.White;
            this.lblUuDai.Location = new System.Drawing.Point(41, 458);
            this.lblUuDai.Name = "lblUuDai";
            this.lblUuDai.Size = new System.Drawing.Size(65, 24);
            this.lblUuDai.TabIndex = 36;
            this.lblUuDai.Text = "Ưu đãi";
            // 
            // txtThue
            // 
            this.txtThue.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtThue.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtThue.Location = new System.Drawing.Point(126, 510);
            this.txtThue.Name = "txtThue";
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
            this.lblThue.Location = new System.Drawing.Point(41, 518);
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
            this.txtTong.Location = new System.Drawing.Point(485, 450);
            this.txtTong.Name = "txtTong";
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
            this.lblTong.Location = new System.Drawing.Point(330, 453);
            this.lblTong.Name = "lblTong";
            this.lblTong.Size = new System.Drawing.Size(148, 24);
            this.lblTong.TabIndex = 40;
            this.lblTong.Text = "Tổng thanh toán";
            // 
            // FrmHoaDon
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.ClientSize = new System.Drawing.Size(705, 656);
            this.Controls.Add(this.txtTong);
            this.Controls.Add(this.lblTong);
            this.Controls.Add(this.txtThue);
            this.Controls.Add(this.lblThue);
            this.Controls.Add(this.txtUuDai);
            this.Controls.Add(this.lblUuDai);
            this.Controls.Add(this.gvHoaDon);
            this.Controls.Add(this.dateTimePickerGio);
            this.Controls.Add(this.lblGio);
            this.Controls.Add(this.dateTimePickerNgay);
            this.Controls.Add(this.lblNgay);
            this.Controls.Add(this.txtMaHD);
            this.Controls.Add(this.lblMaHD);
            this.Controls.Add(this.lblHoaDon);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmHoaDon";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmHoaDon";
            this.Load += new System.EventHandler(this.FrmHoaDon_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvHoaDon)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblHoaDon;
        private System.Windows.Forms.TextBox txtMaHD;
        private System.Windows.Forms.Label lblMaHD;
        private System.Windows.Forms.Label lblNgay;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgay;
        private System.Windows.Forms.DateTimePicker dateTimePickerGio;
        private System.Windows.Forms.Label lblGio;
        private System.Windows.Forms.DataGridView gvHoaDon;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenSP;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn DonGia;
        private System.Windows.Forms.DataGridViewTextBoxColumn ThanhTien;
        private System.Windows.Forms.TextBox txtUuDai;
        private System.Windows.Forms.Label lblUuDai;
        private System.Windows.Forms.TextBox txtThue;
        private System.Windows.Forms.Label lblThue;
        private System.Windows.Forms.TextBox txtTong;
        private System.Windows.Forms.Label lblTong;
    }
}