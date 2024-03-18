import 'package:medi_queue/framework/helpers/constants/data/user_profile.dart';

class Appointment {
  int id;
  int appointedDoctorId;
  int patientId;
  String status;
  DateTime date;
  String time;
  int serial;
  int roomNumber;
  String patientType;
  String hotlineNumber;
  String location;

  Appointment(
      this.id,
      this.appointedDoctorId,
      this.patientId,
      this.status,
      this.date,
      this.time,
      this.serial,
      this.roomNumber,
      this.patientType,
      this.hotlineNumber,
      this.location);
}

List<Appointment> appointmentList = [
  Appointment(
    1001,
    1111,
    1001,
    'Approved',
    DateTime(2024, 01, 1), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1002,
    1112,
    1002,
    'Done',
    DateTime(2024, 2, 15), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1003,
    1113,
    1001,
    'Missed',
    DateTime(2024, 3, 10), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1004,
    1114,
    1002,

    'Approved',
    DateTime(2024, 4, 20), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1005,
    1115,
    1001,

    'Done',
    DateTime(2024, 5, 5), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1006,
    1116,
    1002,

    'Missed',
    DateTime(2024, 6, 30), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1007,
    1117,
    1001,

    'Approved',
    DateTime(2024, 7, 12), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1008,
    1118,
    1002,

    'Done',
    DateTime(2024, 8, 25), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1009,
    1119,
    1001,

    'Missed',
    DateTime(2024, 9, 5), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
  Appointment(
    1010,
    1120,
    1002,

    'Approved',
    DateTime(2024, 10, 18), // Random date within year 2024
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
];
