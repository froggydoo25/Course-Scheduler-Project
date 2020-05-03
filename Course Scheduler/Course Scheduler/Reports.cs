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
        List<KeyValuePair<int, int>> room = new List<KeyValuePair<int, int>>();
        string[] line;
        int lastUsedRow, lastUsedCol;
        _Excel.Worksheet final_report;

        string connectionString = null;
        string sql = null;
        string data = null;
        MySql.Data.MySqlClient.MySqlConnection cnn;

        public Reports()
        {
            connectionString = "server=localhost;uid=root;pwd=password;database=course_scheduler";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            cnn.Open();
        }

        public void getSheetInfo()
        {
            final_report = Globals.ThisAddIn.Application.ActiveSheet;
            _Excel.Range last = final_report.Cells.SpecialCells(_Excel.XlCellType.xlCellTypeLastCell, Type.Missing);
            lastUsedRow = last.Row;
            lastUsedCol = last.Column;
        }

        public void generateReport()
        {
            try
            {
                clearSheet();
                reportFromDB();
                //addLeadingZero();
                centerAlign();
            }
            catch (System.Runtime.InteropServices.COMException e)
            {
                Console.WriteLine(e);
            }

        }

        public void addLeadingZero()
        {
            getSheetInfo();
            for (int row = 2; row < lastUsedRow; row++)
            {
                string courseNum = "" + final_report.Cells[row, 2].Value();
                if (courseNum.Length < 5)
                    final_report.Cells[row, 2] = "0" + courseNum;
            }
            
        }

        public void centerAlign()
        {
            final_report.Cells.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            final_report.Cells.VerticalAlignment = Microsoft.Office.Interop.Excel.XlVAlign.xlVAlignCenter;
            final_report.Cells.Columns.AutoFit();
            final_report.Cells.Rows.AutoFit();
        }

        public void clearSheet()
        {
            var rng = Globals.ThisAddIn.Application.ActiveSheet.Cells.Range("A2:R100", Type.Missing);
            rng.Cells.Clear();
            Console.WriteLine("Sheet Cleared");
        }

        public void createBorder()
        {
            string previous = "";
            string current = "";
            getSheetInfo();
            for (int row = 2; row < lastUsedRow; row++)
            {
                current = "";
                current += final_report.Cells[row, 3].Value() + "," + final_report.Cells[row, 4].Value();
                if (row != 2)
                {
                    if (!(previous.Equals(current)))
                    {
                        var rng = "A" + row + ":R18";
                        var border_range = final_report.Cells.Range[rng];
                        border_range.BorderAround(_Excel.XlLineStyle.xlContinuous, _Excel.XlBorderWeight.xlThick);
                    }
                }

                previous = current;
            }
        }

        static string GetColumnName(int index)
        {
            const string letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

            var value = "";

            if (index >= letters.Length)
                value += letters[index / letters.Length - 1];

            value += letters[index % letters.Length];

            return value;
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

        public void reportFromDB()
        {
            sql = "call FinalReport();";
            MySql.Data.MySqlClient.MySqlDataAdapter dscmd = new MySql.Data.MySqlClient.MySqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            dscmd.Fill(ds);
            getSheetInfo();
            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {
                for (int j = 0; j <= ds.Tables[0].Columns.Count - 1; j++)
                {
                    data = ds.Tables[0].Rows[i].ItemArray[j].ToString();
                    final_report.Cells[i + 2, j + 1] = data;
                }
            }
        }
    }
}
