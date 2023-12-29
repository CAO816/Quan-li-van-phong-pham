namespace QLVPP.Form
{
    partial class FrmPhanCa
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPhanCa));
            this.gvThongTin = new System.Windows.Forms.DataGridView();
            this.lblMaNV = new System.Windows.Forms.Label();
            this.cbMaNV = new System.Windows.Forms.ComboBox();
            this.cbMaCa = new System.Windows.Forms.ComboBox();
            this.lblMaCa = new System.Windows.Forms.Label();
            this.dateTimePickerNgay = new System.Windows.Forms.DateTimePicker();
            this.lblNgay = new System.Windows.Forms.Label();
            this.btnPhanCa = new System.Windows.Forms.Button();
            this.btnListCa = new System.Windows.Forms.Button();
            this.btnListPhanCa = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.gvNhanVien = new System.Windows.Forms.DataGridView();
            this.MaNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.HoNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgaySinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.GioiTinh = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DiaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SDT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TenCV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NgayTD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gvThongTin)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvNhanVien)).BeginInit();
            this.SuspendLayout();
            // 
            // gvThongTin
            // 
            this.gvThongTin.AllowUserToAddRows = false;
            this.gvThongTin.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvThongTin.BackgroundColor = System.Drawing.Color.White;
            this.gvThongTin.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvThongTin.Location = new System.Drawing.Point(667, 126);
            this.gvThongTin.Name = "gvThongTin";
            this.gvThongTin.RowHeadersVisible = false;
            this.gvThongTin.RowHeadersWidth = 100;
            this.gvThongTin.RowTemplate.Height = 28;
            this.gvThongTin.Size = new System.Drawing.Size(536, 468);
            this.gvThongTin.TabIndex = 0;
            // 
            // lblMaNV
            // 
            this.lblMaNV.AutoSize = true;
            this.lblMaNV.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaNV.ForeColor = System.Drawing.Color.White;
            this.lblMaNV.Location = new System.Drawing.Point(27, 18);
            this.lblMaNV.Name = "lblMaNV";
            this.lblMaNV.Size = new System.Drawing.Size(81, 29);
            this.lblMaNV.TabIndex = 5;
            this.lblMaNV.Text = "Mã NV";
            // 
            // cbMaNV
            // 
            this.cbMaNV.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbMaNV.FormattingEnabled = true;
            this.cbMaNV.Location = new System.Drawing.Point(114, 15);
            this.cbMaNV.Name = "cbMaNV";
            this.cbMaNV.Size = new System.Drawing.Size(201, 32);
            this.cbMaNV.TabIndex = 6;
            // 
            // cbMaCa
            // 
            this.cbMaCa.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbMaCa.FormattingEnabled = true;
            this.cbMaCa.Location = new System.Drawing.Point(386, 14);
            this.cbMaCa.Name = "cbMaCa";
            this.cbMaCa.Size = new System.Drawing.Size(100, 32);
            this.cbMaCa.TabIndex = 8;
            // 
            // lblMaCa
            // 
            this.lblMaCa.AutoSize = true;
            this.lblMaCa.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMaCa.ForeColor = System.Drawing.Color.White;
            this.lblMaCa.Location = new System.Drawing.Point(332, 17);
            this.lblMaCa.Name = "lblMaCa";
            this.lblMaCa.Size = new System.Drawing.Size(38, 29);
            this.lblMaCa.TabIndex = 7;
            this.lblMaCa.Text = "Ca";
            // 
            // dateTimePickerNgay
            // 
            this.dateTimePickerNgay.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateTimePickerNgay.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePickerNgay.Location = new System.Drawing.Point(667, 14);
            this.dateTimePickerNgay.Name = "dateTimePickerNgay";
            this.dateTimePickerNgay.Size = new System.Drawing.Size(127, 32);
            this.dateTimePickerNgay.TabIndex = 10;
            // 
            // lblNgay
            // 
            this.lblNgay.AutoSize = true;
            this.lblNgay.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNgay.ForeColor = System.Drawing.Color.White;
            this.lblNgay.Location = new System.Drawing.Point(517, 16);
            this.lblNgay.Name = "lblNgay";
            this.lblNgay.Size = new System.Drawing.Size(117, 29);
            this.lblNgay.TabIndex = 9;
            this.lblNgay.Text = "Chọn ngày";
            // 
            // btnPhanCa
            // 
            this.btnPhanCa.Anchor = System.Windows.Forms.AnchorStyles.Top;
            this.btnPhanCa.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnPhanCa.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnPhanCa.ForeColor = System.Drawing.Color.White;
            this.btnPhanCa.Location = new System.Drawing.Point(822, 14);
            this.btnPhanCa.Name = "btnPhanCa";
            this.btnPhanCa.Size = new System.Drawing.Size(92, 32);
            this.btnPhanCa.TabIndex = 11;
            this.btnPhanCa.Text = "Phân ca";
            this.btnPhanCa.UseVisualStyleBackColor = true;
            this.btnPhanCa.Click += new System.EventHandler(this.btnPhanCa_Click);
            // 
            // btnListCa
            // 
            this.btnListCa.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnListCa.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnListCa.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListCa.ForeColor = System.Drawing.Color.White;
            this.btnListCa.Location = new System.Drawing.Point(32, 64);
            this.btnListCa.Name = "btnListCa";
            this.btnListCa.Size = new System.Drawing.Size(208, 32);
            this.btnListCa.TabIndex = 13;
            this.btnListCa.Text = "Danh sách ca làm việc";
            this.btnListCa.UseVisualStyleBackColor = true;
            this.btnListCa.Click += new System.EventHandler(this.btnListCa_Click);
            // 
            // btnListPhanCa
            // 
            this.btnListPhanCa.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.btnListPhanCa.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnListPhanCa.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnListPhanCa.ForeColor = System.Drawing.Color.White;
            this.btnListPhanCa.Location = new System.Drawing.Point(260, 64);
            this.btnListPhanCa.Name = "btnListPhanCa";
            this.btnListPhanCa.Size = new System.Drawing.Size(194, 32);
            this.btnListPhanCa.TabIndex = 14;
            this.btnListPhanCa.Text = "Danh sách phân ca";
            this.btnListPhanCa.UseVisualStyleBackColor = true;
            this.btnListPhanCa.Click += new System.EventHandler(this.btnListPhanCa_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.dateTimePickerNgay);
            this.panel1.Controls.Add(this.btnPhanCa);
            this.panel1.Controls.Add(this.lblNgay);
            this.panel1.Controls.Add(this.cbMaCa);
            this.panel1.Controls.Add(this.btnListPhanCa);
            this.panel1.Controls.Add(this.btnListCa);
            this.panel1.Controls.Add(this.lblMaCa);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1206, 120);
            this.panel1.TabIndex = 15;
            // 
            // gvNhanVien
            // 
            this.gvNhanVien.AllowUserToAddRows = false;
            this.gvNhanVien.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.gvNhanVien.BackgroundColor = System.Drawing.Color.White;
            this.gvNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvNhanVien.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.MaNV,
            this.HoNV,
            this.TenNV,
            this.NgaySinh,
            this.GioiTinh,
            this.DiaChi,
            this.SDT,
            this.TenCV,
            this.NgayTD});
            this.gvNhanVien.Location = new System.Drawing.Point(0, 126);
            this.gvNhanVien.Name = "gvNhanVien";
            this.gvNhanVien.ReadOnly = true;
            this.gvNhanVien.RowHeadersVisible = false;
            this.gvNhanVien.RowHeadersWidth = 62;
            this.gvNhanVien.RowTemplate.Height = 28;
            this.gvNhanVien.Size = new System.Drawing.Size(661, 468);
            this.gvNhanVien.TabIndex = 16;
            // 
            // MaNV
            // 
            this.MaNV.DataPropertyName = "MaNV";
            this.MaNV.HeaderText = "Mã nhân viên";
            this.MaNV.MinimumWidth = 8;
            this.MaNV.Name = "MaNV";
            this.MaNV.ReadOnly = true;
            this.MaNV.Width = 150;
            // 
            // HoNV
            // 
            this.HoNV.DataPropertyName = "HoNV";
            this.HoNV.HeaderText = "Họ";
            this.HoNV.MinimumWidth = 8;
            this.HoNV.Name = "HoNV";
            this.HoNV.ReadOnly = true;
            this.HoNV.Width = 150;
            // 
            // TenNV
            // 
            this.TenNV.DataPropertyName = "TenNV";
            this.TenNV.HeaderText = "Tên";
            this.TenNV.MinimumWidth = 8;
            this.TenNV.Name = "TenNV";
            this.TenNV.ReadOnly = true;
            this.TenNV.Width = 150;
            // 
            // NgaySinh
            // 
            this.NgaySinh.DataPropertyName = "NgaySinh";
            this.NgaySinh.HeaderText = "Ngày sinh";
            this.NgaySinh.MinimumWidth = 8;
            this.NgaySinh.Name = "NgaySinh";
            this.NgaySinh.ReadOnly = true;
            this.NgaySinh.Width = 150;
            // 
            // GioiTinh
            // 
            this.GioiTinh.DataPropertyName = "GioiTinh";
            this.GioiTinh.HeaderText = "Giới tính";
            this.GioiTinh.MinimumWidth = 8;
            this.GioiTinh.Name = "GioiTinh";
            this.GioiTinh.ReadOnly = true;
            this.GioiTinh.Width = 150;
            // 
            // DiaChi
            // 
            this.DiaChi.DataPropertyName = "DiaChi";
            this.DiaChi.HeaderText = "Địa chỉ";
            this.DiaChi.MinimumWidth = 8;
            this.DiaChi.Name = "DiaChi";
            this.DiaChi.ReadOnly = true;
            this.DiaChi.Width = 150;
            // 
            // SDT
            // 
            this.SDT.DataPropertyName = "SDT";
            this.SDT.HeaderText = "Số điện thoại";
            this.SDT.MinimumWidth = 8;
            this.SDT.Name = "SDT";
            this.SDT.ReadOnly = true;
            this.SDT.Width = 150;
            // 
            // TenCV
            // 
            this.TenCV.DataPropertyName = "TenCV";
            this.TenCV.HeaderText = "Tên công việc";
            this.TenCV.MinimumWidth = 8;
            this.TenCV.Name = "TenCV";
            this.TenCV.ReadOnly = true;
            this.TenCV.Width = 150;
            // 
            // NgayTD
            // 
            this.NgayTD.DataPropertyName = "NgayTD";
            this.NgayTD.HeaderText = "Ngày tuyển dụng";
            this.NgayTD.MinimumWidth = 8;
            this.NgayTD.Name = "NgayTD";
            this.NgayTD.ReadOnly = true;
            this.NgayTD.Width = 150;
            // 
            // FrmPhanCa
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.ClientSize = new System.Drawing.Size(1206, 597);
            this.Controls.Add(this.gvNhanVien);
            this.Controls.Add(this.cbMaNV);
            this.Controls.Add(this.lblMaNV);
            this.Controls.Add(this.gvThongTin);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FrmPhanCa";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Phân ca";
            this.Load += new System.EventHandler(this.FrmPhanCa_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gvThongTin)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gvNhanVien)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView gvThongTin;
        private System.Windows.Forms.Label lblMaNV;
        private System.Windows.Forms.ComboBox cbMaNV;
        private System.Windows.Forms.ComboBox cbMaCa;
        private System.Windows.Forms.Label lblMaCa;
        private System.Windows.Forms.DateTimePicker dateTimePickerNgay;
        private System.Windows.Forms.Label lblNgay;
        private System.Windows.Forms.Button btnPhanCa;
        private System.Windows.Forms.Button btnListCa;
        private System.Windows.Forms.Button btnListPhanCa;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView gvNhanVien;
        private System.Windows.Forms.DataGridViewTextBoxColumn MaNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn HoNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgaySinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn GioiTinh;
        private System.Windows.Forms.DataGridViewTextBoxColumn DiaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn SDT;
        private System.Windows.Forms.DataGridViewTextBoxColumn TenCV;
        private System.Windows.Forms.DataGridViewTextBoxColumn NgayTD;
    }
}