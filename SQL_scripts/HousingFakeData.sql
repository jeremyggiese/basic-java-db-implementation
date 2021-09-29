Use housingDB;
/*
The following until stated are done being formatted with data
*/

INSERT INTO Advisor VALUES (001, "Cong", 		"Pu", 			"Assistant Professor", 	"CITE", 			3046966204, "puc@marshall.edu", 			001);
INSERT INTO Advisor VALUES (003, "Wook-Sung", 	"Yoo", 			"Division Chair", 		"CITE", 			3046965452, "yoow@marshall.edu", 			003);
INSERT INTO Advisor VALUES (303, "Paulus", 		"Wahjudi", 		"Associate Professor", 	"CITE", 			3046965443, "wahjudi@marshall.edu", 		303);
INSERT INTO Advisor VALUES (404, "Haroon", 		"Malik", 		"Assistant Professor",	"CITE", 			3046965655, "malik@marshall.edu", 			303);
INSERT INTO Advisor VALUES (200, "Jamil", 		"Chaudri", 		"Professor", 			"CITE", 			3046962694, "chaudri@marshall.edu", 		200);
INSERT INTO Advisor VALUES (211, "Eric", 		"Migernier", 	"Advisor", 				"Modern Languages", 3046960004, "migernier@marshall.edu", 		484);
INSERT INTO Advisor VALUES (344, "James", 		"Fuller", 		"Adjunct Professor",	"CITE", 			3046960001, "fullerj@marshall.edu", 		200);
INSERT INTO Advisor VALUES (103, "Jonathan",	"Thompson", 	"Advisor",				"CITE", 			3046960002, "thompsonj@marshall.edu", 		342);
INSERT INTO Advisor VALUES (222, "Husnu", 		"Narman", 		"Assistant Professor", 	"CITE", 			3046965829, "narman@marshall.edu", 			132);


INSERT INTO Student VALUES (901632234, 303, "Ivan", 		"Cannon", 		"406 Upton Avenue", 		"West Bethel", 				04286, null, 			"cannon35@live.marshall.edu", 		DATE('2000-12-01'), "O", 	"Sophomore", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901635222, 001, "Micheal", 		"Bryant", 		"4898 Lindale Avenue", 		"Oakland", 					94607, null, 			"bryant77@live.marshall.edu",		DATE('1989-02-14'), "M", 	"Sophomore", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901635353, 001, "John-Paul", 	"Figler", 		"3412 Windy Ridge Road", 	"Churubusco", 				46723, null,			"figler89@live.marshall.edu", 		DATE('1999-03-24'), "M",	"Sophomore", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901983200, 003, "Alymbek", 		"Damir-Uulu", 	"2 Somewhere", 				"Kyrgzystan", 				12345, null,			"damiruulu9@live.marshall.edu", 	DATE('1997-02-16'), "O", 	"Sophomore", 	"KGZ", null, null, "Not", "Computer Science", null);
INSERT INTO Student VALUES (901213023, 003, "Alexander", 	"Canfield", 	"3623 Wolf Pen Road",		"San Francisco", 			94107, null, 			"canfield14@live.marshall.edu", 	DATE('1995-04-06'), "M", 	"Freshman", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901145631, 303, "Nathaniel", 	"Patton",	 	"1 Pattin' em down", 		"Cats I mean", 				13345, null, 			"patton56@live.marshall.edu", 		DATE('1992-08-23'), "M", 	"Freshman", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901759307, 001, "Jeremy", 		"Giese", 		"46 Rowan Road",			"White Sulphur Springs", 	24986, "3049560266", 	"giese@live.marshall.edu", 			DATE('1999-07-16'), "M", 	"Junior", 		"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901759901, 404, "Michael", 		"Liu", 			"1 La Rue", 				"La Ville", 				43578, null, 			"liu33@live.marshall.edu",			DATE('1992-09-01'), "M", 	"Graduate", 	"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901742309, 404, "Mary", 		"Larson", 		"1 What is a Street", 		"Some City", 				12654, null, 			"larson134@live.marshall.edu", 		DATE('1999-07-29'), "F", 	"Graduate", 	"USA", null, null, "Not", "Computer Science", null);
INSERT INTO Student VALUES (901632672, 200, "Robert", 		"Henderson", 	"0 J'ai pas de maison", 	"Sans ville aussi", 		00001, null,			"henderson125@live.marshall.edu", 	DATE('2000-02-29'), "O", 	"Freshman", 	"USA", null, null, "OffCamp", "Computer Science", null);
INSERT INTO Student VALUES (901762303, 200, "Conrad", 		"Jones", 		"901 Theatre Rd.", 			"Sylvania", 				43560, null, 			"jones243@live.marshall.edu", 		DATE('2000-01-01'), "M", 	"Freshman", 	"USA", null, null, "Placed", "Business", null);
INSERT INTO Student VALUES (901762673, 211, "Sue", 			"Camp", 		"316 Rockland Road ", 		"Vincentown", 				08088, null, 			"camp44@live.marshall.edu", 		DATE('1999-12-31'), "F", 	"Freshman", 	"USA", null, null, "Not", "CIT", null);
INSERT INTO Student VALUES (901742209, 211, "Chris", 		"Swenson", 		"324 North Mayfield Ave",	"Pueblo", 					81001, null, 			"swenson6@live.marshall.edu", 		DATE('1998-04-30'), "M", 	"Freshman", 	"USA", null, null, "Placed", "DFIA", null);
INSERT INTO Student VALUES (901145782, 344, "Angela", 		"Wentz", 		"68 Bridgeton St", 			"Mountain View", 			94043, null, 			"wentz12@live.marshall.edu", 		DATE('1998-05-14'), "F", 	"Junior", 		"USA", null, null, "OffCamp", "Computer Science", null);
INSERT INTO Student VALUES (901889242, 103, "Belinda", 		"King", 		"507 West Glen Creek St", 	"Ooltewah", 				37363, null, 			"king246@live.marshall.edu", 		DATE('1998-05-15'), "O", 	"Junior", 		"USA", null, null, "Placed", "Computer Science", null);
INSERT INTO Student VALUES (901889246, 222, "Dolores", 		"Reyna", 		"4 Arlington Street",		"Upper Darby", 				19082, null, 			"reyna1@live.marshall.edu", 		DATE('1991-08-18'), "F", 	"Junior", 		"USA", null, null, "Placed", "Computer Science", null);

INSERT INTO Staff VALUES (65, null, "Cameron", "Smith", null, null, null, "smithcam@marshall.edu", DATE('1987-12-12'), "M", "Manager");
INSERT INTO Staff VALUES (78, null, "John", "Wang", null, null, null, "wangjo@marshall.edu", DATE('1978-04-15'), "M", "Manager");
INSERT INTO Staff VALUES (99, null, "Cathrine", "Smith", null, null, null, "smithcat@marshall.edu", DATE('1973-02-16'), "F", "Manager");
INSERT INTO Staff VALUES (88, null, "Anne", "Wood", null, null, null, "woodan@marshall.edu", DATE('1985-01-04'), "F", "Manager");
INSERT INTO Staff VALUES (76, null, "James", "Verde", null, null, null, "verdej@marshall.edu", DATE('1982-11-01'), "O", "Manager");

INSERT INTO Hall VALUES (1, 65, "Canfield", "2 5th Ave",				"Huntington", 25755, "3046968934"); 
INSERT INTO Hall VALUES (2, 78, "Mease", 	"2 5th Ave", 				"Huntington", 25755, "3046968823"); 
INSERT INTO Hall VALUES (3, 99, "Giese", 	"1 College Ave", 			"Huntington", 25755, "3046962346"); 
INSERT INTO Hall VALUES (4, 88, "Rogers", 	"1 Thundering Herd Drive", 	"Huntington", 25755, "3046967823"); 
INSERT INTO Hall VALUES (5, 76, "Doyle", 	"2 Thundering Herd Drive", 	"Huntington", 25755, "3046961432"); 



UPDATE Staff SET hallNo=1 WHERE staffNo=65;
UPDATE Staff SET hallNo=2 WHERE staffNo=78;
UPDATE Staff SET hallNo=3 WHERE staffNo=99;
UPDATE Staff SET hallNo=4 WHERE staffNo=88;
UPDATE Staff SET hallNo=5 WHERE staffNo=76;

INSERT INTO Staff VALUES (33, 1, 	"Alice", "Ford", null, null, null, "forda@marshall.edu", DATE('1967-12-12'), "O", "maintenance");
INSERT INTO Staff VALUES (56, 2, 	"Mark", "Gray", null, null, null, "graym@marshall.edu", DATE('1945-08-16'), "O", "janitorial");
INSERT INTO Staff VALUES (44, 3, 	"John", "Fier", null, null, null, "fierj@marshall.edu", DATE('1985-06-17'), "M", "janitorial");
INSERT INTO Staff VALUES (24, 4, 	"Allen", "Espoir", null, null, null, "espoira@marshall.edu", DATE('1992-04-18'), "M", "maintenance");
INSERT INTO Staff VALUES (25, 5, 	"Amanda", "Thatcher", null, null, null, "thatchera@marshall.edu", DATE('1994-03-19'), "F", "maintenance");
INSERT INTO Staff VALUES (57, null, "Kate", "Marks", null, null, null, "marsksk@marshall.edu", DATE('1963-02-20'), "F", "inspector");
INSERT INTO Staff VALUES (89, null, "Phillip", "March", null, null, null, "marchp@marshall.edu", DATE('1973-09-12'), "O", "inspector");


INSERT INTO Flat VALUES (1, "7 5th Avenue", "Huntington", 25755, 3);
INSERT INTO Flat VALUES (2, "6 3rd Avenue", "Huntington", 25755, 2); 
INSERT INTO Flat VALUES (3, "1 15th Stree", "Huntington", 25755, 5); 
INSERT INTO Flat VALUES (4, "2 Elm Street", "Huntington", 25755, 4); 
/*
six rooms are required for flats
*/
INSERT INTO Room VALUES (8, 1, null, 2, 700);
INSERT INTO Room VALUES (9, 1, null, 3, 700);
INSERT INTO Room VALUES (16, 2, null, 1, 300);
INSERT INTO Room VALUES (17, 2, null, 2, 300);
INSERT INTO Room VALUES (18, 2, null, 3, 300);
INSERT INTO Room VALUES (31, 4, null, 1, 500);

/*
Using ten rooms per hall
*/
INSERT INTO Room VALUES (121, null, 1, 1, 600);
INSERT INTO Room VALUES (122, null, 1, 2, 600);
INSERT INTO Room VALUES (123, null, 1, 3, 600);
INSERT INTO Room VALUES (124, null, 1, 4, 600);
INSERT INTO Room VALUES (125, null, 1, 5, 600);
INSERT INTO Room VALUES (126, null, 1, 6, 600);
INSERT INTO Room VALUES (127, null, 1, 7, 600);
INSERT INTO Room VALUES (128, null, 1, 8, 600);
INSERT INTO Room VALUES (129, null, 1, 9, 600);
INSERT INTO Room VALUES (130, null, 1, 10, 600);

INSERT INTO Room VALUES (80, null, 2, 1, 450);
INSERT INTO Room VALUES (81, null, 2, 2, 450);
INSERT INTO Room VALUES (82, null, 2, 3, 450);
INSERT INTO Room VALUES (83, null, 2, 4, 450);
INSERT INTO Room VALUES (84, null, 2, 5, 450);
INSERT INTO Room VALUES (85, null, 2, 6, 550);
INSERT INTO Room VALUES (86, null, 2, 7, 550);
INSERT INTO Room VALUES (87, null, 2, 8, 550);
INSERT INTO Room VALUES (88, null, 2, 9, 550);
INSERT INTO Room VALUES (89, null, 2, 10, 550);

INSERT INTO Room VALUES (70, null, 3, 1, 600);
INSERT INTO Room VALUES (71, null, 3, 2, 600);
INSERT INTO Room VALUES (72, null, 3, 3, 600);
INSERT INTO Room VALUES (73, null, 3, 4, 600);
INSERT INTO Room VALUES (74, null, 3, 5, 600);
INSERT INTO Room VALUES (75, null, 3, 6, 600);
INSERT INTO Room VALUES (76, null, 3, 7, 620);
INSERT INTO Room VALUES (77, null, 3, 8, 620);
INSERT INTO Room VALUES (78, null, 3, 9, 620);
INSERT INTO Room VALUES (79, null, 3, 10, 600);

INSERT INTO Room VALUES (60, null, 4, 1, 550);
INSERT INTO Room VALUES (61, null, 4, 2, 550);
INSERT INTO Room VALUES (62, null, 4, 3, 550);
INSERT INTO Room VALUES (63, null, 4, 4, 550);
INSERT INTO Room VALUES (64, null, 4, 5, 550);
INSERT INTO Room VALUES (65, null, 4, 6, 550);
INSERT INTO Room VALUES (66, null, 4, 7, 550);
INSERT INTO Room VALUES (67, null, 4, 8, 550);
INSERT INTO Room VALUES (68, null, 4, 9, 550);
INSERT INTO Room VALUES (69, null, 4, 10, 550);

INSERT INTO Room VALUES (90, null, 5, 1, 600);
INSERT INTO Room VALUES (91, null, 5, 2, 600);
INSERT INTO Room VALUES (92, null, 5, 3, 600);
INSERT INTO Room VALUES (93, null, 5, 4, 600);
INSERT INTO Room VALUES (94, null, 5, 5, 640);
INSERT INTO Room VALUES (95, null, 5, 6, 640);
INSERT INTO Room VALUES (96, null, 5, 7, 640);
INSERT INTO Room VALUES (97, null, 5, 8, 640);
INSERT INTO Room VALUES (98, null, 5, 9, 600);
INSERT INTO Room VALUES (99, null, 5, 10, 600);

/*
11 students are "placed" therefore there should be 11 current Leases, maybe 5 past?
INSERT INTO Lease VALUES (leaseNo, placeNo, muNo, duration, entryDate, exitDate)
*/
INSERT INTO Lease VALUES (101, 8, 901632234, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (102, 9, 901635222, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (103, 16, 901635353, 2, Date('2019-01-1'), Date('2019-08-15'));
INSERT INTO Lease VALUES (104, 17, 901213023, 2, Date('2019-01-1'), Date('2019-08-15'));
INSERT INTO Lease VALUES (105, 18, 901145631, 2, Date('2019-01-1'), Date('2019-08-15'));
INSERT INTO Lease VALUES (106, 31, 901759307, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (107, 8, 901759901, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (108, 90, 901762303, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (109, 91, 901742209, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (110, 60, 901889242, 1, Date('2019-01-1'), Date('2019-05-15'));
INSERT INTO Lease VALUES (111, 70, 901889246, 1, Date('2019-01-1'), Date('2019-05-15'));

INSERT INTO Lease VALUES (89, 91, 901742209, 1, Date('2018-08-07'), Date('2018-12-20'));
INSERT INTO Lease VALUES (90, 60, 901889242, 1, Date('2018-08-08'), Date('2018-12-20'));
INSERT INTO Lease VALUES (91, 70, 901889246, 1, Date('2018-08-08'), Date('2018-12-20'));
INSERT INTO Lease VALUES (92, 8, 901632234, 1, Date('2018-08-07'), Date('2018-12-20'));
INSERT INTO Lease VALUES (93, 9, 901635222, 1, Date('2018-08-07'), Date('2018-12-20'));

INSERT INTO Invoice VALUES(89, 89, "Fall", 2400, Date('2018-12-20'),null, null, "Check");
INSERT INTO Invoice VALUES(90, 90, "Fall", 2400, Date('2018-12-20'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(91, 91, "Fall", 2400, Date('2018-12-20'),null, null, "Check");
INSERT INTO Invoice VALUES(92, 92, "Fall", 2800, null,null, null, null);
INSERT INTO Invoice VALUES(93, 93, "Fall", 2800, Date('2018-12-20'),null, null, "Debit Card");

INSERT INTO Invoice VALUES(101, 101, "Spring", 2400, null,null, null, null);
INSERT INTO Invoice VALUES(102, 102, "Spring", 2800, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(103, 103, "Spring", 2400, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(104, 104, "Spring", 2400, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(105, 105, "Spring", 2400, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(106, 106, "Spring", 2400, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(107, 107, "Spring", 2400, Date('2019-01-1'),null, null, "Debit Card");
INSERT INTO Invoice VALUES(108, 108, "Spring", 2400, Date('2019-01-1'),null, null, "Check");
INSERT INTO Invoice VALUES(109, 109, "Spring", 2400, Date('2019-01-1'),null, null, "Check");
INSERT INTO Invoice VALUES(110, 110, "Spring", 2400, Date('2019-01-1'),null, null, "Check");
INSERT INTO Invoice VALUES(111, 111, "Spring", 2400, Date('2019-01-1'),null, null, "Cash");


INSERT INTO Inspection VALUES (1, 89, 2, Date('2016-02-03'), "bad", "THIS IS NOT ZESTY");
INSERT INTO Inspection VALUES (2, 89, 2, Date('2016-04-08'), "good", "This is clean");
INSERT INTO Inspection VALUES (3, 89, 2, Date('2016-12-28'), "bad", "Y'all ever heard of cleaning?");
INSERT INTO Inspection VALUES (4, 89, 2, Date('2014-08-05'), "good", "I would live here lmao");
INSERT INTO Inspection VALUES (5, 57, 2, Date('2018-08-07'), "bad", "There are bugs in the walls.");
INSERT INTO Inspection VALUES (6, 57, 2, Date('2019-01-08'), "good", "It's a room");
INSERT INTO Inspection VALUES (7, 57, 2, Date('2018-04-09'), "bad", "BRUH");
INSERT INTO Inspection VALUES (8, 57, 2, Date('2017-06-01'), "good", "Do I have to put comments?");

/* What follows is for the rest of the tables to be filled and is based on the order to add data.

 Room contains either a flatNo or hallNo as a foreign key so it is added after each of them".
 NOT DONE
 INSERT INTO Room VALUES (placeNo, flatNo, hallNo,roomNo, monthlyRate);
 Lease depends on placeNo and muNo. It must have information inserted after those tables are created.
 NOT DONE
 INSERT INTO Lease VALUES (leaseNo, placeNo, muNo, duration, entryDate, exitDate);
 Invoice depends on Lease and Student so it can only be done after those.
 NOT DONE
 INSERT INTO Invoice VALUES(invoiceNo, leaseNo, "semester", paymentDue, datePaid, dateReminder1, dateReminder2);
 Inspection depends on Staff, and Flat so it can be filled after each of them.
 NOT DONE
 INSERT INTO Inspection VALUES (inspectionNo, staffNo, flatNo, inspectionDate, condition, comments);
 Course has no foreign keys so you can fill it whenever.
 DONE
 */

/*
The following to the end is compeleted
*/
INSERT INTO Course VALUES (1, "CS 210", "Husnu Narman", null, "narman@live.marshall.edu", null, "CITE");
INSERT INTO Course VALUES (2, "CS 200", "Jonathan Thompson", null, "thompsonj@live.marshall.edu", null, "CITE");
INSERT INTO Course VALUES (3, "CS 404", "Cong Pu", null, "puc@live.marshall.edu", "001", "CITE");
INSERT INTO Course VALUES (4, "CS 444", "Paulus Wahjudi", null, "wahjudi@live.marshall.edu", null, "CITE");
INSERT INTO Course VALUES (5, "CS 120", "Jamil Chaudri", null, "chaudri@live.marshall.edu", null, "CITE");
INSERT INTO Course VALUES (6, "CS 110", "Wook-Sung Yoo", null, "yoow@live.marshall.edu", null, "CITE");

INSERT INTO Enrollment VALUES (1, "Summer 1", 1, 901635353);
INSERT INTO Enrollment VALUES (2, "Summer 1", 2, 901635222);
INSERT INTO Enrollment VALUES (3, "Summer 1", 2, 901635222);
INSERT INTO Enrollment VALUES (7, "Summer 1", 3, 901762303);
INSERT INTO Enrollment VALUES (6, "Summer 1", 3, 901762303);
INSERT INTO Enrollment VALUES (4, "Summer 1", 4, 901762303);
INSERT INTO Enrollment VALUES (5, "Summer 1", 5, 901145782);

INSERT INTO NextOfKin VALUES (1, 901742309, "Mary Mom", "Mother", null, null, null, null);
INSERT INTO NextOfKin VALUES (2, 901742209, "Chris Dad", "Dad", null, null, null, null);
INSERT INTO NextOfKin VALUES (3, 901635353, "John-Paul Grandma", "Grandmother", null, null, null, null);
INSERT INTO NextOfKin VALUES (4, 901145782, "Angela Mom", "Mother", null, null, null, null);
INSERT INTO NextOfKin VALUES (5, 901889246, "Dolores Dad", "Father", null, null, null, null);
INSERT INTO NextOfKin VALUES (6, 901632234, "Ivan Grandpa", "Grandfather", null, null, null, null);

INSERT INTO ParkingLot VALUES (1, "What A Lot", "22 3rd Avenue", "Huntington", 25755, 100, 99);
INSERT INTO ParkingLot VALUES (2, "Cars Go Here", "44 5th Avenue", "Huntington", 25755, 124, 123);
INSERT INTO ParkingLot VALUES (3, "We Only Have 3 Lots Sorry", "1 Capital Street", "Charleston", 25301, 30, 29);

INSERT INTO Vehicle VALUES ("1FTPW14534KC17447", 901213023, 1, "6H 9477", "Black", "Accent", "Hyundai");
INSERT INTO Vehicle VALUES ("1GDEG25K2H7548880", 901632672, 2, "7J 4919", "White", "Charge", "Chevrolet");
INSERT INTO Vehicle VALUES ("1FTYS95V2SVA76959", 901145782, 3, "1W 4948", "Green", "Fiesta", "Ford");
