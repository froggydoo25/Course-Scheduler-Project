using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using MySql.Data;
using System.Data.SqlClient;
using Microsoft.Office.Interop.Excel;
using _Excel = Microsoft.Office.Interop.Excel;

namespace Sweng
{
    // Fields to get
    // Subject Code, Course #, Sect #, Course Title, Prof Bannar ID, Prof First Name, Prof Last Name, Day, Slot Time, Room, Course Credits, Course Max, Course Waitlist, Course Type, Proffesor Credits, % Of course taught, Need Room for finals?, Notes
    //
    //MySQL for getting info from databse
    // call FinalReport();
    class FinalReport
    {
        string path = "";
        public _Application excel = new _Excel.Application();
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


        public FinalReport(string path, int room, int final_rep)
        {
            this.path = path;
            wb = excel.Workbooks.Open(path);
            rooms = wb.Worksheets[room];
            final_report = wb.Worksheets[final_rep];
            lastRow = final_report.Cells.Find("*", System.Reflection.Missing.Value,
                               System.Reflection.Missing.Value, System.Reflection.Missing.Value,
                               _Excel.XlSearchOrder.xlByRows, _Excel.XlSearchDirection.xlPrevious,
                               false, System.Reflection.Missing.Value, System.Reflection.Missing.Value).Row;
            lastCol = 18;
            connectionString = "server=localhost;uid=root;pwd=password;database=sweng";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            cnn.Open();
        }

        public void generateReport()
        {
            try
            {
                clearSheet(final_report);
                reportFromDB();
                //simplifyReport();
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
            sql = "call FinalReport();";
            MySql.Data.MySqlClient.MySqlDataAdapter dscmd = new MySql.Data.MySqlClient.MySqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            dscmd.Fill(ds);
            for (int i = 0; i <= ds.Tables[0].Rows.Count - 1; i++)
            {
                for (int j = 0; j <= ds.Tables[0].Columns.Count - 1; j++)
                {
                    data = ds.Tables[0].Rows[i].ItemArray[j].ToString();
                    final_report.Cells[i + 2, j + 1] = data;
                }
            }
            Console.WriteLine("Done with report!");
        }

        public void simplifyReport()
        {
            //Section #(C), Course Title(D), Prof First Name(F), Prof Last Name(G), Slot Time(i), Room(j)
            string previous = "";
            string current = "";
            for (int row = 2; row < lastRow + 1; row++)
            {
                current = "";
                current += ReadCell(row, 3, final_report) + "," + ReadCell(row, 4, final_report) + "," + ReadCell(row, 6, final_report) + "," + ReadCell(row, 7, final_report) + "," + ReadCell(row, 9, final_report) + "," + ReadCell(row, 10, final_report);
                if(previous.Equals(current))                {
                    final_report.Cells[row - 1, 8] = ReadCell(row - 1, 8, final_report) + ReadCell(row, 8, final_report);
                    //final_report.Cells[row - 1, 8] = "HellO";
                    final_report.Rows.Delete(row);
                }
                previous = current;
            }
        }

        public void centerAlign()
        {
            var rng = final_report.get_Range("A1:R300", Type.Missing);
            rng.Cells.HorizontalAlignment = Microsoft.Office.Interop.Excel.XlHAlign.xlHAlignCenter;
            rng.Cells.VerticalAlignment = Microsoft.Office.Interop.Excel.XlVAlign.xlVAlignCenter;
            rng.Cells.Columns.AutoFit();
            rng.Cells.Rows.AutoFit();
            Console.WriteLine("Done aligning!");

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

        private void fillRoom(string room)
        {
            switch (room)
            {
                case "Bunce156":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 4; row < 13; row++)
                        for (int col = 2; col < 7; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Enterprise517":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 10; row < 13; row++)
                        for (int col = 10; col < 16; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "James2108":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 4; row < 13; row++)
                        for (int col = 18; col < 23; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "James2113":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 17; row < 26; row++)
                        for (int col = 2; col < 7; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob121":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 17; row < 26; row++)
                        for (int col = 10; col < 15; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob211":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 4; row < 13; row++)
                        for (int col = 18; col < 23; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob305":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 36; row < 39; row++)
                        for (int col = 2; col < 7; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob312":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 30; row < 39; row++)
                        for (int col = 10; col < 16; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob323":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 30; row < 39; row++)
                        for (int col = 18; col < 23; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob325":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 43; row < 52; row++)
                        for (int col = 2; col < 7; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Wilson206":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 49; row < 52; row++)
                        for (int col = 10; col < 16; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
                case "Rob207":
                    if (this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 43; row < 52; row++)
                        for (int col = 18; col < 23; col++)
                            this.room.Add(new KeyValuePair<int, int>(row, col));
                    break;
            }
        }

        public void Close()
        {
            wb.Close(0);
        }
    }
}
