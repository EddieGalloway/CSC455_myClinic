import MySQLdb
from vpnc import VPNC


class connection:

    def __init__(self, username, password):
        self.db = MySQLdb.connect(host="webdev.cislabs.uncw.edu", user=username, passwd=password, db=username)
        self.cursor = self.db.cursor()

    def login(self, username, password):
        self.cursor.execute("select userType from usernameInfo info where username = '" + username + "'")
        type = self.cursor.fetchone()[0]
        if type == 0:
            self.cursor.execute("select * from patientLoginInfo "
                                "where username = '" + username + "' and password = '" + password + "'")
            valid = self.cursor.fetchone()
            if len(valid) > 0:
                return 0

        elif type == 1:
            self.cursor.execute("select * from adminLoginInfo "
                                "where username = '" + username + "' and password = '" + password + "'")
            valid = self.cursor.fetchone()
            if len(valid) > 0:
                return 1
        else:
            return -1

    def getAppointments(self):

        self.cursor.execute("select * from patientRecord natural join appointments "
                            "join physician on appointments.physicianID = physician.physicianID "
                            "where scheduledDate = 20161004")
        data = self.cursor.fetchall()
        for i in range(len(data)):
            print(data[i])


    def getPatientsAndPrescriptions(self):

        self.cursor.execute("select patientID, lastName, firstName, prescriptionName "
                            "from patientRecord natural join appointments natural join diagnoses "
                            "join prescriptions on associatedPrescriptionID = prescriptionID;")
        data = self.cursor.fetchall()
        for i in range(len(data)):
            print(data[i])


conn = connection("ecg4965", "NuRdvbtC4")
username = raw_input("Please enter username: ")
password = raw_input("Please enter password: ")
if conn.login(username, password) == 0:
    print("Logged in as " + username)
    print("Please select an option from the list below: ")
    print("\t[1] View your patient information\n"
          "\t[2] View your billing information\n"
          "\t[3] ")
    selection = raw_input("Selection: ")
    if selection == "1":
        print("1")

conn.getAppointments()
# conn.getPatientsAndPrescriptions()