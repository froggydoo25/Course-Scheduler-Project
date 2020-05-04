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
            connectionString = "server=localhost;uid=root;pwd=password;database=sweng";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            cnn.Open();
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

        //Working on this in the reportFromDB() method, feel free to use this instead if its easier
        public void createBorder()
        {
            string previous = "";
            string current = "";
            getSheetInfo();
            for (int row = 2; row < lastUsedRow; row++)
            {
                current = "";
                current += final_report.Cells[row, 2].Value() + "," +  final_report.Cells[row, 3].Value() + "," + final_report.Cells[row, 4].Value();
                if (row != 2)
                {
                    if (!(previous.Equals(current)))
                    {
                        var rng = "A" + row + ":R18";
                        final_report.Cells.Range[rng].Borders[_Excel.XlBordersIndex.xlEdgeTop].Weight = 3d;
                    }
                }

                previous = current;
            }
        }

        //Creates a comma separated string of single attributes in DB
        public String stringifySet(MySql.Data.MySqlClient.MySqlDataAdapter sql)
        {
            string result = "";
            DataSet ds = new DataSet();
            sql.Fill(ds);
            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
                for (int j = 0; j <= ds.Tables[0].Columns.Count - 1; j++)
                    result += ds.Tables[0].Rows[i].ItemArray[j].ToString() + ",";
            return result;
        }

        public void generateReport()
        {
            try
            {
                clearSheet();
                reportFromDB();
                //addLeadingZero();
                centerAlign();
                //createBorder();
            }
            catch (System.Runtime.InteropServices.COMException e)
            {
                Console.WriteLine(e);
            }

        }

        public void getSheetInfo()
        {
            final_report = Globals.ThisAddIn.Application.ActiveSheet;
            _Excel.Range last = final_report.Cells.SpecialCells(_Excel.XlCellType.xlCellTypeLastCell, Type.Missing);
            lastUsedRow = last.Row;
            lastUsedCol = last.Column;
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
            MySql.Data.MySqlClient.MySqlDataAdapter Ids = new MySql.Data.MySqlClient.MySqlDataAdapter("select banner_id from instructor order by banner_id;", cnn);
            MySql.Data.MySqlClient.MySqlDataAdapter Fname = new MySql.Data.MySqlClient.MySqlDataAdapter("select first_name from instructor order by first_name;", cnn);
            MySql.Data.MySqlClient.MySqlDataAdapter Lname = new MySql.Data.MySqlClient.MySqlDataAdapter("select last_name from instructor order by last_name;", cnn);
            string IdList = stringifySet(Ids);
            string firstNameList = stringifySet(Fname);
            string lastNamesList = stringifySet(Lname);
            DataSet ds = new DataSet();
            dscmd.Fill(ds);
            getSheetInfo();
            string previous = "", current = "";
            for (int row = 0; row <= ds.Tables[0].Rows.Count - 1; row++)
            {
                current = "";
                for (int col = 0; col <= ds.Tables[0].Columns.Count - 1; col++)
                {
                    if(col == 4)     //Professor Bannar ID Col
                    {
                        var cell = (Range)final_report.Cells[row + 2, col + 1];
                        cell.Validation.Delete();
                        cell.Validation.Add(XlDVType.xlValidateList,
                                            XlDVAlertStyle.xlValidAlertInformation,
                                            XlFormatConditionOperator.xlBetween,
                                            IdList,
                                            Type.Missing);
                        cell.Validation.IgnoreBlank = true;
                        cell.Validation.InCellDropdown = true;
                        cell.Value = "";
                    }
                    if(col == 5)      //Professor First Names Col
                    {
                        var cell = (Range)final_report.Cells[row + 2, col + 1];
                        cell.Validation.Delete();
                        cell.Validation.Add(XlDVType.xlValidateList, 
                                            XlDVAlertStyle.xlValidAlertInformation,
                                            XlFormatConditionOperator.xlBetween,
                                            firstNameList,
                                            Type.Missing);                                            
                        cell.Validation.IgnoreBlank = true;
                        cell.Validation.InCellDropdown = true;
                        cell.Value = "";
                    }
                    else if(col == 6)     //Professor Last Names Col
                    {
                        var cell = (Range)final_report.Cells[row + 2, col + 1];
                        cell.Validation.Delete();
                        cell.Validation.Add(XlDVType.xlValidateList,
                                            XlDVAlertStyle.xlValidAlertInformation,
                                            XlFormatConditionOperator.xlBetween,
                                            lastNamesList,
                                            Type.Missing);                                           
                        cell.Validation.IgnoreBlank = true;
                        cell.Validation.InCellDropdown = true;
                        cell.Value = "";
                    }
                    else //Every other column
                    {   
                        if(col < 4)        //Only want to grab information up with section and course name
                            current += data + ",";
                        data = ds.Tables[0].Rows[row].ItemArray[col].ToString();
                        final_report.Cells[row + 2, col + 1] = data;
                    }
                }
                if(row > 1)     //Creating the border, skipping the header row
                    if (!current.Equals(previous))
                    {
                        var rng = "A" + (row + 2) + ":R18";
                        final_report.Cells.Range[rng].Borders[_Excel.XlBordersIndex.xlEdgeTop].LineStyle = _Excel.XlLineStyle.xlContinuous;
                        final_report.Cells.Range[rng].Borders[_Excel.XlBordersIndex.xlEdgeTop].Weight = 3d;
                    }
                previous = current;
            }
        }
    }
}
