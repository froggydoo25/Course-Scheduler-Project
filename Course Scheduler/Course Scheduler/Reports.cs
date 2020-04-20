using System;
using System.Data;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using MySql.Data;
using System.Data.SqlClient;
using Microsoft.Office.Interop.Excel;
using _Excel = Microsoft.Office.Interop.Excel;

namespace Course_Scheduler
{
    class Reports
    {
        string path = "";
        //public _Application excel = new _Excel.Application();
        public Workbook wb;
        public Worksheet rooms, final_report, db;
        List<KeyValuePair<int, int>> room = new List<KeyValuePair<int, int>>();
        string[] line;
        int row = 2, col = 1;
        int lastRow, lastCol;

        string connectionString = null;
        string sql = null;
        string data = null;
        MySql.Data.MySqlClient.MySqlConnection cnn;

        public Reports()
        {
            //connectionString = "server=elvis.rowan.edu;uid=jiangs1;pwd=agingmonster;database=jiangs1";
            //cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            //cnn.Open();
        }

        public Reports(int room, int final_rep)
        {
            //Get the assembly information
            System.Reflection.Assembly assemblyInfo = System.Reflection.Assembly.GetExecutingAssembly();

            //Location is where the assembly is run from 
            string assemblyLocation = assemblyInfo.Location;
            this.path = assemblyLocation;
            wb = Globals.ThisAddIn.Application.ActiveWorkbook;
            rooms = wb.Worksheets[room];
            final_report = wb.Worksheets[final_rep];
            lastRow = final_report.Cells.Find("*", System.Reflection.Missing.Value,
                               System.Reflection.Missing.Value, System.Reflection.Missing.Value,
                               _Excel.XlSearchOrder.xlByRows, _Excel.XlSearchDirection.xlPrevious,
                               false, System.Reflection.Missing.Value, System.Reflection.Missing.Value).Row;
            lastCol = final_report.Cells.Find("*", System.Reflection.Missing.Value,
                               System.Reflection.Missing.Value, System.Reflection.Missing.Value,
                               _Excel.XlSearchOrder.xlByColumns, _Excel.XlSearchDirection.xlPrevious,
                               false, System.Reflection.Missing.Value, System.Reflection.Missing.Value).Column;
            connectionString = "server=elvis.rowan.edu;uid=jiangs1;pwd=agingmonster;database=jiangs1";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            //cnn.Open();
        }

        public Reports(string path, int room, int final_rep)
        {
            this.path = path;
            wb = Globals.ThisAddIn.Application.ActiveWorkbook;
            rooms = wb.Worksheets[room];
            final_report = wb.Worksheets[final_rep];
            lastRow = final_report.Cells.Find("*", System.Reflection.Missing.Value,
                               System.Reflection.Missing.Value, System.Reflection.Missing.Value,
                               _Excel.XlSearchOrder.xlByRows, _Excel.XlSearchDirection.xlPrevious,
                               false, System.Reflection.Missing.Value, System.Reflection.Missing.Value).Row;
            lastCol = final_report.Cells.Find("*", System.Reflection.Missing.Value,
                   System.Reflection.Missing.Value, System.Reflection.Missing.Value,
                   _Excel.XlSearchOrder.xlByColumns, _Excel.XlSearchDirection.xlPrevious,
                   false, System.Reflection.Missing.Value, System.Reflection.Missing.Value).Column;
            connectionString = "server=elvis.rowan.edu;uid=jiangs1;pwd=agingmonster;database=jiangs1";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            //cnn.Open();
        }

        public void generateReport()
        {
            try
            {
                clearSheet(final_report);
                reportFromDB();
                condenseReport();
                centerAlign();
                wb.Save();
            }
            catch (System.Runtime.InteropServices.COMException e)
            {
                Console.WriteLine(e);
            }

        }

        public void reportFromDB()
        {
            cnn.Open();
            sql = "call FinalReport();";
            MySql.Data.MySqlClient.MySqlDataAdapter dscmd = new MySql.Data.MySqlClient.MySqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            dscmd.Fill(ds);
            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {
                for (int j = 0; j <= ds.Tables[0].Columns.Count - 1; j++)
                {
                    data = ds.Tables[0].Rows[i].ItemArray[j].ToString();
                    Globals.ThisAddIn.Application.ActiveSheet.Cells[i + 2, j + 1] = data;
                }
            }
        }

        public void condenseReport()
        {
            //Section #(C), Course Title(D), Prof First Name(F), Prof Last Name(G), Slot Time(i), Room(j)
            string previous = "";
            string current = "";
            for (int row = 2; row < lastRow + 1; row++)
            {
                current = "";
                current += ReadCell(row, 3, final_report) + "," + ReadCell(row, 4, final_report) + "," + ReadCell(row, 6, final_report) + "," + ReadCell(row, 7, final_report) + "," + ReadCell(row, 9, final_report) + "," + ReadCell(row, 10, final_report);
                if (previous.Equals(current))
                {
                    final_report.Cells[row - 1, 8] = ReadCell(row - 1, 8, final_report) + ReadCell(row, 8, final_report);
                    //final_report.Cells[row - 1, 8] = "HellO";
                    final_report.Rows.Delete(row);
                }
                previous = current;
            }
        }

        public void centerAlign()
        {
            var rng = Globals.ThisAddIn.Application.ActiveSheet;
            rng.Cells.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            rng.Cells.VerticalAlignment = Microsoft.Office.Interop.Excel.XlVAlign.xlVAlignCenter;
            rng.Cells.Columns.AutoFit();
            rng.Cells.Rows.AutoFit();
        }

        public void clearSheet(Worksheet sheet)
        {
            var rng = final_report.get_Range("A2:E300", Type.Missing);
            rng.Cells.Clear();
            wb.Save();
            Console.WriteLine("Sheet Cleared");
        }

        private string ReadCell(KeyValuePair<int, int> course, Worksheet sheet)
        {
            int row = course.Key;
            int col = course.Value;
            if (sheet.Cells[row, col].Value2 != null)
                return sheet.Cells[row, col].Value2 + "";
            return "";
        }

        private string ReadCell(int row, int col, Worksheet sheet)
        {
            if (sheet.Cells[row, col].Value2 != null)
                return sheet.Cells[row, col].Value2 + "";
            return "";
        }

        public void Close()
        {
            wb.Close(0);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(rooms);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(final_report);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(wb);
            //System.Runtime.InteropServices.Marshal.FinalReleaseComObject(excel);
            GC.Collect();
            GC.WaitForPendingFinalizers();
        }
    }
}
