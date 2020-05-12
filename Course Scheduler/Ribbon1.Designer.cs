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
            this.update_prof_button = this.Factory.CreateRibbonButton();
            this.group2 = this.Factory.CreateRibbonGroup();
            this.clear_sections_button = this.Factory.CreateRibbonButton();
            this.clear_schedule_button = this.Factory.CreateRibbonButton();
            this.insert_courses_button = this.Factory.CreateRibbonButton();
            this.tab1.SuspendLayout();
            this.report_group.SuspendLayout();
            this.format_group.SuspendLayout();
            this.group1.SuspendLayout();
            this.group2.SuspendLayout();
            this.SuspendLayout();
            // 
            // tab1
            // 
            this.tab1.Groups.Add(this.report_group);
            this.tab1.Groups.Add(this.format_group);
            this.tab1.Groups.Add(this.group1);
            this.tab1.Groups.Add(this.group2);
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
            this.group1.Items.Add(this.insert_courses_button);
            this.group1.Items.Add(this.update_prof_button);
            this.group1.Label = "Update";
            this.group1.Name = "group1";
            // 
            // update_prof_button
            // 
            this.update_prof_button.Label = "Update Professor Information";
            this.update_prof_button.Name = "update_prof_button";
            this.update_prof_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.update_prof_button_Click);
            // 
            // group2
            // 
            this.group2.Items.Add(this.clear_sections_button);
            this.group2.Items.Add(this.clear_schedule_button);
            this.group2.Label = "Clearing Database";
            this.group2.Name = "group2";
            // 
            // clear_sections_button
            // 
            this.clear_sections_button.Label = "Clear Sections";
            this.clear_sections_button.Name = "clear_sections_button";
            this.clear_sections_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.clear_sections_button_Click);
            // 
            // clear_schedule_button
            // 
            this.clear_schedule_button.Label = "Clear Schedule";
            this.clear_schedule_button.Name = "clear_schedule_button";
            this.clear_schedule_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.clear_schedule_button_Click);
            // 
            // insert_courses_button
            // 
            this.insert_courses_button.Label = "Insert Courses and Sections";
            this.insert_courses_button.Name = "insert_courses_button";
            this.insert_courses_button.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.insert_courses_button_Click);
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
            this.group2.ResumeLayout(false);
            this.group2.PerformLayout();
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
        internal Microsoft.Office.Tools.Ribbon.RibbonButton update_prof_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup group2;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton clear_sections_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton clear_schedule_button;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton insert_courses_button;
    }

    partial class ThisRibbonCollection
    {
        internal Ribbon1 Ribbon1
        {
            get { return this.GetRibbon<Ribbon1>(); }
        }
    }
}
