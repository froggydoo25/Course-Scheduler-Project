namespace Course_Scheduler
{
    partial class Ribbon1 : Microsoft.Office.Tools.Ribbon.RibbonBase
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public Ribbon1()
            : base(Globals.Factory.GetRibbonFactory())
        {
            InitializeComponent();
        }

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
            this.tab1 = this.Factory.CreateRibbonTab();
            this.report_group = this.Factory.CreateRibbonGroup();
            this.final_report_button = this.Factory.CreateRibbonButton();
            this.format_group = this.Factory.CreateRibbonGroup();
            this.center_align_button = this.Factory.CreateRibbonButton();
            this.border_button = this.Factory.CreateRibbonButton();
            this.group1 = this.Factory.CreateRibbonGroup();
            this.button1 = this.Factory.CreateRibbonButton();
            this.button2 = this.Factory.CreateRibbonButton();
            this.tab1.SuspendLayout();
            this.report_group.SuspendLayout();
            this.format_group.SuspendLayout();
            this.group1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tab1
            // 
            this.tab1.Groups.Add(this.report_group);
            this.tab1.Groups.Add(this.format_group);
            this.tab1.Groups.Add(this.group1);
            this.tab1.Label = "Course Scheduler";
            this.tab1.Name = "tab1";
            // 
            // report_group
            // 
            this.report_group.Items.Add(this.final_report_button);
            this.report_group.Label = "Reports";
            this.report_group.Name = "report_group";
            // 
            // final_report_button
            // 
            this.final_report_button.Label = "Generate Final Report";
            this.final_report_button.Name = "final_report_button";
            this.final_report_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.final_report_button_Click);
            // 
            // format_group
            // 
            this.format_group.Items.Add(this.center_align_button);
            this.format_group.Items.Add(this.border_button);
            this.format_group.Label = "Format";
            this.format_group.Name = "format_group";
            // 
            // center_align_button
            // 
            this.center_align_button.Label = "Center Align Content";
            this.center_align_button.Name = "center_align_button";
            this.center_align_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.center_align_button_Click);
            // 
            // border_button
            // 
            this.border_button.Label = "Create Borders";
            this.border_button.Name = "border_button";
            this.border_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.border_button_Click);
            // 
            // group1
            // 
            this.group1.Items.Add(this.button1);
            this.group1.Items.Add(this.button2);
            this.group1.Label = "Update";
            this.group1.Name = "group1";
            // 
            // button1
            // 
            this.button1.Label = "Update Database from Room Occupancy";
            this.button1.Name = "button1";
            this.button1.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.Label = "Update Professor info from Final Report";
            this.button2.Name = "button2";
            // 
            // Ribbon1
            // 
            this.Name = "Ribbon1";
            this.RibbonType = "Microsoft.Excel.Workbook";
            this.Tabs.Add(this.tab1);
            this.Load += new Microsoft.Office.Tools.Ribbon.RibbonUIEventHandler(this.Ribbon1_Load);
            this.tab1.ResumeLayout(false);
            this.tab1.PerformLayout();
            this.report_group.ResumeLayout(false);
            this.report_group.PerformLayout();
            this.format_group.ResumeLayout(false);
            this.format_group.PerformLayout();
            this.group1.ResumeLayout(false);
            this.group1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        internal Microsoft.Office.Tools.Ribbon.RibbonTab tab1;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup report_group;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton final_report_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup format_group;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton center_align_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton border_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup group1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button2;
    }

    partial class ThisRibbonCollection
    {
        internal Ribbon1 Ribbon1
        {
            get { return this.GetRibbon<Ribbon1>(); }
        }
    }
}
