namespace QLVPP
{
    partial class UCCongCu
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
            this.menuCongCu = new System.Windows.Forms.MenuStrip();
            this.itemThem = new System.Windows.Forms.ToolStripMenuItem();
            this.itemXoa = new System.Windows.Forms.ToolStripMenuItem();
            this.itemSua = new System.Windows.Forms.ToolStripMenuItem();
            this.itemLamMoi = new System.Windows.Forms.ToolStripMenuItem();
            this.menuCongCu.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuCongCu
            // 
            this.menuCongCu.GripMargin = new System.Windows.Forms.Padding(2, 2, 0, 2);
            this.menuCongCu.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuCongCu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.itemThem,
            this.itemXoa,
            this.itemSua,
            this.itemLamMoi});
            this.menuCongCu.Location = new System.Drawing.Point(0, 0);
            this.menuCongCu.Name = "menuCongCu";
            this.menuCongCu.Size = new System.Drawing.Size(1192, 33);
            this.menuCongCu.TabIndex = 0;
            this.menuCongCu.Text = "menuStrip1";
            // 
            // itemThem
            // 
            this.itemThem.Image = global::QLVPP.Properties.Resources.add;
            this.itemThem.Name = "itemThem";
            this.itemThem.Size = new System.Drawing.Size(96, 29);
            this.itemThem.Text = "Thêm";
            // 
            // itemXoa
            // 
            this.itemXoa.Image = global::QLVPP.Properties.Resources.delete;
            this.itemXoa.Name = "itemXoa";
            this.itemXoa.Size = new System.Drawing.Size(83, 29);
            this.itemXoa.Text = "Xóa";
            // 
            // itemSua
            // 
            this.itemSua.Image = global::QLVPP.Properties.Resources.update;
            this.itemSua.Name = "itemSua";
            this.itemSua.Size = new System.Drawing.Size(82, 29);
            this.itemSua.Text = "Sửa";
            // 
            // itemLamMoi
            // 
            this.itemLamMoi.Image = global::QLVPP.Properties.Resources.clear;
            this.itemLamMoi.Name = "itemLamMoi";
            this.itemLamMoi.Size = new System.Drawing.Size(121, 29);
            this.itemLamMoi.Text = "Làm mới";
            // 
            // UCCongCu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(27)))), ((int)(((byte)(73)))), ((int)(((byte)(101)))));
            this.Controls.Add(this.menuCongCu);
            this.Name = "UCCongCu";
            this.Size = new System.Drawing.Size(1192, 33);
            this.menuCongCu.ResumeLayout(false);
            this.menuCongCu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuCongCu;
        private System.Windows.Forms.ToolStripMenuItem itemThem;
        private System.Windows.Forms.ToolStripMenuItem itemXoa;
        private System.Windows.Forms.ToolStripMenuItem itemSua;
        private System.Windows.Forms.ToolStripMenuItem itemLamMoi;
    }
}
