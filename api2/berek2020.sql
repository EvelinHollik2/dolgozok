--
-- Adatbázis: `dolgozok`
--
CREATE DATABASE dolgozok;
USE dolgozok;
-- --------------------------------------------------------

CREATE TABLE `dolgozok` (
  `nev` varchar(18) DEFAULT NULL,
  `neme` enum('férfi','nő') DEFAULT NULL,
  `reszleg` varchar(14) DEFAULT NULL,
  `belepesev` int(4) DEFAULT NULL,
  `ber` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ;

INSERT INTO `dolgozok` (`nev`, `neme`, `reszleg`, `belepesev`, `ber`) VALUES
('Beri Dániel', 'férfi', 'beszerzés', 1979, 222943),
('Csavar Pista', 'férfi', 'pénzügy', 1995, 234074),
('Lakatos Pál', 'férfi', 'beszerzés', 1986, 159538),
('Devon Mihály', 'férfi', 'asztalosműhely', 2007, 161533),
('Él Ilona', 'nő', 'beszerzés', 1982, 299865),
('Gábor Gizella', 'nő', 'értékesítés', 2003, 181108),
('Kálvin Ödömér', 'férfi', 'lakatosműhely', 1976, 321959),
('Kolompár Gáspár', 'férfi', 'asztalosműhely', 2003, 253794),
('Sörös Sándor', 'férfi', 'lakatosműhely', 2012, 202216),
('Léc Elek', 'férfi', 'asztalosműhely', 2001, 220506),
('Vonal Deodát', 'férfi', 'beszerzés', 1997, 187753),
('Sipos Gábor', 'férfi', 'karbantartás', 1982, 185714),
('Szigeti Sándor', 'férfi', 'karbantartás', 1971, 315764),
('Volga Olga', 'nő', 'szerelőműhely', 2009, 197090),
('Körte Vilmos', 'férfi', 'szerelőműhely', 2016, 256051),
('Nagy Zoltán', 'nő', 'személyzeti', 1979, 167928),
('Sunyi Béla', 'férfi', 'karbantartás', 2010, 294523),
('Tiszai József', 'férfi', 'szerelőműhely', 2001, 305412),
('Fül Elek', 'férfi', 'értékesítés', 2017, 112590),
('Puli Sándor', 'férfi', 'lakatosműhely', 1984, 122782),
('Seres András', 'férfi', 'értékesítés', 1985, 214497),
('Vígh József', 'férfi', 'pénzügy', 1986, 202335),
('Alsófalvi Amália', 'nő', 'asztalosműhely', 2017, 130090),
('Mayer Tamás', 'férfi', 'pénzügy', 1998, 169054),
('Végh József', 'férfi', 'karbantartás', 1999, 187443),
('Szokai Kinga', 'nő', 'értékesítés', 2000, 101498),
('Kondor Katalin', 'nő', 'pénzügy', 2013, 287247),
('Kovács János', 'férfi', 'beszerzés', 1993, 346023),
('Fityeházi Ágoston', 'férfi', 'személyzeti', 2017, 306860),
('Karap Béla', 'férfi', 'pénzügy', 1974, 191443),
('Pán Péter', 'férfi', 'beszerzés', 2017, 189096),
('Pintér Sándor', 'férfi', 'pénzügy', 1977, 212158),
('Sarkadi Csaba', 'férfi', 'személyzeti', 1992, 275338),
('Horváth Dezső', 'férfi', 'pénzügy', 1991, 338631),
('Kónya Anett', 'nő', 'értékesítés', 1992, 186852),
('Pataki Aladár', 'férfi', 'szerelőműhely', 2003, 241873),
('William Clinton', 'férfi', 'karbantartás', 2004, 285206),
('Céhes Eszter', 'nő', 'pénzügy', 2012, 296289),
('Gaz Julianna', 'nő', 'értékesítés', 2006, 131620),
('Tóth Imre', 'férfi', 'asztalosműhely', 1988, 285381),
('Higli Jolán', 'nő', 'lakatosműhely', 1987, 170292),
('Égerházi Zsanett', 'nő', 'asztalosműhely', 1993, 295283),
('Lakodalom Lajos', 'férfi', 'szerelőműhely', 1970, 229541),
('Nem Tamás', 'férfi', 'karbantartás', 2016, 220554),
('Németh Noémi', 'nő', 'karbantartás', 1983, 282454),
('Kiss Csilla', 'nő', 'beszerzés', 2009, 337231),
('Lapos Elemér', 'férfi', 'lakatosműhely', 1972, 306860),
('Szokai Barbara', 'nő', 'pénzügy', 2013, 184629),
('Károly Zoltán', 'férfi', 'értékesítés', 1984, 139730),
('Kozlovszky Jenő', 'férfi', 'asztalosműhely', 2018, 248206);


