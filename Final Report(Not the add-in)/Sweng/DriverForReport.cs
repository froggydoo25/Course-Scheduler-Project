using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SWENG
{
    class DriverForReport
    {      //"Bunce156" , "Enterprise517", "James2108", "James2113", "Rob121", "Rob211", "Rob305", "Rob312", "Rob323", "Wilson206", "Rob207"
        static string[] courses = { "Bunce156", "Enterprise517", "James2108", "James2113", "Rob121", "Rob211", "Rob305", "Rob312", "Rob323", "Wilson206", "Rob207" };
        static void Main(string[] args)
        {
            FinalReport fr = new FinalReport(@"C:\Users\Sanchez\Desktop\Visual Studio\SWENG\SWENG\Fall2020_plan_intermediate.xlsx", 5, 6);
            fr.clearSheet(fr.final_report);
            foreach (string room in courses)
            {
                fr.makeReport(room);
            }
            try
            {
                fr.centerAlign();
                fr.wb.Save();
                Console.WriteLine("Done!");
            }
            catch (System.Runtime.InteropServices.COMException e)
            {
                Console.WriteLine(e);
            }
            fr.Close();
            fr.excel.Quit();
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(fr.rooms);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(fr.final_report);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(fr.wb);
            System.Runtime.InteropServices.Marshal.FinalReleaseComObject(fr.excel);
            GC.Collect();
            GC.WaitForPendingFinalizers();
            Console.Read();
        }
    }
}
