namespace QLVPP
{
    partial class UCTimKiem
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
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.txtTimKiem = new System.Windows.Forms.TextBox();
            this.lblTimKiem = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnTimKiem.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTimKiem.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKiem.ForeColor = System.Drawing.Color.White;
            this.btnTimKiem.Location = new System.Drawing.Point(652, 26);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(114, 41);
            this.btnTimKiem.TabIndex = 5;
            this.btnTimKiem.Text = "Tìm kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            // 
            // txtTimKiem
            // 
            this.txtTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtTimKiem.Font = new System.Drawing.Font("Calibri", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTimKiem.Location = new System.Drawing.Point(155, 31);
            this.txtTimKiem.Name = "txtTimKiem";
            this.txtTimKiem.Size = new System.Drawing.Size(460, 32);
            this.txtTimKiem.TabIndex = 4;
            // 
            // lblTimKiem
            // 
            this.lblTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.lblTimKiem.AutoSize = true;
            this.lblTimKiem.Font = new System.Drawing.Font("Calibri", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTimKiem.ForeColor = System.Drawing.Color.White;
            this.lblTimKiem.Location = new System.Drawing.Point(29, 34);
            this.lblTimKiem.Name = "lblTimKiem";
            this.lblTimKiem.Size = new System.Drawing.Size(103, 29);
            this.lblTimKiem.TabIndex = 3;
            this.lblTimKiem.Text = "Tìm kiếm";
            // 
            // UCTimKiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.Controls.Add(this.btnTimKiem);
            this.Controls.Add(this.txtTimKiem);
            this.Controls.Add(this.lblTimKiem);
            this.Name = "UCTimKiem";
            this.Size = new System.Drawing.Size(855, 91);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.TextBox txtTimKiem;
        private System.Windows.Forms.Label lblTimKiem;
    }
}
