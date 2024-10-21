INSERT INTO stations(station_name,city,station_type)
VALUES
('Iju Station','Ifako Ijaiye','Commuter'),
('Lateef Jakande','Ifako Ijaiye','Commuter'),
('Babatunde Raji Fashola Station','Agege','Commuter/Intercity'),
('Ikeja Station','Ikeja','Commuter'),
('Onipanu Station','Onipanu','Commuter'),
('Yaba Rail Station','Yaba','Commuter'),
('Alagomeji Train Station','Yaba','Commuter/Intercity'),
('Mobolaji Station','Yaba','Commuter'),
('Brigadier General Mobolaji Johnson Train Station','Yaba','Commuter'),
('Ebute-Metta Junction Railway Station','Ebute-Metta','Commuter'),
('Lagos Railway Station','Lagos Mainland','Commuter/Intercity'),
('Iganmu Blueline Train Station','Iganmu','Commuter'),
('Suru Alaba Railway station','Amuwo Odofin','Commuter'),
('Apapa Train Station','Apapa','Commuter/Freight'),
('Blue Line Marina Train Station','Lagos Island','Commuter');



INSERT INTO trains(train_number,train_type,capacity,manufacturer,service_status)
VALUES
('4444','express','1200','CRRC Corporation Limited (China)','active'),
('2222','local','400','Stadler Rail (Switzerland)','active'),
('1144','express','1500','CRRC Corporation Limited (China)','active'),
('2122','local','400','Stadler Rail (Switzerland)','active'),
('2244','express','1500','CRRC Corporation Limited (China)','active'),
('2522','local','350','Siemens (Germany)','active'),
('3144','express','2000','CRRC Corporation Limited (China)','under maintenance'),
('1900','cargo','5000','Bombardier (Canada)','active'),
('2300','cargo','3300','Bombardier (Canada)','active'),
('3900','cargo','5000','Bombardier (Canada)','under maintenance'),
('4300','cargo','3900','Bombardier (Canada)','active');


INSERT INTO routes(route_name,origin_station_id,destination_station_id,active_status)
VALUES
('Blue Line',15,10,'active'),
('Blue Line',15,12,'active'),
('Blue Line',15,11,'active'),
('Blue Line',15,13,'active'),
('Blue Line',15,14,'active'),
('Red Line',2,1,'active'),
('Red Line',2,3,'active'),
('Red Line',2,4,'active'),
('Red Line',2,14,'active'),
('Red Line',4,9,'active'),
('Blue Line',15,6,'active'),
('Blue Line',15,5,'active'),
('Red Line',4,7,'active'),
('Blue Line',15,8,'active'); 


INSERT INTO trips(train_number,route_id,departure_time,arrival_time,number_of_passengers,status)
VALUES
('2222',4,'06:00:00','09:00:00',200,'Completed'),
('4444',5,'06:00:00','09:30:00',433,'Completed'),
('1144',9,'06:00:00','09:20:00',980,'Completed'),
('3144',2,'06:00:00','09:20:00',1980,'Completed'),
('2244',14,'06:00:00','09:00:00',880,'Completed'),
('1144',1,'07:00:00','10:20:00',1220,'Completed'),
('2522',9,'06:00:00','09:30:00',300,'Completed'),
('2122',10,'06:00:00','10:20:00',400,'Completed'),
('2522',9,'10:00:00','13:20:00',300,'Completed'),
('1144',9,'09:00:00','11:20:00',980,'Completed'),
('2222',4,'09:00:00','11:20:00',300,'Completed'),
('4444',5,'10:00:00','12:20:00',500,'Completed'),
('3144',2,'10:00:00','11:20:00',2000,'Completed'),
('2244',14,'10:00:00','12:20:00',1420,'Delayed'),
('2522',9,'10:00:00','12:20:00',300,'Completed'),
('2122',10,'10:40:00','12:20:00',321,'Completed'),
('2222',4,'12:00:00','13:20:00',124,'Completed'),
('4444',5,'13:00:00','14:20:00',400,'Completed'),
('1144',9,'12:30:00','13:40:00',1120,'Completed'),
('2522',9,'13:30:00','14:20:00',233,'Completed'),
('1144',9,'10:30:00','12:20:00',920,'Completed'),
('3144',2,'11:30:00','12:50:00',1700,'Completed'),
('2244',14,'12:30:00','14:20:00',1080,'Completed'),
('2122',10,'12:30:00','14:20:00',300,'Completed'),
('2522',9,'14:00:00','15:20:00',200,'Completed');


INSERT INTO train_schedules(train_number,route_id,departure_time,arrival_time,day_of_operation)
VALUES
('4444',5,'06:00:00','09:30:00','Weekday'),
('4444',5,'10:00:00','12:20:00','Weekday'),
('4444',1,'12:20:00','14:30:00','Weekday'),
('4444',5,'14:45:00','15:50:00','Weekday'),
('4444',1,'16:00:00','17:20:00','Weekday'),
('4444',1,'17:30:00','18:45:00','Weekday'),
('4444',5,'19:00:00','20:20:00','Weekday'),
('4444',5,'20:30:00','21:20:00','Weekday'),
('4444',3,'21:30:00','22:40:00','Weekday'),

('4444',5,'06:00:00','09:30:00','Weekend'),
('4444',5,'10:00:00','12:20:00','Weekend'),
('4444',1,'12:20:00','14:30:00','Weekend'),
('4444',5,'14:45:00','15:50:00','Weekend'),
('4444',1,'16:00:00','17:20:00','Weekend'),
('4444',5,'17:30:00','18:45:00','Weekend'),
('4444',5,'19:00:00','20:20:00','Weekend'),
('4444',3,'20:30:00','21:20:00','Weekend'),


('2222',4,'06:00:00','09:30:00','Weekday'),
('2222',4,'10:00:00','12:20:00','Weekday'),
('2222',4,'12:20:00','14:30:00','Weekday'),
('2222',11,'14:45:00','15:50:00','Weekday'),
('2222',4,'16:00:00','17:20:00','Weekday'),
('2222',4,'17:30:00','18:45:00','Weekday'),
('2222',11,'19:00:00','20:20:00','Weekday'),
('2222',4,'20:30:00','21:20:00','Weekday'),
('2222',12,'21:30:00','22:40:00','Weekday'),

('2222',4,'06:00:00','09:30:00','Weekend'),
('2222',4,'10:00:00','12:20:00','Weekend'),
('2222',4,'12:20:00','14:30:00','Weekend'),
('2222',11,'14:45:00','15:50:00','Weekend'),
('2222',4,'16:00:00','17:20:00','Weekend'),
('2222',4,'17:30:00','18:45:00','Weekend'),
('2222',11,'19:00:00','20:20:00','Weekend'),
('2222',12,'20:30:00','21:20:00','Weekend'),

('1144',9,'06:00:00','09:30:00','Weekday'),
('1144',9,'10:00:00','12:20:00','Weekday'),
('1144',9,'12:20:00','14:30:00','Weekday'),
('1144',7,'14:45:00','15:50:00','Weekday'),
('1144',9,'16:00:00','17:20:00','Weekday'),
('1144',9,'17:30:00','18:45:00','Weekday'),
('1144',7,'19:00:00','20:20:00','Weekday'),
('1144',9,'20:30:00','21:20:00','Weekday'),
('1144',9,'21:30:00','22:40:00','Weekday'),

('1144',9,'06:00:00','09:30:00','Weekend'),
('1144',9,'10:00:00','12:20:00','Weekend'),
('1144',9,'12:20:00','14:30:00','Weekend'),
('1144',7,'14:45:00','15:50:00','Weekend'),
('1144',9,'16:00:00','17:20:00','Weekend'),
('1144',9,'17:30:00','18:45:00','Weekend'),
('1144',7,'19:00:00','20:20:00','Weekend'),
('1144',9,'20:30:00','21:20:00','Weekend'),

('2122',10,'06:00:00','09:30:00','Weekday'),
('2122',10,'10:00:00','12:20:00','Weekday'),
('2122',13,'12:20:00','14:30:00','Weekday'),
('2122',10,'14:45:00','15:50:00','Weekday'),
('2122',10,'16:00:00','17:20:00','Weekday'),
('2122',13,'17:30:00','18:45:00','Weekday'),
('2122',10,'19:00:00','20:20:00','Weekday'),
('2122',13,'20:30:00','21:20:00','Weekday'),
('2122',10,'21:30:00','22:40:00','Weekday'),

('2122',10,'06:00:00','09:30:00','Weekend'),
('2122',10,'10:00:00','12:20:00','Weekend'),
('2122',13,'12:20:00','14:30:00','Weekend'),
('2122',10,'14:45:00','15:50:00','Weekend'),
('2122',10,'16:00:00','17:20:00','Weekend'),
('2122',13,'17:30:00','18:45:00','Weekend'),
('2122',10,'19:00:00','20:20:00','Weekend'),
('2122',10,'20:30:00','21:20:00','Weekend'),

('2244',6,'06:00:00','09:30:00','Weekday'),
('2244',6,'10:00:00','12:20:00','Weekday'),
('2244',6,'12:20:00','14:30:00','Weekday'),
('2244',6,'14:45:00','15:50:00','Weekday'),
('2244',8,'16:00:00','17:20:00','Weekday'),
('2244',8,'17:30:00','18:45:00','Weekday'),
('2244',6,'19:00:00','20:20:00','Weekday'),
('2244',8,'20:30:00','21:20:00','Weekday'),
('2244',6,'21:30:00','22:40:00','Weekday'),


('2244',6,'06:00:00','09:30:00','Weekend'),
('2244',6,'10:00:00','12:20:00','Weekend'),
('2244',8,'12:20:00','14:30:00','Weekend'),
('2244',6,'14:45:00','15:50:00','Weekend'),
('2244',6,'16:00:00','17:20:00','Weekend'),
('2244',8,'17:30:00','18:45:00','Weekend'),
('2244',8,'19:00:00','20:20:00','Weekend'),
('2244',6,'20:30:00','21:20:00','Weekend'),

('2522',9,'06:00:00','09:30:00','Weekday'),
('2522',12,'10:00:00','12:20:00','Weekday'),
('2522',9,'12:20:00','14:30:00','Weekday'),
('2522',12,'14:45:00','15:50:00','Weekday'),
('2522',9,'16:00:00','17:20:00','Weekday'),
('2522',12,'17:30:00','18:45:00','Weekday'),
('2522',9,'19:00:00','20:20:00','Weekday'),
('2522',12,'20:30:00','21:20:00','Weekday'),
('2522',9,'21:30:00','22:40:00','Weekday'),

('2522',9,'06:00:00','09:30:00','Weekend'),
('2522',12,'10:00:00','12:20:00','Weekend'),
('2522',9,'12:20:00','14:30:00','Weekend'),
('2522',12,'14:45:00','15:50:00','Weekend'),
('2522',9,'16:00:00','17:20:00','Weekend'),
('2522',12,'17:30:00','18:45:00','Weekend'),
('2522',9,'19:00:00','20:20:00','Weekend'),
('2522',12,'20:30:00','21:20:00','Weekend'),

('3144',2,'06:00:00','09:30:00','Weekday'),
('3144',2,'10:00:00','12:20:00','Weekday'),
('3144',2,'12:20:00','14:30:00','Weekday'),
('3144',2,'14:45:00','15:50:00','Weekday'),
('3144',14,'16:00:00','17:20:00','Weekday'),
('3144',2,'17:30:00','18:45:00','Weekday'),
('3144',2,'19:00:00','20:20:00','Weekday'),
('3144',14,'20:30:00','21:20:00','Weekday'),
('3144',2,'21:30:00','22:40:00','Weekday'),

('3144',2,'06:00:00','09:30:00','Weekend'),
('3144',2,'10:00:00','12:20:00','Weekend'),
('3144',2,'12:20:00','14:30:00','Weekend'),
('3144',2,'14:45:00','15:50:00','Weekend'),
('3144',14,'16:00:00','17:20:00','Weekend'),
('3144',2,'17:30:00','18:45:00','Weekend'),
('3144',2,'19:00:00','20:20:00','Weekend'),
('3144',14,'20:30:00','21:20:00','Weekend'),



('2300',14,'06:00:00','09:30:00','Weekend'),
('2300',14,'10:00:00','12:20:00','Weekend'),
('2300',14,'12:20:00','14:30:00','Weekend'),
('2300',14,'14:45:00','15:50:00','Weekend'),
('2300',14,'16:00:00','17:20:00','Weekend'),
('2300',14,'17:30:00','18:45:00','Weekend'),
('2300',14,'19:00:00','20:20:00','Weekend'),
('2300',14,'20:30:00','21:20:00','Weekend'),


('1900',14,'06:00:00','09:30:00','Weekend'),
('1900',14,'10:00:00','12:20:00','Weekend'),
('1900',14,'12:20:00','14:30:00','Weekend'),
('1900',14,'14:45:00','15:50:00','Weekend'),
('1900',14,'16:00:00','17:20:00','Weekend'),
('1900',14,'17:30:00','18:45:00','Weekend'),
('1900',14,'19:00:00','20:20:00','Weekend'),
('1900',14,'20:30:00','21:20:00','Weekend'),


('4300',14,'06:00:00','09:30:00','Weekend'),
('4300',14,'10:00:00','12:20:00','Weekend'),
('4300',14,'12:20:00','14:30:00','Weekend'),
('4300',14,'14:45:00','15:50:00','Weekend'),
('4300',14,'16:00:00','17:20:00','Weekend'),
('4300',14,'17:30:00','18:45:00','Weekend'),
('4300',14,'19:00:00','20:20:00','Weekend'),
('4300',14,'20:30:00','21:20:00','Weekend');

INSERT INTO cards(card_number,card_type,issue_date,expiry_date,balance,card_status)
VALUES
('12111','commute','2024-08-01','2026-12-04',230,'active'),
('13222','commute','2021-09-09','2024-12-21',210,'active'),
('14432','commute','2021-09-09','2024-12-21',213,'active'),
('43212','commute','2022-09-09','2024-12-21',20,'active'),
('23122','commute','2021-09-09','2025-12-21',450,'active'),
('32341','commute','2024-09-09','2026-12-21',210,'active'),
('54211','student_pass','2023-09-09','2024-12-21',110,'active'),
('43111','commute','2024-09-09','2026-12-21',73,'active'),
('12112','commute','2024-09-09','2026-12-21',310,'active'),
('54213','commute','2023-09-09','2025-10-21',20,'active'),
('65122','student_pass','2023-10-09','2025-10-21',123,'active'),
('91211','commute','2021-09-09','2024-12-21',210,'active'),
('42111','commute','2024-09-09','2026-12-21',210,'active'),
('91235','student_pass','2023-09-09','2024-07-21',0,'expired'),
('90112','commute','2023-09-19','2026-12-21',143,'active'),
('21111','commute','2024-09-09','2027-12-21',490,'active'),
('65111','commute','2024-11-09','2027-12-20',143,'active'),
('76111','commute','2024-10-09','2026-12-12',422,'active'),
('37888','student_pass','2023-12-09','2025-09-21',90,'active'),
('56611','commute','2023-10-09','2029-12-21',1222,'active'),
('41123','commute','2024-09-09','2027-12-21',342,'active'),
('90150','student_pass','2023-12-09','2025-12-21',1234,'active'),
('54214','commute','2024-10-09','2026-12-20',12,'active'),
('56299','student_pass','2024-12-21','2026-12-21',321,'active'),
('36733','commute','2022-09-09','2023-12-21',0,'expired'),
('98987','commute','2022-09-09','2024-10-21',234,'active'),
('41233','commute','2022-09-09','2024-10-21',20,'active'),
('65418','student_pass','2023-10-09','2025-12-21',329,'active'),
('45278','commute','2023-09-09','2025-12-21',332,'active'),
('52555','commute','2022-09-09','2024-12-21',10,'active');


INSERT INTO employees(first_name,last_name,job_role,assigned_station,email,phone_number,hire_date)
VALUES
('Ade','Tijani','Technician',2,'adetijj@gmail.com','090112011','2023-09-12'),
('Bola','Sosyy','Customer Care',4,'bolasosyy@his.com','090221111','2022-12-10'),
('Adebayo', 'Ogunleye', 'Station Manager', 7, 'adebayo.ogunleye@train.com', '09032012345', '2023-05-01'),
('Nkechi', 'Eze', 'Ticketing Officer', 5, 'nkechi.eze@train.com', '09054123456', '2022-11-10'),
('Femi', 'Ajayi', 'Engineer', 13, 'femi.ajayi@train.com', '09067234567', '2023-02-14'),
('Chinedu', 'Nwosu', 'Technician', 3, 'chinedu.nwosu@train.com', '09071098765', '2021-08-21'),
('Tolu', 'Bamidele', 'Customer Care', 6, 'tolu.bamidele@train.com', '09088121212', '2022-09-10'),
('Ada', 'Onwuka', 'Security Officer', 2, 'ada.onwuka@train.com', '09091234567', '2023-01-17'),
('Segun', 'Lawal', 'Technician', 12, 'segun.lawal@train.com', '09012345678', '2022-07-19'),
('Ola', 'Adebisi', 'Station Assistant', 8, 'ola.adebisi@train.com', '09043218765', '2023-03-12'),
('David', 'Uche', 'Engineer', 15, 'david.uche@train.com', '09065432123', '2021-12-05'),
('Ruth', 'Bello', 'Customer Care', 10, 'ruth.bello@train.com', '09071134567', '2023-07-23'),
('Emeka', 'Chukwu', 'Technician', 4, 'emeka.chukwu@train.com', '09082112345', '2021-04-19'),
('Kemi', 'Olaniyan', 'Ticketing Officer', 9, 'kemi.olaniyan@train.com', '09052198765', '2023-02-25'),
('Chigozie', 'Adenuga', 'Security Officer', 11, 'chigozie.adenuga@train.com', '09091123456', '2022-06-03'),
('Funmi', 'Fashola', 'Technician', 14, 'funmi.fashola@train.com', '09064356789', '2023-04-13'),
('Gbenga', 'Adeyemi', 'Engineer', 1, 'gbenga.adeyemi@train.com', '09071234567', '2021-09-21'),
('Aisha', 'Muhammed', 'Station Assistant', 5, 'aisha.muhammed@train.com', '09074198765', '2022-03-15'),
('Oyin', 'Adeolu', 'Customer Care', 7, 'oyin.adeolu@train.com', '09051212345', '2022-01-27'),
('Chinyere', 'Okoro', 'Security Officer', 3, 'chinyere.okoro@train.com', '09063123456', '2021-11-11'),
('Segun', 'Taiwo', 'Engineer', 12, 'segun.taiwo@train.com', '09073198765', '2023-07-29'),
('Bimpe', 'Ajibola', 'Technician', 6, 'bimpe.ajibola@train.com', '09081112345', '2022-12-18'),
('Musa', 'Bashir', 'Customer Care', 4, 'musa.bashir@train.com', '09092123456', '2023-08-06'),
('Tunde', 'Agbaje', 'Engineer', 8, 'tunde.agbaje@train.com', '09091234567', '2023-05-08'),
('Ngozi', 'Eze', 'Technician', 14, 'ngozi.eze@train.com', '09052123456', '2023-03-14'),
('Amaka', 'Okafor', 'Station Assistant', 5, 'amaka.okafor@train.com', '09073212345', '2022-04-27'),
('Dare', 'Adekunle', 'Ticketing Officer', 9, 'dare.adekunle@train.com', '09054198765', '2023-01-06'),
('Bola', 'Olumide', 'Technician', 11, 'bola.olumide@train.com', '09061123456', '2022-08-16'),
('Fisayo', 'Akinola', 'Customer Care', 13, 'fisayo.akinola@train.com', '09073298765', '2021-10-30'),
('Yakubu', 'Mohammed', 'Engineer', 2, 'yakubu.mohammed@train.com', '09091234567', '2021-05-17'),
('Victoria', 'Onyeka', 'Security Officer', 7, 'victoria.onyeka@train.com', '09052123456', '2022-09-20'),
('Isiaka', 'Salami', 'Technician', 15, 'isiaka.salami@train.com', '09064198765', '2023-06-21'),
('Racheal', 'Ogun', 'Ticketing Officer', 10, 'racheal.ogun@train.com', '09073123456', '2022-02-11'),
('Gbenga', 'Fatai', 'Customer Care', 3, 'gbenga.fatai@train.com', '09061198765', '2021-03-23'),
('Idris', 'Ojo', 'Engineer', 6, 'idris.ojo@train.com', '09072212345', '2022-12-29'),
('Shola', 'Adedayo', 'Technician', 4, 'shola.adedayo@train.com', '09083212345', '2023-07-02'),
('Oluchi', 'Nnamdi', 'Station Assistant', 12, 'oluchi.nnamdi@train.com', '09054123456', '2022-05-08'),
('Folake', 'Olawale', 'Customer Care', 9, 'folake.olawale@train.com', '09062198765', '2023-09-15'),
('Chinedu', 'Okeke', 'Engineer', 7, 'chinedu.okeke@train.com', '09073112345', '2023-04-24'),
('Abdullahi', 'Usman', 'Security Officer', 13, 'abdullahi.usman@train.com', '09082123456', '2022-07-10'),
('Joy', 'Ayo', 'Technician', 11, 'joy.ayo@train.com', '09062198765', '2023-06-19'),
('Opeyemi', 'Adediran', 'Engineer', 15, 'opeyemi.adediran@train.com', '09074112345', '2021-01-22'),
('Khadijat', 'Yusuf', 'Customer Care', 1, 'khadijat.yusuf@train.com', '09083298765', '2021-07-06');


INSERT INTO fares(route_id,ticket_class,fare_amount)
VALUES
(1,'first class',4000),
(1,'economy',1000),
(2,'first class',3500),
(2,'economy',700),
(3,'first class',3600),
(3,'economy',800),
(4,'first class',3500),
(4,'economy',500),
(5,'first class',2000),
(5,'economy',400),
(6,'first class',2500),
(6,'economy',600),
(7,'first class',3200),
(7,'economy',690),
(8,'first class',2600),
(8,'economy',450),
(9,'first class',2390),
(9,'economy',300),
(10,'first class',3500),
(10,'economy',500),
(11,'first class',2900),
(11,'economy',900),
(12,'first class',3200),
(12,'economy',900),
(13,'first class',1500),
(13,'economy',750),
(14,'first class',2400),
(14,'economy',600);

INSERT INTO ticket_bookings(card_number, schedule_id, seat_number, ticket_class, fare_amount, booking_status)
VALUES
('12111', 3, 22, 'economy', 300, 'confirmed'),
('13222', 13, 234, 'first class', 2300, 'confirmed'),
('14432', 25, 312, 'first class', 3200, 'confirmed'),
('43212', 10, 342, 'first class', 4200, 'confirmed'),
('23122', 34, 290, 'first class', 2900, 'confirmed'),
('32341', 12, 31, 'economy', 500, 'confirmed'),
('54211', 32, 2, 'economy', 320, 'confirmed'),
('43111', 21, 233, 'first class', 2900, 'confirmed'),
('12112', 32, 433, 'first class', 3200, 'confirmed'),
('54213', 43, 21, 'economy', 600, 'confirmed'),
('65122', 23, 54, 'economy', 450, 'confirmed'),
('91211', 52, 43, 'economy', 900, 'confirmed'),
('90112', 65, 23, 'economy', 450, 'confirmed'),
('21111', 43, 22, 'economy', 350, 'confirmed'),
('65111', 26, 43, 'economy', 500, 'confirmed'),
('76111', 43, 290, 'first class', 4200, 'confirmed'),
('37888', 12, 32, 'economy', 500, 'confirmed'),
('56611', 55, 21, 'economy', 450, 'cancelled'),
('41123', 55, 34, 'economy', 450, 'confirmed'),
('90150', 11, 110, 'first class', 4200, 'confirmed'),
('54214', 65, 190, 'first class', 3400, 'confirmed'),
('56299', 56, 230, 'first class', 4200, 'confirmed'),
('36733', 54, 133, 'first class', 3200, 'confirmed'),
('98987', 34, 250, 'first class', 4300, 'cancelled'),
('41233', 34, 250, 'first class', 4300, 'confirmed'),
('65418', 44, 22, 'economy', 500, 'confirmed'),
('45278', 54, 24, 'economy', 900, 'confirmed'),
('52555', 65, 244, 'first class', 4200, 'confirmed'),
('45278', 54, 222, 'first class', 4300, 'confirmed'),
('52555', 43, 122, 'first class', 3400, 'confirmed'),
('76111', 54, 234, 'first class', 4300, 'confirmed'),
('56299', 24, 200, 'first class', 2300, 'confirmed');


INSERT INTO payments(ticket_id,payment_method,payment_date,payment_status)
VALUES(1,'mobile payment','2024-10-31','successful'),
(2,'debit card','2024-10-28','successful'),
(3,'mobile payment','2024-10-25','successful'),
(4,'cash','2024-10-30','successful'),
(5,'debit card','2024-10-20','successful'),
(6,'mobile payment','2024-10-18','successful'),
(7,'cash','2024-10-29','successful'),
(8,'debit card','2024-10-26','successful'),
(9,'mobile payment','2024-10-22','successful'),
(10,'cash','2024-10-21','successful'),
(11,'debit card','2024-10-19','successful'),
(12,'mobile payment','2024-10-15','successful'),
(13,'cash','2024-10-23','successful'),
(14,'debit card','2024-10-16','successful'),
(15,'mobile payment','2024-10-31','successful'),
(16,'cash','2024-10-24','successful'),
(17,'debit card','2024-10-27','successful'),
(18,'mobile payment','2024-10-19','failed'),
(19,'cash','2024-10-28','successful'),
(20,'debit card','2024-10-22','successful'),
(21,'mobile payment','2024-10-20','successful'),
(22,'cash','2024-10-17','successful'),
(23,'debit card','2024-10-25','successful'),
(24,'mobile payment','2024-10-30','failed'),
(25,'cash','2024-10-21','successful'),
(26,'debit card','2024-10-23','successful'),
(27,'mobile payment','2024-10-29','successful'),
(28,'cash','2024-10-18','successful'),
(29,'debit card','2024-10-17','successful'),
(30,'mobile payment','2024-10-27','successful'),
(31,'mobile payment','2024-10-15','successful'),
(32,'cash','2024-10-26','successful');

INSERT INTO cargo_manifest(train_number,sender_name,receiver_name,origin_station_id,destination_station_id,cargo_description,weight,delivery_status)
VALUES
('1900','Aza','Monday',14,12,'boxes',12,'delivered'),
('1900','Ali','Sunday',14,12,'Fish boxes',12,'delivered'),
('2300','Bola','Ahmed',14,5,'Electronics',50,'in-transit'),
('4300','Zainab','Chidi',14,9,'Furniture',120,'delivered'),
('1900','Emeka','Grace',14,7,'Books',30,'in-transit'),
('2300','Hassan','Yusuf',14,10,'Clothes',25,'delivered'),
('4300','Fatima','Bisi',14,3,'Vegetables',20,'in-transit'),
('1900','Kemi','Ibrahim',14,2,'Fruits',15,'delivered'),
('2300','John','Musa',14,6,'Toys',40,'in-transit'),
('4300','Yusuf','Amina',14,11,'Building materials',150,'delivered'),
('1900','Tunde','Ngozi',14,8,'Medicines',10,'in-transit'),
('2300','Amaka','Tayo',14,1,'Shoes',35,'delivered'),
('4300','Michael','Abdul',14,13,'Bags of rice',200,'in-transit'),
('1900','Rita','Sani',14,15,'Boxes of tea',45,'delivered'),
('2300','Efe','Gbenga',14,2,'Cement',180,'in-transit'),
('4300','Nkechi','Ayo',14,3,'Cereals',70,'delivered'),
('1900','Lekan','Uche',14,5,'Soda bottles',25,'in-transit'),
('2300','Maryam','Bashir',14,6,'Bread loaves',30,'delivered'),
('4300','Joy','Shola',14,7,'Tires',90,'in-transit'),
('1900','Habib','Kalu',14,9,'Plastic chairs',110,'delivered'),
('2300','Peace','Obi',14,10,'Paint buckets',55,'in-transit'),
('4300','Adewale','Nura',14,12,'Metal pipes',140,'delivered'),
('1900','Ijeoma','Seun',14,11,'Cartons of milk',50,'in-transit'),
('2300','Chinyere','Wale',14,8,'Steel rods',170,'delivered'),
('4300','Hakeem','Dami',14,13,'Gas cylinders',60,'in-transit'),
('1900','Chioma','Sule',14,15,'Shoes',32,'delivered'),
('2300','Paul','Umar',14,2,'Kitchenware',45,'in-transit'),
('4300','Segun','Ladi',14,3,'Household appliances',80,'delivered'),
('1900','Samuel','Abiola',14,5,'Pesticides',22,'in-transit'),
('2300','Deborah','Mohammed',14,6,'Office furniture',125,'delivered'),
('4300','Salma','Jide',14,7,'Glassware',70,'in-transit'),
('1900','Ibrahim','Kemi',14,9,'Medical equipment',140,'delivered'),
('2300','Rebecca','Tope',14,10,'Rice sacks',250,'in-transit'),
('4300','Opeyemi','Femi',14,12,'Cooking oil',100,'delivered'),
('1900','Favour','Ade',14,11,'Spices',28,'in-transit'),
('2300','Sodiq','Peter',14,8,'Vegetable oil',75,'delivered'),
('4300','Ebuka','Joy',14,13,'Batteries',33,'in-transit'),
('1900','Kehinde','Tosin',14,15,'Plastic containers',85,'delivered'),
('2300','Janet','Kunle',14,2,'Televisions',40,'in-transit'),
('4300','Francis','Chioma',14,3,'Frozen foods',60,'delivered'),
('1900','Solomon','Ola',14,5,'Soft drinks',20,'in-transit'),
('2300','Ngozi','Mimi',14,6,'Ceramics',55,'delivered'),
('4300','Victor','Ruth',14,7,'Candles',18,'in-transit'),
('1900','Benedict','Dan',14,9,'Cardboard boxes',60,'delivered'),
('2300','Kunle','Wole',14,10,'Fabric rolls',150,'in-transit'),
('4300','Sule','Adeola',14,12,'Cosmetics',65,'delivered'),
('1900','Chukwuma','Niyi',14,11,'Machinery parts',90,'in-transit');


INSERT INTO maintenance_records(train_number,station_id,maintenance_type,maintenance_date,description,cost,technician_id)
VALUES
('3144', 4, 'repair', '2024-10-01', 'Full engine replacement and tuning', 5000, 1),
('3900', 4, 'routine check', '2024-10-03', 'Checked and replaced worn brake pads', 1500, 6),
('3144', 4, 'repair', '2024-10-05', 'Changed engine oil and filter', 300, 9),
('3900', 4, 'repair', '2024-10-07', 'Fixed cooling system in passenger cabin', 800, 13),
('3144', 4, 'routine check', '2024-10-09', 'Aligned all train wheels for smooth travel', 1200, 16),
('3900', 4, 'routine check', '2024-10-11', 'Upgraded the signal systems for better communication', 4500, 22),
('3144', 4, 'repair', '2024-10-13', 'Cleared debris and performed routine track maintenance', 1000, 25),
('3900', 4, 'repair', '2024-10-15', 'Checked and repaired electrical wiring', 700, 28),
('3144', 4, 'routine check', '2024-10-17', 'Ran diagnostics and fixed minor engine issues', 400, 32);






































