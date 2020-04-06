using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using MySql.Data;
using Renci.SshNet;
using System.Data.SqlClient;
using Microsoft.Office.Interop.Excel;
using _Excel = Microsoft.Office.Interop.Excel;

namespace SWENG
{
    // Fields to get
    // Subject Code, Course #, Sect #, Course Title, Prof Bannar ID, Prof First Name, Prof Last Name, Day, Slot Time, Room, Course Credits, Course Max, Course Waitlist, Course Type, Proffesor Credits, % Of course taught, Need Room for finals?, Notes
    class FinalReport
    {
        string path = "";
        public _Application excel = new _Excel.Application();
        public Workbook wb;
        public Worksheet rooms, final_report;
        List<KeyValuePair<int, int>> room = new List<KeyValuePair<int, int>>();
        string[] line;
        int row = 2, col = 1;


        public FinalReport(string path, int room, int final_rep)
        {
            this.path = path;
            wb = excel.Workbooks.Open(path);
            rooms = wb.Worksheets[room];
            final_report = wb.Worksheets[final_rep];
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
            var rng = final_report.get_Range("A2:E300", Type.Missing);
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

        private string ReportForClass(KeyValuePair<int,int> course, string room)
        {
            string section = ReadCell(course);
            if(section != "")
            {
                string result = "";
                string startTime = AssignStartTime(course.Key);
                string day = AssignDay(course.Value);
                result += startTime + "," + day + "," + ReadCell(course) + "," + room;
                return result;
            }
            return "";

        }

        private string AssignStartTime(int time)
        {
            string result = "";
            switch (time)
            {
                case 4:
                case 17:
                case 30:
                case 43:
                    result = "8:00 AM";
                    break;
                case 5:
                case 18:
                case 31:
                case 44:
                    result = "9:30 AM";
                    break;
                case 6:
                case 19:
                case 32:
                case 45:
                    result = "11:00 AM";
                    break;
                case 7:
                case 20:
                case 33:
                case 46:
                    result = "12:30 PM";
                    break;
                case 8:
                case 21:
                case 34:
                case 47:
                    result = "2:00 PM";
                    break;
                case 9:
                case 22:
                case 35:
                case 48:
                    result = "3:30 PM";
                    break;
                case 10:
                case 23:
                case 36:
                case 49:
                    result = "5:00 PM";
                    break;
                case 11:
                case 24:
                case 37:
                case 50:
                    result = "6:30 PM";
                    break;
                case 12:
                case 25:
                case 38:
                case 51:
                    result = "8:00 PM";
                    break;
            }
            return result;
        }

        private string AssignDay(int day)
        {
            string result = "";
            switch (day)
            {
                case 2:
                case 10:
                case 18:
                    result = "Monday";
                    break;
                case 3:
                case 11:
                case 19:
                    result = "Tuesday";
                    break;
                case 4:
                case 12:
                case 20:
                    result = "Wednesday";
                    break;
                case 5:
                case 13:
                case 21:
                    result = "Thursday";
                    break;
                case 6:
                case 14:
                case 22:
                    result = "Friday";
                    break;
            }
            return result;
        }

        private string ReadCell(KeyValuePair<int,int> course)
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
                    if(this.room.Count() != 0)
                        this.room.Clear();
                    for (int row = 4; row < 13; row++)
                        for (int col = 2; col < 7; col++)
                            this.room.Add(new KeyValuePair<int, int>(row,col));
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
