using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sweng
{
    class Driver
    {
        //static string[] courses = { "Bunce156", "Enterprise517", "James2108", "James2113", "Rob121", "Rob211", "Rob305", "Rob312", "Rob323", "Wilson206", "Rob207" };
        static void Main(string[] args)
        {
            //FinalReport fr = new FinalReport(@"H:\Desktop\Final Report\Sweng\Fall2020_plan_intermediate.xlsx", 5, 6);
            FinalReport fr = new FinalReport(@"C:\Users\Sanchez\Desktop\Visual Studio\Course Scheduler\Course-Scheduler-Project\Final Report(Not the add-in)\Sweng\Copy_of_Fall2020_plan_intermediate_w_Final_Report.xlsx", 5, 6);
            fr.generateReport();
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
