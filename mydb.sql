-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 31, 2025 at 10:51 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `idComplaint` int(11) NOT NULL,
  `ComplaintDescription` varchar(500) DEFAULT NULL,
  `ComplaintDate` datetime DEFAULT NULL,
  `ComplaintStatus` varchar(45) NOT NULL,
  `ComplaintType` varchar(45) DEFAULT NULL,
  `ServiceTicket_idServiceTicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`idComplaint`, `ComplaintDescription`, `ComplaintDate`, `ComplaintStatus`, `ComplaintType`, `ServiceTicket_idServiceTicket`) VALUES
(1, 'Problem nie został usunięty – laptop nadal się zawiesza.', '2023-06-12 10:00:00', 'Uznana', 'Reklamacja techniczna', 2),
(2, 'Po naprawie czarny ekran dalej występuje. Proszę o ponowną diagnozę.', '2023-06-08 09:30:00', 'Uznana', 'Reklamacja techniczna', 1),
(3, 'Laptop nadal nie ładuje baterii ponad 50%.', '2023-06-16 11:15:00', 'Uznana', 'Reklamacja techniczna', 2),
(4, 'Czarny ekran nadal po serwisie – ponowna naprawa nie pomogła.', '2023-07-01 14:20:00', 'Uznana', 'Reklamacja techniczna', 3),
(5, 'Klawiatura wciąż nie reaguje, mimo wymiany części.', '2023-08-07 10:50:00', 'Uznana', 'Reklamacja techniczna', 4),
(6, 'Bateria nadal się rozładowuje, mimo wymiany ogniwa.', '2023-08-17 09:40:00', 'Uznana', 'Reklamacja techniczna', 5),
(7, 'Drukarka dalej nie drukuje w kolorze – problem nie rozwiązany.', '2023-09-16 12:30:00', 'Uznana', 'Reklamacja techniczna', 7),
(8, 'Dysk SSD nie został prawidłowo wymieniony – komputer nie bootuje.', '2023-10-03 11:00:00', 'Uznana', 'Reklamacja techniczna', 8),
(9, 'Laptop nadal generuje artefakty – problem po grafice nie został naprawiony.', '2023-10-08 14:10:00', 'Uznana', 'Reklamacja techniczna', 9),
(10, 'Drukarka dalej pobiera za dużo kartek – mimo wymiany wałka.', '2023-10-27 10:20:00', 'Uznana', 'Reklamacja techniczna', 10),
(11, 'Laptop wciąż sam się restartuje – ponownie wymieniono dysk, ale nie pomogło.', '2023-11-10 13:50:00', 'Uznana', 'Reklamacja techniczna', 11),
(12, 'Laptop nadal nie bootuje – mimo drugiej wymiany dysku.', '2024-02-20 09:45:00', 'Uznana', 'Reklamacja techniczna', 12),
(13, 'Komputer nadal sam się restartuje, mimo naprawy zasilacza.', '2024-03-10 11:15:00', 'Uznana', 'Reklamacja techniczna', 13),
(14, 'Drukarka zarysowana w serwisie – żądam rekompensaty.', '2023-11-10 12:00:00', 'Odrzucona', 'Reklamacja szkody fizycznej', 14),
(15, 'Laptop wciąż wyświetla artefakty, pomimo 2 naprawy.', '2024-04-09 10:00:00', 'Uznana', 'Reklamacja techniczna', 15),
(16, 'Głośno wentyluje, mimo czyszczenia wewnętrznego nadal przegrzewa się.', '2024-05-18 14:20:00', 'Uznana', 'Reklamacja techniczna', 17),
(17, 'Na podzespołach nie widać usterek, ale problem nadal występuje.', '2024-08-05 10:30:00', 'Odrzucona', 'Reklamacja techniczna', 18),
(18, 'Laptop głośno wentyluje mimo wymiany wentylatora – nadal przegrzewa się.', '2024-08-12 11:45:00', 'Uznana', 'Reklamacja techniczna', 18),
(19, 'Komputer wciąż nie bootuje – walka o dysk trwa.', '2025-01-17 12:00:00', 'Uznana', 'Reklamacja techniczna', 19),
(20, 'Zbyt długi czas naprawy, proszę o przyspieszenie.', '2025-05-10 09:30:00', 'W trakcie', 'Reklamacja czasu realizacji', 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `devices`
--

DROP TABLE IF EXISTS `devices`;
CREATE TABLE `devices` (
  `idDevices` int(11) NOT NULL,
  `DeviceProducent` varchar(45) DEFAULT NULL,
  `DeviceType` varchar(45) DEFAULT NULL,
  `DeviceModel` varchar(45) DEFAULT NULL,
  `DeviceDescription` varchar(45) DEFAULT NULL,
  `ProductionYear` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`idDevices`, `DeviceProducent`, `DeviceType`, `DeviceModel`, `DeviceDescription`, `ProductionYear`) VALUES
(1, 'Dell', 'Laptop', 'Inspiron 15 3501', 'Laptop zawiesza się podczas pracy', '2020-03-12'),
(2, 'HP', 'Laptop', 'Pavilion 14', 'Nie ładuje się bateria powyżej 50%', '2019-11-05'),
(3, 'Lenovo', 'Laptop', 'ThinkPad T480', 'Czarny ekran podczas uruchamiania', '2018-07-21'),
(4, 'Asus', 'Laptop', 'ZenBook 14', 'Pad klawiatury nie reaguje na przyciski funkc', '2021-01-15'),
(5, 'Apple', 'Laptop', 'MacBook Pro 13', 'Bateria szybko się rozładowuje', '2017-09-07'),
(6, 'Canon', 'Drukarka', 'PIXMA G3260', 'Drukarka zacięcia papieru przy kolorowym wydr', '2019-12-10'),
(7, 'HP', 'Drukarka', 'LaserJet P1102', 'Drukarka nie nagrzewa bębna i nie drukuje', '2018-05-18'),
(8, 'Dell', 'Komputer', 'OptiPlex 5070', 'Komputer się wyłącza losowo podczas obciążeni', '2020-06-02'),
(9, 'HP', 'Komputer', 'ProDesk 600 G5', 'Dysk SSD nie jest wykrywany przez system', '2019-02-22'),
(10, 'Lenovo', 'Komputer', 'ThinkCentre M720', 'Komputer sporadycznie sam się wyłącza', '2018-10-30'),
(11, 'Asus', 'Laptop', 'VivoBook 15', 'Laptop przegrzewa się i uruchamia wentylator ', '2020-08-05'),
(12, 'Acer', 'Komputer', 'Aspire TC-885', 'Komputer nie bootuje systemu – błąd dysku', '2019-03-10'),
(13, 'Epson', 'Drukarka', 'EcoTank L3150', 'Drukarka nie drukuje czarnego koloru', '2019-11-20'),
(14, 'Xerox', 'Drukarka', 'WorkCentre 3225', 'Drukarka pobiera za dużo papieru na raz', '2018-12-25'),
(15, 'MSI', 'Laptop', 'GL65 Leopard', 'Laptop wyświetla artefakty graficzne', '2019-09-17'),
(16, 'Lenovo', 'Laptop', 'IdeaPad 3', 'Laptop zawiesza się przy użyciu przeglądarki', '2020-11-30'),
(17, 'Dell', 'Laptop', 'Latitude 5400', 'Laptop nie łączy się z Wi-Fi', '2019-06-05'),
(18, 'Apple', 'Komputer', 'iMac 21.5', 'iMac nie wykrywa klawiatury bezprzewodowej', '2017-08-10'),
(19, 'HP', 'Laptop', 'Spectre x360', 'Laptop nie włącza się – czarny ekran', '2020-02-20'),
(20, 'Asus', 'Laptop', 'ROG Strix G15', 'Laptop głośno wentyluje, przegrzewa się', '2021-04-12');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `devicesatservice`
--

DROP TABLE IF EXISTS `devicesatservice`;
CREATE TABLE `devicesatservice` (
  `idDevicesAtService` int(11) NOT NULL,
  `DateOfIncome` datetime NOT NULL,
  `DateOfOutcome` datetime DEFAULT NULL,
  `Devices_idDevices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `devicesatservice`
--

INSERT INTO `devicesatservice` (`idDevicesAtService`, `DateOfIncome`, `DateOfOutcome`, `Devices_idDevices`) VALUES
(1, '2023-06-06 10:15:00', '2023-06-10 15:30:00', 1),
(2, '2023-06-11 14:00:00', '2023-06-15 12:45:00', 2),
(3, '2023-06-22 09:30:00', '2023-06-30 17:00:00', 3),
(4, '2023-07-26 10:10:00', '2023-08-05 16:20:00', 4),
(5, '2023-07-26 10:10:00', '2023-08-05 16:20:00', 6),
(6, '2023-08-06 09:00:00', '2023-08-15 14:50:00', 5),
(7, '2023-09-11 13:30:00', '2023-09-15 11:10:00', 8),
(8, '2023-09-14 10:00:00', '2023-09-20 13:45:00', 10),
(9, '2023-09-14 10:00:00', '2023-09-20 13:45:00', 7),
(10, '2023-09-29 15:20:00', '2023-10-05 12:00:00', 8),
(11, '2023-09-29 15:20:00', '2023-10-05 12:00:00', 13),
(12, '2023-09-27 08:40:00', '2023-10-02 10:30:00', 9),
(13, '2023-10-22 09:10:00', '2023-10-25 16:00:00', 11),
(14, '2023-11-03 11:45:00', '2023-11-07 14:15:00', 12),
(15, '2024-02-11 14:00:00', '2024-02-18 09:30:00', 3),
(16, '2024-03-05 10:20:00', '2024-03-08 13:50:00', 1),
(17, '2024-03-30 12:10:00', '2024-04-07 15:30:00', 6),
(18, '2024-04-16 09:00:00', '2024-04-23 12:40:00', 4),
(19, '2024-05-11 08:30:00', '2024-05-15 11:20:00', 7),
(20, '2024-06-12 14:05:00', '2024-06-18 16:10:00', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `idPayment` int(11) NOT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentStatus` varchar(45) NOT NULL,
  `Value` float NOT NULL,
  `PaymentMethod` varchar(45) NOT NULL,
  `ServiceTicket_idServiceTicket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`idPayment`, `PaymentDate`, `PaymentStatus`, `Value`, `PaymentMethod`, `ServiceTicket_idServiceTicket`) VALUES
(1, '2023-06-10 15:45:00', 'Opłacono', 350, 'Gotówka', 1),
(2, '2023-06-15 13:00:00', 'Opłacono', 450, 'Przelew', 2),
(3, '2023-06-30 17:20:00', 'Opłacono', 600, 'Karta', 3),
(4, '2023-08-05 16:30:00', 'Opłacono', 300, 'Przelew', 4),
(5, '2023-08-15 15:10:00', 'Opłacono', 900, 'Przelew', 5),
(6, '2023-09-15 11:50:00', 'Opłacono', 700, 'Karta', 6),
(7, '2023-09-20 14:00:00', 'Opłacono', 400, 'Gotówka', 7),
(8, '2023-10-05 12:15:00', 'Opłacono', 1000, 'Karta', 8),
(9, '2023-10-02 10:45:00', 'Opłacono', 550, 'Przelew', 9),
(10, '2023-10-25 16:10:00', 'Opłacono', 350, 'Gotówka', 10),
(11, '2023-11-07 14:30:00', 'Opłacono', 800, 'Przelew', 11),
(12, '2024-02-18 10:00:00', 'Opłacono', 900, 'Karta', 12),
(13, '2024-03-08 14:10:00', 'Opłacono', 750, 'Przelew', 13),
(14, '2023-11-07 14:30:00', 'Opłacono', 200, 'Gotówka', 14),
(15, '2024-04-07 16:20:00', 'Opłacono', 650, 'BLIK', 15),
(16, '2024-04-23 13:00:00', 'Opłacono', 700, 'Karta', 16),
(17, '2024-05-15 11:45:00', 'Opłacono', 800, 'Przelew', 17),
(18, '2024-08-03 17:00:00', 'Opłacono', 600, 'Karta', 18),
(19, '2025-01-15 13:30:00', 'Opłacono', 1200, 'BLIK', 19),
(20, '2024-11-12 10:10:00', 'Anulowano', 0, '', 20),
(21, NULL, 'Oczekuje', 0, '', 21),
(22, NULL, 'Oczekuje', 0, '', 22),
(23, NULL, 'Oczekuje', 0, '', 23),
(24, NULL, 'Oczekuje', 0, '', 24),
(25, NULL, 'Oczekuje', 0, '', 25);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `idRole` int(11) NOT NULL,
  `RoleName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`idRole`, `RoleName`) VALUES
(1, 'Administrator'),
(3, 'KierownikSerwisu'),
(4, 'Klient'),
(2, 'Serwisant');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `serviceticket`
--

DROP TABLE IF EXISTS `serviceticket`;
CREATE TABLE `serviceticket` (
  `idServiceTicket` int(11) NOT NULL,
  `OpenDate` datetime NOT NULL,
  `CloseDate` datetime DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Type` varchar(500) DEFAULT NULL,
  `UserCustomerID` int(11) NOT NULL,
  `UserTechnicianID` int(11) NOT NULL,
  `Devices_idDevices` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `serviceticket`
--

INSERT INTO `serviceticket` (`idServiceTicket`, `OpenDate`, `CloseDate`, `Status`, `Description`, `Type`, `UserCustomerID`, `UserTechnicianID`, `Devices_idDevices`) VALUES
(1, '2023-06-06 10:15:00', '2023-06-10 15:30:00', 'Zamknięte', 'Laptop nie uruchamia się wcale (czarny ekran)', 'Problem z uruchamianiem', 7, 4, 1),
(2, '2023-06-11 14:00:00', '2023-06-15 12:45:00', 'Zamknięte', 'Nie ładuje się bateria powyżej 50%.', 'Problem z zasilaniem', 8, 5, 2),
(3, '2023-06-22 09:30:00', '2023-06-30 17:00:00', 'Zamknięte', 'Czarny ekran podczas uruchamiania systemu.', 'Problem z wyświetlaczem', 9, 6, 3),
(4, '2023-07-26 10:10:00', '2023-08-05 16:20:00', 'Zamknięte', 'Klawiatura nie reaguje na przyciski funkcyjne', 'Uszkodzenie klawiatury', 10, 4, 4),
(5, '2023-08-06 09:00:00', '2023-08-15 14:50:00', 'Zamknięte', 'Bateria szybko się rozładowuje i nie ładuje d', 'Problem z zasilaniem', 11, 5, 5),
(6, '2023-09-11 13:30:00', '2023-09-15 11:10:00', 'Zamknięte', 'Komputer się wyłącza losowo przy obciążeniu.', 'Problem z przegrzewaniem', 10, 6, 8),
(7, '2023-09-14 10:00:00', '2023-09-20 13:45:00', 'Zamknięte', 'Drukarka nie nagrzewa bębna – nie drukuje.', 'Usterka drukarki', 9, 5, 7),
(8, '2023-09-27 08:40:00', '2023-10-02 10:30:00', 'Zamknięte', 'Dysk SSD nie jest wykrywany przez system.', 'Awaria dysku', 13, 6, 9),
(9, '2023-09-29 15:20:00', '2023-10-05 12:00:00', 'Zamknięte', 'Laptop wyświetla artefakty graficzne.', 'Problem z grafiką', 14, 7, 11),
(10, '2023-10-22 09:10:00', '2023-10-25 16:00:00', 'Zamknięte', 'Drukarka pobiera po kilka kartek na raz.', 'Usterka mechanizmu papieru', 12, 5, 13),
(11, '2023-11-03 11:45:00', '2023-11-07 14:15:00', 'Zamknięte', 'Laptop sam się restartuje podczas pracy.', 'Problem z płytą główną', 8, 6, 6),
(12, '2024-02-11 14:00:00', '2024-02-18 09:30:00', 'Zamknięte', 'Czarny ekran, nie uruchamia systemu.', 'Problem z dyskiem/bootowaniem', 10, 4, 3),
(13, '2024-03-05 10:20:00', '2024-03-08 13:50:00', 'Zamknięte', 'Komputer samoczynnie się restartuje.', 'Problem z zasilaniem/awaria zasilacza', 12, 5, 8),
(14, '2023-11-03 11:45:00', '2023-11-07 14:15:00', 'Zamknięte', 'Drukarka zarysowana podczas naprawy (klient r', 'Reklamacja fizyczna', 13, 5, 13),
(15, '2024-03-30 12:10:00', '2024-04-07 15:30:00', 'Zamknięte', 'Laptop wyświetla artefakty po naprawie.', 'Problem z grafiką', 14, 4, 11),
(16, '2024-04-16 09:00:00', '2024-04-23 12:40:00', 'Zamknięte', 'Laptop nie uruchamia systemu – czarny ekran.', 'Problem z dyskiem/bootowaniem', 13, 5, 3),
(17, '2024-05-11 08:30:00', '2024-05-15 11:20:00', 'Zamknięte', 'Laptop sam się wyłącza przy obciążeniu.', 'Problem z przegrzewaniem', 12, 6, 4),
(18, '2024-06-12 14:05:00', '2024-06-18 16:10:00', 'Zamknięte', 'Laptop zawiesza się i nie reaguje.', 'Problem z pamięcią RAM', 11, 4, 2),
(19, '2025-01-10 10:00:00', '2025-01-15 13:00:00', 'Zamknięte', 'Komputer nie bootuje – błąd dysku.', 'Awaria dysku', 10, 6, 9),
(20, '2024-11-03 11:45:00', NULL, 'Anulowane', 'Komputer nie włączał się – klient zrezygnował', 'Rezygnacja klienta', 14, 7, 8),
(21, '2025-03-05 12:00:00', NULL, 'W trakcie', 'Komputer wymaga wymiany płyty głównej (czekam', 'Czekanie na części', 16, 5, 20),
(22, '2025-04-02 09:30:00', NULL, 'W trakcie', 'Laptop nie uruchamia się – czarny ekran.', 'Problem z dyskiem/bootowaniem', 17, 4, 1),
(23, '2025-04-20 15:45:00', NULL, 'W trakcie', 'Drukarka nie pobiera papieru.', 'Usterka mechanizmu papieru', 18, 6, 7),
(24, '2025-05-10 11:20:00', NULL, 'W trakcie', 'Laptop głośno wentyluje i przegrzewa się.', 'Problem z chłodzeniem', 19, 4, 15),
(25, '2025-05-22 14:00:00', NULL, 'W trakcie', 'Laptop wyłącza się losowo podczas pracy.', 'Problem z zasilaniem', 20, 5, 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Surename` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Login` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Position` varchar(45) DEFAULT NULL,
  `Adres` varchar(45) DEFAULT NULL,
  `Phone No.` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `Name`, `Surename`, `Email`, `Login`, `Password`, `Position`, `Adres`, `Phone No.`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@siosk.pl', 'admin_jan', 'Admin!2025', 'Administrator', 'ul. Główna 10, Warszawa', '500-100-001'),
(2, 'Anna', 'Nowak', 'anna.nowak@siosk.pl', 'admin_anna', 'Admin!2025', 'Administrator', 'ul. Słoneczna 5, Kraków', '600-200-002'),
(3, 'Michał', 'Jankowski', 'michal.jankowski@siosk.pl', 'kierownik_michal', 'K@2025Zarz', 'KierownikSerwisu', 'ul. Piękna 7, Wrocław', '700-300-003'),
(4, 'Piotr', 'Wiśniewski', 'piotr.wisniewski@siosk.pl', 'serwisant_piotr', 'Srv!1234', 'Serwisant', 'ul. Brzozowa 12, Poznań', '800-400-004'),
(5, 'Katarzyna', 'Lewandowska', 'katarzyna.lewandowska@siosk.pl', 'serwisant_kasia', 'Srv!1234', 'Serwisant', 'ul. Kwiatowa 3, Gdańsk', '900-500-005'),
(6, 'Marek', 'Zieliński', 'marek.zielinski@siosk.pl', 'serwisant_marek', 'Srv!1234', 'Serwisant', 'ul. Chopina 22, Łódź', '100-600-006'),
(7, 'Tomasz', 'Mazur', 'tomasz.mazur@gmail.com', 'tomasz_mazur', 'Mazur!567', 'Klient', 'ul. Warszawska 20, Gdańsk', '500-500-007'),
(8, 'Maria', 'Grabowska', 'maria.grabowska@gmail.com', 'maria_grab', 'Grab!789', 'Klient', 'ul. Sienkiewicza 15, Lublin', '600-600-008'),
(9, 'ABC', 'Sp. z o.o.', 'kontakt@abc.pl', 'abc_firma', 'ABC!2025', 'Klient', 'ul. Przemysłowa 12, Katowice', '32-111-009'),
(10, 'Karolina', 'Lewandowska', 'karolina.lewandowska@gmail.com', 'karolina_l', 'Lew@2025', 'Klient', 'ul. Leśna 5, Białystok', '85-222-010'),
(11, 'Piotr', 'Kowalczyk', 'piotr.kowalczyk@onet.pl', 'piotr_kow', 'Kow!2025', 'Klient', 'ul. Kościuszki 8, Rzeszów', '17-333-011'),
(12, 'Anna', 'Kaczmarek', 'anna.kaczmarek@onet.pl', 'anna_kacz', 'Kacz!2025', 'Klient', 'ul. Lipowa 22, Opole', '77-444-012'),
(13, 'Robert', 'Zieliński', 'robert.zielinski@gmail.com', 'robert_z', 'Ziel!2025', 'Klient', 'ul. Polna 3, Bydgoszcz', '52-555-013'),
(14, 'Ewa', 'Nowak', 'ewa.nowak@gmail.com', 'ewa_nowak', 'Now!2025', 'Klient', 'ul. Piasta 9, Zielona Góra', '68-666-014'),
(15, 'Paweł', 'Krawczyk', 'pawel.krawczyk@gmail.com', 'pawel_k', 'Kraw!2025', 'Klient', 'ul. Sokoła 11, Toruń', '56-777-015'),
(16, 'Magdalena', 'Szymańska', 'magdalena.szymanska@gmail.com', 'magda_s', 'Szy!2025', 'Klient', 'ul. Kopernika 4, Olsztyn', '89-888-016'),
(17, 'Adam', 'Wieczorek', 'adam.wieczorek@gmail.com', 'adam_w', 'Wie!2025', 'Klient', 'ul. Mickiewicza 7, Kielce', '41-999-017'),
(18, 'Joanna', 'Dąbrowska', 'joanna.dabrowska@gmail.com', 'joanna_d', 'Dab!2025', 'Klient', 'ul. Reymonta 2, Częstochowa', '34-000-018'),
(19, 'Bartłomiej', 'Kowal', 'bartlomiej.kowal@gmail.com', 'bartek_k', 'Kow!2025', 'Klient', 'ul. Traugutta 12, Bielsko-Biała', '33-111-019'),
(20, 'Kamila', 'Pisarek', 'kamila.pisarek@gmail.com', 'kamila_p', 'Pis!2025', 'Klient', 'ul. Sławkowska 5, Kraków', '12-222-020');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `idUserRole` int(11) NOT NULL,
  `User_idUser` int(11) NOT NULL,
  `Role_idRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`idUserRole`, `User_idUser`, `Role_idRole`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 3),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 3, 2),
(8, 7, 4),
(9, 8, 4),
(10, 9, 4),
(11, 10, 4),
(12, 11, 4),
(13, 12, 4),
(14, 13, 4),
(15, 14, 4),
(16, 15, 4),
(17, 16, 4),
(18, 17, 4),
(19, 18, 4),
(20, 19, 4),
(21, 20, 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`idComplaint`),
  ADD KEY `idx_Complaint_ServiceTicket` (`ServiceTicket_idServiceTicket`);

--
-- Indeksy dla tabeli `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`idDevices`);

--
-- Indeksy dla tabeli `devicesatservice`
--
ALTER TABLE `devicesatservice`
  ADD PRIMARY KEY (`idDevicesAtService`),
  ADD KEY `fk_DevicesAtService_Devices1_idx` (`Devices_idDevices`);

--
-- Indeksy dla tabeli `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idPayment`),
  ADD KEY `idx_Payment_ServiceTicket` (`ServiceTicket_idServiceTicket`);

--
-- Indeksy dla tabeli `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`idRole`),
  ADD UNIQUE KEY `RoleName_UNIQUE` (`RoleName`);

--
-- Indeksy dla tabeli `serviceticket`
--
ALTER TABLE `serviceticket`
  ADD PRIMARY KEY (`idServiceTicket`),
  ADD KEY `idx_ServiceTicket_Customer` (`UserCustomerID`),
  ADD KEY `idx_ServiceTicket_Technician` (`UserTechnicianID`),
  ADD KEY `idx_ServiceTicket_Devices` (`Devices_idDevices`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indeksy dla tabeli `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`idUserRole`),
  ADD KEY `fk_UserRole_User_idx` (`User_idUser`),
  ADD KEY `fk_UserRole_Role1_idx` (`Role_idRole`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `idComplaint` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `idPayment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `serviceticket`
--
ALTER TABLE `serviceticket`
  MODIFY `idServiceTicket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `fk_Complaint_ServiceTicket` FOREIGN KEY (`ServiceTicket_idServiceTicket`) REFERENCES `serviceticket` (`idServiceTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `devicesatservice`
--
ALTER TABLE `devicesatservice`
  ADD CONSTRAINT `fk_DevicesAtService_Devices1` FOREIGN KEY (`Devices_idDevices`) REFERENCES `devices` (`idDevices`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_Payment_ServiceTicket` FOREIGN KEY (`ServiceTicket_idServiceTicket`) REFERENCES `serviceticket` (`idServiceTicket`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `serviceticket`
--
ALTER TABLE `serviceticket`
  ADD CONSTRAINT `fk_ServiceTicket_Customer` FOREIGN KEY (`UserCustomerID`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ServiceTicket_Devices` FOREIGN KEY (`Devices_idDevices`) REFERENCES `devices` (`idDevices`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ServiceTicket_Technician` FOREIGN KEY (`UserTechnicianID`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `fk_UserRole_Role1` FOREIGN KEY (`Role_idRole`) REFERENCES `role` (`idRole`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_UserRole_User` FOREIGN KEY (`User_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
