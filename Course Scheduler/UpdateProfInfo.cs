using System;
using System.Data;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using MySql.Data;
using System.Data.SqlClient;
using Microsoft.Office.Interop.Excel;
using _Excel = Microsoft.Office.Interop.Excel;
using Course_Scheduler;
using MySql.Data.MySqlClient;

namespace Course_Scheduler
{
    class UpdateProfInfo
    {
        string path = "";
        _Excel.Worksheet finalReport;
        List<KeyValuePair<int, int>> room = new List<KeyValuePair<int, int>>();
        string[] line;
        int lastUsedRow, lastUsedCol;

        string connectionString = null;
        string sql = null;
        string data = null;
        private MySqlConnection cnn;

        public UpdateProfInfo()
        {
            this.cnn = new MySqlConnection();
            cnn.ConnectionString = "server=localhost;uid=root;pwd=Pokemonres25;database=sweng";
            this.cnn.Open();
        }

        public void updateBannerIDs()
        {
            finalReport = Globals.ThisAddIn.Application.ActiveSheet;
            _Excel.Range last = finalReport.Cells.SpecialCells(_Excel.XlCellType.xlCellTypeLastCell, Type.Missing);
            lastUsedRow = last.Row;
            lastUsedCol = last.Column;
            for (int y = 2; y < lastUsedRow; y++)
            {
                string bannerID = ReadCell(y, 5, finalReport);
                string instructorName = (ReadCell(y, 6, finalReport) + " " + ReadCell(y, 7, finalReport));
                if ((bannerID != "") && (instructorName != ""))
                {
                    bannerIDUpdate(bannerID, instructorName);
                }
            }
        }

        public void updateProfIntoDB()
        {
            finalReport = Globals.ThisAddIn.Application.ActiveSheet;
            _Excel.Range last = finalReport.Cells.SpecialCells(_Excel.XlCellType.xlCellTypeLastCell, Type.Missing);
            lastUsedRow = last.Row;
            lastUsedCol = last.Column;
            for (int y = 2; y < lastUsedRow; y++)
            {
                string instructorName = (ReadCell(y, 6, finalReport) + " " + ReadCell(y, 7, finalReport));
                if (instructorName != " ")
                {
                    string dayOfWeek = ReadCell(y, 8, finalReport);
                    string roomInfo = ReadCell(y, 10, finalReport);
                    string courseTitle = ReadCell(y, 4, finalReport);
                    string sectionNumber = ReadCell(y, 3, finalReport);
                    string[] times = ReadCell(y, 9, finalReport).Split(' ');
                    string startTime = "";
                    if (times.Length > 1 && times[1].Equals("PM"))
                    {
                        string[] nums = times[0].Split(':');
                        if (Int16.Parse(nums[0]) != 12)
                        {
                            startTime = (Int16.Parse(nums[0]) + 12) + ":" + nums[1] + ":00";
                        }
                        else
                        {
                            startTime = times[0] + ":00";
                        }
                    }
                    else
                    {
                        startTime = times[0] + ":00";
                    }

                    for (int i = 0; i < dayOfWeek.Length; i++)
                    {
                        string oldProf = getOldProfInfo(dayOfWeek[i], startTime, roomInfo, courseTitle, sectionNumber);
                        if (!oldProf.Equals(instructorName))
                        {
                            profInfoUpdate(instructorName, oldProf, dayOfWeek[i], startTime, roomInfo, courseTitle, sectionNumber);
                        }
                    }
                }
            }
        }

        public void bannerIDUpdate(string bannerID, string instructorName)
        {
            MySqlCommand sql = new MySqlCommand("updateInstructorBannerID", this.cnn);
            sql.CommandType = CommandType.StoredProcedure;

            sql.Parameters.AddWithValue("@bannerID", bannerID);
            sql.Parameters["@bannerID"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@instructorName", instructorName);
            sql.Parameters["@instructorName"].Direction = ParameterDirection.Input;

            sql.Parameters.Add(new MySqlParameter("@result", MySqlDbType.VarChar));
            sql.Parameters["@result"].Direction = ParameterDirection.Output;

            sql.ExecuteNonQuery();
        }

        public void profInfoUpdate(string profName, string oldProf, char day, string startTime, string roomInfo, string courseTitle, string sectionNumber)
        {
            MySqlCommand sql = new MySqlCommand("updateInstructorOfScheduleIntoDatabase", this.cnn);
            sql.CommandType = CommandType.StoredProcedure;

            sql.Parameters.AddWithValue("@instructorName", profName);
            sql.Parameters["@instructorName"].Direction = ParameterDirection.Input;
            
            sql.Parameters.AddWithValue("@oldInstructorName", oldProf);
            sql.Parameters["@oldInstructorName"].Direction = ParameterDirection.Input;
            

            sql.Parameters.AddWithValue("@day_of_week", day);
            sql.Parameters["@day_of_week"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@start_time", startTime);
            sql.Parameters["@start_time"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@room_info", roomInfo);
            sql.Parameters["@room_info"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@course_title", courseTitle);
            sql.Parameters["@course_title"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@section_number", sectionNumber);
            sql.Parameters["@section_number"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@result", MySqlDbType.VarChar);
            sql.Parameters["@result"].Direction = ParameterDirection.Output;

            sql.ExecuteNonQuery();
        }

        public string getOldProfInfo(char day, string startTime, string roomInfo, string courseTitle, string sectionNumber)
        {
            string result = "";

            MySqlCommand sql = new MySqlCommand("getOldInstructorTeaching", this.cnn);
            sql.CommandType = CommandType.StoredProcedure;

            sql.Parameters.AddWithValue("@day_of_week", day);
            sql.Parameters["@day_of_week"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@start_time", startTime);
            sql.Parameters["@start_time"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@room_info", roomInfo);
            sql.Parameters["@room_info"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@course_title", courseTitle);
            sql.Parameters["@course_title"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@section_number", sectionNumber);
            sql.Parameters["@section_number"].Direction = ParameterDirection.Input;

            sql.Parameters.Add(new MySqlParameter("@first_name", MySqlDbType.VarChar));
            sql.Parameters["@first_name"].Direction = ParameterDirection.Output;

            sql.Parameters.Add(new MySqlParameter("@last_name", MySqlDbType.VarChar));
            sql.Parameters["@last_name"].Direction = ParameterDirection.Output;

            sql.ExecuteNonQuery();

            string firstName = "";
            string lastName = "";
            
                firstName = (string)sql.Parameters["@first_name"].Value;
                lastName = (string)sql.Parameters["@last_name"].Value;
            

            result = firstName + " " + lastName;

            return result;
        }

        private string ReadCell(int row, int col, Worksheet sheet)
        {
            if (sheet.Cells[row, col].Value2 != null) //problem
                return sheet.Cells[row, col].Value2 + "";
            return "";
        }
    }
}
