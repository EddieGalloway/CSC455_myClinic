/*insert_myClinic.sql*/

/*PatientRecord*/
insert into patientRecord values
  (10000, 'McDougal', 'Dorian', '1020 Market St.', 'Pfafftown', 'North Carolina', 27040, '204-882-2041', 800.99, 40001);
insert into patientRecord values
  (10001, 'Woodley', 'Marcus', '1000 Oak Way', 'Pine Hill', 'North Carolina', 27042, '312-662-0152', 1200.99, 40002);
insert into patientRecord values
  (10002, 'Mosey', 'Michael', '890 War St.', 'Mount Airy', 'North Carolina', 27030, '299-233-2001', 299.99, 40002);
insert into patientRecord values
  (10003, 'Wooten', 'Kyle', '2059 Lark Dr.', 'Yadkinville', 'North Carolina', 27055, '336-098-2334', 2000.99, 40001);
insert into patientRecord values
  (10004, 'Talley', 'Christine', '2020 Goose Lane', 'Mount Airy', 'North Carolina', 27030, '336-252-3056', 50.99, 40003);
insert into patientRecord values
  (10005, 'Harvey', 'Sarah', '159 Bernard St.', 'Pine Hill', 'North Carolina', 27042, '312-250-5020', 550.99, 40003);
insert into patientRecord values
  (10006, 'McConnel', 'Christopher', '666 Diablo Way', 'Pfafftown', 'North Carolina', 27040, '204-860-2335', 5200.99, 40001);
insert into patientRecord values
  (10007, 'Hart', 'Haley', '888 Battle St.', 'Pine Hill', 'North Carolina', 27042, '312-602-5552', 1500.99, 40002);
insert into patientRecord values
  (10008, 'Yelten', 'Lindsay', '9120 Federal Hill', 'Mount Airy', 'North Carolina', 27030, '299-520-2065', 592.99, 40002);
insert into patientRecord values
  (10009, 'Farley', 'Yancey', '1234 First St.', 'Yadkinville', 'North Carolina', 27055, '336-958-2489', 2562.99, 40001);
insert into patientRecord values
  (10010, 'Heartwood', 'Marissa', '544 Mountain Island Way', 'Mount Airy', 'North Carolina', 27030, '336-255-3525', 850.99, 40003);
insert into patientRecord values
  (10011, 'West', 'Seline', '550 Washington St.', 'Pine Hill', 'North Carolina', 27042, '312-236-5229', 1250.99, 40003);

/* billingInfo */
insert into billingInfo values
  (10000, 7001, 200.00, 800.99, 20160203, 20160303, 1);
insert into billingInfo values
  (10001, 7010, 600.00, 1200.99, 20160203, 20160303, 1);
insert into billingInfo values
  (10002, 7100, 250.00, 299.99, 20160204, 20160304, 1);
insert into billingInfo values
  (10003, 7001, 200.00, 2000.99, 20160204, 20160304, 1);
insert into billingInfo values
  (10004, 7001, 200.00, 50.99, 20160205, 20160305, 1);
insert into billingInfo values
  (10005, 7101, 500.00, 550.99, 20160205, 20160305, 1);
insert into billingInfo values
  (10006, 7110, 600.00, 5200.99, 20160206, 20160306, 0);
insert into billingInfo values
  (10007, 7001, 200.00, 1500.99, 20160206, 20160306, 1);
insert into billingInfo values
  (10008, 7110, 600.00, 592.99, 20160207, 20160307, 0);
insert into billingInfo values
  (10009, 7111, 350.00, 2562.99, 20160207, 20160307, 0);
insert into billingInfo values
  (10010, 7001, 200.00, 850.99, 20160208, 20160308, 1);
insert into billingInfo values
  (10011, 7111, 350.00, 1250.99, 20160208, 20160308, 1);

/*physician*/
insert into physician values
  (40001, 'Levine', 'Charles', '1010 Baker St.', 'Pfafftown', 'North Carolina', 27040, '204-555-0202', '204-180-2596');
insert into physician values
  (40002, 'Cicero', 'Maggy', '147 Front St.', 'Winston Salem', 'North Carolina', 27055, '204-555-0220', '336-988-9565');
insert into physician values
  (40003, 'DeMaggio', 'Joe', '2210 Miles Dr.', 'Mount Airy', 'North Carolina', 27030,  '204-555-0212', '224-115-1616');
insert into physician values
  (40004, 'Deaux', 'Jane', '9501 Hrothgar Way', 'Pine Hill', 'North Carolina', 27042, '204-555-0222', '312-988-9565');

/*appointments*/
insert into appointments values
  (10000, 40001, 20160203, 100000, 5000);
insert into appointments values
  (10001, 40002, 20160203, 110000, 5100);
insert into appointments values
  (10002, 40002, 20160204, 080000, 5010);
insert into appointments values
  (10003, 40001, 20160204, 023000, 5001);
insert into appointments values
  (10004, 40003, 20160205, 083000, 5200);
insert into appointments values
  (10005, 40003, 20160205, 110000, 5020);
insert into appointments values
  (10006, 40001, 20160206, 093000, 5002);
insert into appointments values
  (10007, 40002, 20160206, 033000, 5300);
insert into appointments values
  (10008, 40002, 20160207, 090000, 5030);
insert into appointments values
  (10009, 40001, 20160207, 103000, 5003);
insert into appointments values
  (10010, 40003, 20160208, 040000, 5400);
insert into appointments values
  (10011, 40003, 20160208, 053000, 5040);

/*diagnoses*/
insert into diagnoses values
  (5000, 'diagnosesA' , '1A2S', 6000);
insert into diagnoses values
  (5100, 'diagnosesB' , '2A2S', 6100);
insert into diagnoses values
  (5010, 'diagnosesC' , '3A2S', 6200);
insert into diagnoses values
  (5200, 'diagnosesD' , '4A2S', 6300);
insert into diagnoses values
  (5020, 'diagnosesE' , '5A2S', 6400);
insert into diagnoses values
  (5002, 'diagnosesF' , '6A2S', 6500);
insert into diagnoses values
  (5300, 'diagnosesG' , '7A2S', 6600);
insert into diagnoses values
  (5030, 'diagnosesH' , '8A2S', 6700);
insert into diagnoses values
  (5003, 'diagnosesG' , '9A2S', 6800);
insert into diagnoses values
  (5400, 'diagnosesH' , '10A2S', 6900);
insert into diagnoses values
  (5040, 'diagnosesJ' , '11A2S', 6010);

/*prescriptions*/
insert into prescriptions values
  (6000, 'prescriptionA');
insert into prescriptions values
  (6100, 'prescriptionB');
insert into prescriptions values
  (6200, 'prescriptionC');
insert into prescriptions values
  (6300, 'prescriptionD');
insert into prescriptions values
  (6400, 'prescriptionE');
insert into prescriptions values
  (6500, 'prescriptionF');
insert into prescriptions values
  (6600, 'prescriptionG');
insert into prescriptions values
  (6700, 'prescriptionH');
insert into prescriptions values
  (6800, 'prescriptionG');
insert into prescriptions values
  (6900, 'prescriptionH');
insert into prescriptions values
  (6010, 'prescriptionJ');

/*symptoms*/
insert into symptoms values
  ('1A2S', 'symptomNameA');
insert into symptoms values
  ('2A2S', 'symptomNameB');
insert into symptoms values
  ('3A2S', 'symptomNameC');
insert into symptoms values
  ('4A2S', 'symptomNameD');
insert into symptoms values
  ('5A2S', 'symptomNameE');
insert into symptoms values
  ('6A2S', 'symptomNameF');
insert into symptoms values
  ('7A2S', 'symptomNameG');
insert into symptoms values
  ('8A2S', 'symptomNameH');
insert into symptoms values
  ('9A2S', 'symptomNameG');
insert into symptoms values
  ('10A2S', 'symptomNameH');
insert into symptoms values
  ('11A2S', 'symptomNameJ');
