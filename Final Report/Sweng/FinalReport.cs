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
            connectionString = "server=elvis.rowan.edu;uid=jiangs1;pwd=agingmonster;database=jiangs1";
            cnn = new MySql.Data.MySqlClient.MySqlConnection(connectionString);
            cnn.Open();
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
        }

        public void makeReport(string room)
        {
            fillRoom(room);
            string result = "";
            foreach (KeyValuePair<int, int> course in this.room)
            {
                if (ReadCell(course) != "")
                {
                    result += ReportForClass(course, room) + "\n";
                    line = result.Split(',');
                    writeInSheet(line);
                    result = "";
                    //Array.Clear(line, 0, line.Length);
                }
                else
                    continue;
            }
        }

        public void centerAlign()
        {
            var rng = final_report.get_Range("A2:R300", Type.Missing);
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

        private void writeInSheet(string[] info)
        {
            foreach (string s in info)
            {
                final_report.Cells[row, col] = s;
                col++;
            }
            //Console.WriteLine("Done with one time slot");

            col = 1;
            row++;
        }

        private string ReportForClass(KeyValuePair<int, int> course, string room)
        {
            string section = ReadCell(course);
            if (section != "")
            {
                string result = "";
                return result;
            }
            return "";

        }

        private string ReadCell(KeyValuePair<int, int> course)
        {
            int row = course.Key;
            int col = course.Value;
            if (rooms.Cells[row, col].Value2 != null)
                return rooms.Cells[row, col].Value2 + "";
            return "";
        }

        private string ReadCell(int row, int col)
        {
            if (rooms.Cells[row, col].Value2 != null)
                return rooms.Cells[row, col].Value2 + "";
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
