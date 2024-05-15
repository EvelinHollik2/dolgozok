using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using static Mysqlx.Notice.Warning.Types;

namespace ConsoleApp1
{
    internal class Adatbazis
    {
        MySqlConnection connection;
        MySqlCommand command;
        public Adatbazis()
        {
            MySqlConnectionStringBuilder builder = new MySqlConnectionStringBuilder();
            builder.Server = "localhost"; //hol található az adatbázis
            builder.UserID = "root"; //felhasználó azonosító
            builder.Password = ""; //jelszó
            builder.Database = "dolgozok"; //adatbázis
            connection = new MySqlConnection(builder.ConnectionString); //adatok rendezése
            command = connection.CreateCommand(); //kapcsolat létrehozása
            try
            { //kapcsolat biztosítása
                kapcsolatNyit();
                kapcsolatZar();
            }
            catch (MySqlException ex)
            { //ha nincs akkor hibaüzenet
                Console.WriteLine(ex.Message);
                Console.ReadLine();
                Environment.Exit(0);
            }
        }

        private void kapcsolatZar()
        {
            if (connection.State != System.Data.ConnectionState.Closed) //megvizsgáljuk hogy zárt e a kapcsolat
            {
                connection.Close();
            }
        }

        private void kapcsolatNyit()
        {
            if (connection.State != System.Data.ConnectionState.Open) //megvizsgáljuk hogy nyitott e a kapcsolat
            {
                connection.Open();
            }
        }

        internal List<Dolgozo> getDolgozo()
        {
            List<Dolgozo> dolgozo = new List<Dolgozo>();
            command.CommandText = "SELECT `dolgozoid`,`nev`,`neme`,`reszleg`,`belepesev`,`ber` FROM `dolgozok`"; //adatok hozzáadása az adatbázisból lekérdezéssel
            kapcsolatNyit();
            using (MySqlDataReader dr = command.ExecuteReader())
            {
                while (dr.Read())
                {
                    Dolgozo dolgozok = new Dolgozo(dr.GetInt32("dolgozoid"), dr.GetString("nev"), dr.GetString("neme"), dr.GetString("reszleg"), dr.GetInt32("belepesev"), dr.GetInt32("ber"));
                    dolgozo.Add(dolgozok);
                }
                return dolgozo;
            }
            kapcsolatZar();
        }
    }
}
