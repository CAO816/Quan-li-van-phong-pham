namespace QLVPP.Form
{
    partial class ThongBao
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ThongBao));
            this.richTxtThongBao = new System.Windows.Forms.RichTextBox();
            this.btnOk = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // richTxtThongBao
            // 
            this.richTxtThongBao.BackColor = System.Drawing.Color.White;
            this.richTxtThongBao.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.richTxtThongBao.Location = new System.Drawing.Point(12, 23);
            this.richTxtThongBao.Name = "richTxtThongBao";
            this.richTxtThongBao.ReadOnly = true;
            this.richTxtThongBao.Size = new System.Drawing.Size(468, 155);
            this.richTxtThongBao.TabIndex = 0;
            this.richTxtThongBao.Text = "";
            // 
            // btnOk
            // 
            this.btnOk.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOk.Location = new System.Drawing.Point(378, 184);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(102, 34);
            this.btnOk.TabIndex = 1;
            this.btnOk.Text = "OK";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // ThongBao
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(492, 230);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.richTxtThongBao);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ThongBao";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Thông báo";
            this.Load += new System.EventHandler(this.ThongBao_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.RichTextBox richTxtThongBao;
        private System.Windows.Forms.Button btnOk;
    }
}