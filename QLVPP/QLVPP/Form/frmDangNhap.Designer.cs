namespace QLVPP.Form
{
    partial class frmDangNhap
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDangNhap));
            this.pnThongTinDangNhap = new System.Windows.Forms.Panel();
            this.lblQuen = new System.Windows.Forms.Label();
            this.btnDangNhap = new System.Windows.Forms.Button();
            this.lblMatKhau = new System.Windows.Forms.Label();
            this.lblTaiKhoan = new System.Windows.Forms.Label();
            this.pbAccount = new System.Windows.Forms.PictureBox();
            this.txtMatKhau = new System.Windows.Forms.TextBox();
            this.txtTaiKhoan = new System.Windows.Forms.TextBox();
            this.pnThongTinDangNhap.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbAccount)).BeginInit();
            this.SuspendLayout();
            // 
            // pnThongTinDangNhap
            // 
            this.pnThongTinDangNhap.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(248)))), ((int)(((byte)(237)))), ((int)(((byte)(235)))));
            this.pnThongTinDangNhap.Controls.Add(this.lblQuen);
            this.pnThongTinDangNhap.Controls.Add(this.btnDangNhap);
            this.pnThongTinDangNhap.Controls.Add(this.lblMatKhau);
            this.pnThongTinDangNhap.Controls.Add(this.lblTaiKhoan);
            this.pnThongTinDangNhap.Controls.Add(this.pbAccount);
            this.pnThongTinDangNhap.Controls.Add(this.txtMatKhau);
            this.pnThongTinDangNhap.Controls.Add(this.txtTaiKhoan);
            this.pnThongTinDangNhap.Location = new System.Drawing.Point(291, 12);
            this.pnThongTinDangNhap.Name = "pnThongTinDangNhap";
            this.pnThongTinDangNhap.Size = new System.Drawing.Size(433, 535);
            this.pnThongTinDangNhap.TabIndex = 0;
            // 
            // lblQuen
            // 
            this.lblQuen.AutoSize = true;
            this.lblQuen.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblQuen.Location = new System.Drawing.Point(65, 410);
            this.lblQuen.Name = "lblQuen";
            this.lblQuen.Size = new System.Drawing.Size(146, 25);
            this.lblQuen.TabIndex = 6;
            this.lblQuen.Text = "Quên mật khẩu";
            this.lblQuen.MouseLeave += new System.EventHandler(this.LeaveQuenMK);
            this.lblQuen.MouseHover += new System.EventHandler(this.HoverQuenMK);
            // 
            // btnDangNhap
            // 
            this.btnDangNhap.Font = new System.Drawing.Font("Calibri", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDangNhap.Location = new System.Drawing.Point(132, 445);
            this.btnDangNhap.Name = "btnDangNhap";
            this.btnDangNhap.Size = new System.Drawing.Size(189, 53);
            this.btnDangNhap.TabIndex = 5;
            this.btnDangNhap.Text = "Đăng nhập";
            this.btnDangNhap.UseVisualStyleBackColor = true;
            this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
            // 
            // lblMatKhau
            // 
            this.lblMatKhau.AutoSize = true;
            this.lblMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMatKhau.Location = new System.Drawing.Point(60, 329);
            this.lblMatKhau.Name = "lblMatKhau";
            this.lblMatKhau.Size = new System.Drawing.Size(93, 25);
            this.lblMatKhau.TabIndex = 4;
            this.lblMatKhau.Text = "Mật khẩu";
            // 
            // lblTaiKhoan
            // 
            this.lblTaiKhoan.AutoSize = true;
            this.lblTaiKhoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTaiKhoan.Location = new System.Drawing.Point(60, 238);
            this.lblTaiKhoan.Name = "lblTaiKhoan";
            this.lblTaiKhoan.Size = new System.Drawing.Size(99, 25);
            this.lblTaiKhoan.TabIndex = 3;
            this.lblTaiKhoan.Text = "Tài khoản";
            // 
            // pbAccount
            // 
            this.pbAccount.Image = global::QLVPP.Properties.Resources.account;
            this.pbAccount.Location = new System.Drawing.Point(99, 0);
            this.pbAccount.Name = "pbAccount";
            this.pbAccount.Size = new System.Drawing.Size(270, 233);
            this.pbAccount.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pbAccount.TabIndex = 2;
            this.pbAccount.TabStop = false;
            // 
            // txtMatKhau
            // 
            this.txtMatKhau.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtMatKhau.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtMatKhau.CausesValidation = false;
            this.txtMatKhau.Font = new System.Drawing.Font("Calibri", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMatKhau.Location = new System.Drawing.Point(64, 359);
            this.txtMatKhau.Name = "txtMatKhau";
            this.txtMatKhau.PasswordChar = '*';
            this.txtMatKhau.Size = new System.Drawing.Size(305, 47);
            this.txtMatKhau.TabIndex = 1;
            this.txtMatKhau.Text = "1";
            this.txtMatKhau.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DangNhap_KeyDown);
            // 
            // txtTaiKhoan
            // 
            this.txtTaiKhoan.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTaiKhoan.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtTaiKhoan.CausesValidation = false;
            this.txtTaiKhoan.Font = new System.Drawing.Font("Calibri", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTaiKhoan.Location = new System.Drawing.Point(64, 270);
            this.txtTaiKhoan.Name = "txtTaiKhoan";
            this.txtTaiKhoan.Size = new System.Drawing.Size(305, 47);
            this.txtTaiKhoan.TabIndex = 0;
            this.txtTaiKhoan.Text = "nv002";
            this.txtTaiKhoan.KeyDown += new System.Windows.Forms.KeyEventHandler(this.DangNhap_KeyDown);
            // 
            // frmDangNhap
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.AutoScroll = true;
            this.BackgroundImage = global::QLVPP.Properties.Resources.GiaoDien;
            this.ClientSize = new System.Drawing.Size(1009, 559);
            this.Controls.Add(this.pnThongTinDangNhap);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Location = new System.Drawing.Point(200, 200);
            this.MaximumSize = new System.Drawing.Size(1300, 900);
            this.Name = "frmDangNhap";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Đăng nhập";
            this.pnThongTinDangNhap.ResumeLayout(false);
            this.pnThongTinDangNhap.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbAccount)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnThongTinDangNhap;
        private System.Windows.Forms.TextBox txtTaiKhoan;
        private System.Windows.Forms.TextBox txtMatKhau;
        private System.Windows.Forms.PictureBox pbAccount;
        private System.Windows.Forms.Button btnDangNhap;
        private System.Windows.Forms.Label lblMatKhau;
        private System.Windows.Forms.Label lblTaiKhoan;
        private System.Windows.Forms.Label lblQuen;
    }
}