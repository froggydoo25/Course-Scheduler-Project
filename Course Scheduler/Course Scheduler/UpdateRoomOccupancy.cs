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

namespace Course_Sceduler
{
    class UpdateRoomOccupancy
    {
        string path = "";
        _Excel.Worksheet rooms;
        List<KeyValuePair<int, int>> room = new List<KeyValuePair<int, int>>();
        string[] line;

        string connectionString = null;
        string sql = null;
        string data = null;
        private MySqlConnection cnn;

        public UpdateRoomOccupancy()
        {
            this.cnn = new MySqlConnection();
            cnn.ConnectionString = "server=localhost;uid=root;pwd=password;database=sweng";
            this.cnn.Open();
        }
        private char AssignDay(int xCoord)
        {
            char result = '\0';
            switch (xCoord % 8)
            {
                case 2:
                    result = 'M';
                    break;
                case 3:
                    result = 'T';
                    break;
                case 4:
                    result = 'W';
                    break;
                case 5:
                    result = 'R';
                    break;
                case 6:
                    result = 'F';
                    break;
            }
            return result;
        }

        private string AssignBuilding(int xCoord, int yCoord)
        {
            string result = "";

            int buildingXVal = 0;
            int buildingYVal = 0;

            switch (xCoord / 8) //0 = 1, 1 = 9, 2 = 17 for x coord of building concat
            {
                case 0:
                    buildingXVal = 1;
                    break;
                case 1:
                    buildingXVal = 9;
                    break;
                case 2:
                    buildingXVal = 17;
                    break;
            }

            switch (yCoord / 15) //0 = 1, 1 = 16, 2 = 31, 3 = 46 for y coord of building concat
            {
                case 0:
                    buildingYVal = 1;
                    break;
                case 1:
                    buildingYVal = 16;
                    break;
                case 2:
                    buildingYVal = 31;
                    break;
                case 3:
                    buildingYVal = 46;
                    break;
            }

            if (buildingXVal != 0 && buildingYVal != 0)
            {
                result = ReadCell(buildingYVal, buildingXVal, rooms);
                string[] list = result.Split(' ');
                result = list[0];
            }
            return result;
        }

        private string AssignRoomNum(int xCoord, int yCoord)
        {
            string result = "";

            int buildingXVal = 0;
            int buildingYVal = 0;

            switch (xCoord / 8) //0 = 1, 1 = 9, 2 = 17 for x coord of building concat
            {
                case 0:
                    buildingXVal = 1;
                    break;
                case 1:
                    buildingXVal = 9;
                    break;
                case 2:
                    buildingXVal = 17;
                    break;
            }

            switch (yCoord / 15) //0 = 1, 1 = 16, 2 = 31, 3 = 46 for y coord of building concat
            {
                case 0:
                    buildingYVal = 1;
                    break;
                case 1:
                    buildingYVal = 16;
                    break;
                case 2:
                    buildingYVal = 31;
                    break;
                case 3:
                    buildingYVal = 46;
                    break;
            }

            if (buildingXVal != 0 && buildingYVal != 0)
            {
                result = ReadCell(buildingYVal, buildingXVal, rooms);
                if (result != null)
                {
                    string[] list = result.Split(' ');
                    foreach (string i in list)
                    {
                        if (i.All(char.IsDigit))
                        {
                            result = i;
                        }
                    }
                }
            }

            return result;
        }

        private string AssignTime(int yCoord)
        {
            string result = "";
            switch (yCoord % 15)
            {
                case 5:
                    result = "08:00:00";
                    break;
                case 6:
                    result = "09:30:00";
                    break;
                case 7:
                    result = "11:00:00";
                    break;
                case 8:
                    result = "12:30:00";
                    break;
                case 9:
                    result = "14:00:00";
                    break;
                case 10:
                    result = "15:30:00";
                    break;
                case 11:
                    result = "17:00:00";
                    break;
                case 12:
                    result = "18:30:00";
                    break;
                case 13:
                    result = "20:00:00";
                    break;
                case 14:
                    result = "21:30:00";
                    break;
            }
            return result;
        }

        private string AssignAbbrev(string abbrevConcatSects)
        {
            string result = "";

            if (abbrevConcatSects.Contains('-'))
            {
                string[] abbrevAndSects = abbrevConcatSects.Split('-');
                result = abbrevAndSects[0];
            }

            return result;
        }

        private int[] AssignSections(string abbrevConcatSects)
        {
            int[] sects = new int[20];

            if (abbrevConcatSects.Contains('-'))
            {
                string[] abbrevAndSects = abbrevConcatSects.Split('-');
                if (abbrevAndSects[1].Contains('/'))
                {
                    string[] sectsStr = abbrevAndSects[1].Split('/');
                    for (int i = 0; i < sectsStr.Length; i++)
                    {
                        sects[i] = Int16.Parse(sectsStr[i]);
                    }
                }
                else
                {
                    sects[0] = Int16.Parse(abbrevAndSects[1]);
                }
            }

            return sects;
        }

        public void clearAllSections()
        {
            MySql.Data.MySqlClient.MySqlCommand cmd1;
            MySql.Data.MySqlClient.MySqlCommand cmd2;

            cmd1 = new MySql.Data.MySqlClient.MySqlCommand("clearAllSchedules", cnn);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.ExecuteNonQuery();

            cmd2 = new MySql.Data.MySqlClient.MySqlCommand("clearAllSections", cnn);
            cmd2.CommandType = CommandType.StoredProcedure;
            cmd2.ExecuteNonQuery();
        }

        // This clears only the current scheduled slots. Use this to start over for the current semester.
        public void clearScheduleOnly()
        {
            MySql.Data.MySqlClient.MySqlCommand cmd1;

            cmd1 = new MySql.Data.MySqlClient.MySqlCommand("clearAllSchedules", cnn);
            cmd1.CommandType = CommandType.StoredProcedure;
            cmd1.ExecuteNonQuery();
        }

        public void DeleteScheduledSlot(char day, string time, string building, string roomNum)
        {
            sql = "call deleteAllSectionsinTimeSlot('" + day + "', '" + time + "', '" + building + "', '" + roomNum + "');";
            MySql.Data.MySqlClient.MySqlDataAdapter dscmd = new MySql.Data.MySqlClient.MySqlDataAdapter(sql, cnn);
        }

        public void InsertIntoDatabase(char day, string time, string building, string roomNum, int sectNum, string abbrev)
        {
            MySqlCommand sql = new MySqlCommand("insertScheduledSlot", this.cnn);
            sql.CommandType = CommandType.StoredProcedure;

            sql.Parameters.AddWithValue("@instructorName", "NULL");
            sql.Parameters["@instructorName"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@timeSlotDay", day);
            sql.Parameters["@timeSlotDay"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@timeSlotStartTime", time);
            sql.Parameters["@timeSlotStartTime"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@roomBuilding", building);
            sql.Parameters["@roomBuilding"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@roomNumber", roomNum);
            sql.Parameters["@roomNumber"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@sectionNumber", sectNum);
            sql.Parameters["@sectionNumber"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@course_abbreviation", abbrev);
            sql.Parameters["@course_abbreviation"].Direction = ParameterDirection.Input;

            sql.Parameters.AddWithValue("@result", MySqlDbType.VarChar);
            sql.Parameters["@result"].Direction = ParameterDirection.Output;

            sql.ExecuteNonQuery();
        }

        private string ReadCell(int row, int col, Worksheet sheet)
        {
            if (sheet.Cells[row, col].Value2 != null) //problem
                return sheet.Cells[row, col].Value2 + "";
            return "";
        }

        public void WriteToDatabase()
        {//i = x coord or col
            rooms = Globals.ThisAddIn.Application.ActiveSheet;
            for (int i = 2; i < 24; i++) //Use 24 since that's the highest X value with data
            {//j = y coord or row
                for (int j = 5; j < 60; j++) //Use 60 since that's the highest Y value with data
                {
                    string building = AssignBuilding(i, j);
                    string roomNum = AssignRoomNum(i, j);
                    char day = AssignDay(i);
                    string time = AssignTime(j);
                    if ((day != '\0') && (time != "") && (building != "") && (roomNum != ""))
                    {
                        string abbrevConcatSects = ReadCell(j, i, rooms);
                        string abbrev = AssignAbbrev(abbrevConcatSects);
                        //int[] sects = AssignSections(abbrevConcatSects);
                        DeleteScheduledSlot(day, time, building, roomNum);
                        InsertIntoDatabase(day, time, building, roomNum, 1, "IOOP");
                        //if (abbrev != "" && sects != null)
                        //{ 
                        //foreach (int q in sects)
                        // {

                        //}
                        //}
                    }
                }
            }
        }
    }
}