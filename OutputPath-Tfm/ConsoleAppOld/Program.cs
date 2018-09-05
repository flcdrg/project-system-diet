using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleAppOld
{
    class Program
    {
        static void Main(string[] args)
        {
            string text = System.IO.File.ReadAllText(@"..\..\program.cs");

            Console.WriteLine(text.Substring(0, 20));

            Console.ReadLine();
        }
    }
}
