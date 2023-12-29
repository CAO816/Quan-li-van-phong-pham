namespace QLVPP
{
    partial class UCHoaDon
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtSDT = new System.Windows.Forms.TextBox();
            this.lblSDT = new System.Windows.Forms.Label();
            this.btnCheck = new System.Windows.Forms.Button();
            this.gvCTHD = new System.Windows.Forms.DataGridView();
            this.btnNew = new System.Windows.Forms.Button();
            this.btnXuatHD = new System.Windows.Forms.Button();
            this.lblTenTV = new System.Windows.Forms.Label();
            this.txtTenTV = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.gvCTHD)).BeginInit();
            this.SuspendLayout();
            // 
            // txtSDT
            // 
            this.txtSDT.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtSDT.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSDT.Location = new System.Drawing.Point(158, 31);
            this.txtSDT.Name = "txtSDT";
            this.txtSDT.Size = new System.Drawing.Size(245, 32);
            this.txtSDT.TabIndex = 2;
            // 
            // lblSDT
            // 
            this.lblSDT.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblSDT.AutoSize = true;
            this.lblSDT.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSDT.ForeColor = System.Drawing.Color.White;
            this.lblSDT.Location = new System.Drawing.Point(22, 39);
            this.lblSDT.Name = "lblSDT";
            this.lblSDT.Size = new System.Drawing.Size(121, 24);
            this.lblSDT.TabIndex = 3;
            this.lblSDT.Text = "Số điện thoại";
            // 
            // btnCheck
            // 
            this.btnCheck.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCheck.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCheck.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCheck.ForeColor = System.Drawing.Color.White;
            this.btnCheck.Location = new System.Drawing.Point(256, 78);
            this.btnCheck.Name = "btnCheck";
            this.btnCheck.Size = new System.Drawing.Size(147, 41);
            this.btnCheck.TabIndex = 4;
            this.btnCheck.Text = "Kiểm tra";
            this.btnCheck.UseVisualStyleBackColor = true;
            this.btnCheck.Click += new System.EventHandler(this.btnCheck_Click);
            // 
            // gvCTHD
            // 
            this.gvCTHD.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.gvCTHD.BackgroundColor = System.Drawing.Color.White;
            this.gvCTHD.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.gvCTHD.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gvCTHD.Location = new System.Drawing.Point(0, 198);
            this.gvCTHD.Name = "gvCTHD";
            this.gvCTHD.RowHeadersWidth = 62;
            this.gvCTHD.RowTemplate.Height = 28;
            this.gvCTHD.Size = new System.Drawing.Size(415, 281);
            this.gvCTHD.TabIndex = 5;
            // 
            // btnNew
            // 
            this.btnNew.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnNew.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnNew.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNew.ForeColor = System.Drawing.Color.White;
            this.btnNew.Location = new System.Drawing.Point(74, 501);
            this.btnNew.Name = "btnNew";
            this.btnNew.Size = new System.Drawing.Size(156, 45);
            this.btnNew.TabIndex = 6;
            this.btnNew.Text = "Tạo mới";
            this.btnNew.UseVisualStyleBackColor = true;
            // 
            // btnXuatHD
            // 
            this.btnXuatHD.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnXuatHD.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnXuatHD.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXuatHD.ForeColor = System.Drawing.Color.White;
            this.btnXuatHD.Location = new System.Drawing.Point(236, 501);
            this.btnXuatHD.Name = "btnXuatHD";
            this.btnXuatHD.Size = new System.Drawing.Size(167, 45);
            this.btnXuatHD.TabIndex = 7;
            this.btnXuatHD.Text = "Xuất";
            this.btnXuatHD.UseVisualStyleBackColor = true;
            // 
            // lblTenTV
            // 
            this.lblTenTV.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblTenTV.AutoSize = true;
            this.lblTenTV.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTenTV.ForeColor = System.Drawing.Color.White;
            this.lblTenTV.Location = new System.Drawing.Point(22, 140);
            this.lblTenTV.Name = "lblTenTV";
            this.lblTenTV.Size = new System.Drawing.Size(134, 24);
            this.lblTenTV.TabIndex = 9;
            this.lblTenTV.Text = "Tên thành viên";
            // 
            // txtTenTV
            // 
            this.txtTenTV.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtTenTV.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenTV.Location = new System.Drawing.Point(158, 132);
            this.txtTenTV.Name = "txtTenTV";
            this.txtTenTV.ReadOnly = true;
            this.txtTenTV.Size = new System.Drawing.Size(245, 32);
            this.txtTenTV.TabIndex = 8;
            // 
            // UCHoaDon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.Controls.Add(this.lblTenTV);
            this.Controls.Add(this.txtTenTV);
            this.Controls.Add(this.btnXuatHD);
            this.Controls.Add(this.btnNew);
            this.Controls.Add(this.gvCTHD);
            this.Controls.Add(this.btnCheck);
            this.Controls.Add(this.lblSDT);
            this.Controls.Add(this.txtSDT);
            this.Name = "UCHoaDon";
            this.Size = new System.Drawing.Size(418, 568);
            ((System.ComponentModel.ISupportInitialize)(this.gvCTHD)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtSDT;
        private System.Windows.Forms.Label lblSDT;
        private System.Windows.Forms.Button btnCheck;
        private System.Windows.Forms.DataGridView gvCTHD;
        private System.Windows.Forms.Button btnNew;
        private System.Windows.Forms.Button btnXuatHD;
        private System.Windows.Forms.Label lblTenTV;
        private System.Windows.Forms.TextBox txtTenTV;
    }
}
