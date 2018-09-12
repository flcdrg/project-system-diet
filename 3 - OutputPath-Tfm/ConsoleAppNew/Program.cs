using System;

namespace ConsoleAppNew
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
