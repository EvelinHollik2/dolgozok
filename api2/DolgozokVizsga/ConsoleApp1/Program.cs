using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    internal class Program
    {
        static Adatbazis db = new Adatbazis();
        static List<Dolgozo> dolgozo = new List<Dolgozo>();

        static void Main(string[] args)
        {
            beolvas();
            feladat01();
            feladat02();
            feladat03();
            feladat04();


            Console.WriteLine("Program vége");
            Console.ReadLine();
        }

        private static void feladat04()
        {
            Console.WriteLine("4.feladat:");
            foreach (Dolgozo item in dolgozo.FindAll(a => a.reszleg.Equals("asztalosműhely")))
            {
                Console.WriteLine($"\t{item.nev}");
            }
            
        }

        private static void feladat03()
        {
            Console.WriteLine("3.feladat:");
            foreach (var item in dolgozo.GroupBy(a => a.reszleg).Select(b => new {reszleg = b.Key, letszam = b.Count()}))
            {
                Console.WriteLine($"\t{item.reszleg} - {item.letszam}");

            }
            
        }

        private static void feladat02()
        {
            Console.WriteLine("2.feladat:");
            Dolgozo maxkeresetu = dolgozo.Find(a => a.ber == dolgozo.Max(b => b.ber));
            Console.WriteLine($"\tA legmagasabb keresetű dolgozó: {maxkeresetu.nev}");
        }

        private static void feladat01()
        {
            Console.WriteLine("1. feladat:");
            Console.WriteLine($"\tDolgozók száma: {dolgozo.Count}");
        }

        private static void beolvas()
        {
            dolgozo.Clear();
            dolgozo = db.getDolgozo();
        }
    }
}
