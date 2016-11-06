describe patientRecord;
describe appointments;
describe billingInfo;
describe physician;
describe symptoms;
describe prescriptions;
describe diagnoses;

select * from patientRecord;
select * from appointments;
select * from billingInfo;
select * from physician;
select * from symptoms;
select * from prescriptions;
select * from diagnoses;

--Get patients/doctors appointments for today.
select * from patientRecord natural join appointments 
join physician on appointments.physicianID = physician.physicianID where scheduledDate = CURDATE();

--Get patients and associated prescriptions.  Add where patientID = ____ to find an individual's current prescriptions.
select patientID, lastName, firstName, prescriptionName from patientRecord 
natural join appointments natural join diagnoses join prescriptions on associatedPrescriptionID = prescriptionID;

--Get patient diagnosis history.
select patientID, lastName, firstName, diagnosisName from patientRecord natural join appointments natural join diagnoses;

--Get general patient billing info.  This query could be used to send out billing.
select patientRecord.patientID, lastName, firstName, address, city, state, zip, policyNumber, coPay from patientRecord natural join billingInfo;

--get individual bill info bills due etc
select patientRecord.patientID, lastName, firstName, billAmount, coPay from patientRecord natural join billingInfo;

--get available care providers info for patient (office numbers)
select lastName, firstName, businessPhoneNumber from physician;

--view symptoms/prescriptions/diagnoses (patient and doctor view)
--This query could be used to give patients a quick glance at what could be wrong with them for simple diagnoses.  Like itchy throat could point to allergies.
select symptomName, diagnosisName from diagnoses join symptoms on associatedSymptomID = symptomID;

