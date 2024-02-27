import 'package:medi_queue/framework/helpers/constants/data/user_profile.dart';

class Appointment {
  int id;
  int appointedDoctorId;
  String status;
  String date;
  String time;
  int serial;
  int roomNumber;
  String patientType;
  String hotlineNumber;
  String location;

  Appointment(
      this.id,
      this.appointedDoctorId,
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
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
    'Approved',
    "25 Jan",
    '8.00 PM',
    5,
    511,
    'New Patient',
    '0900619614',
    'Ibn Sina Diagnositc & Consultation, Uttara, Garib-E-Newaz Avenue, Section#13, Uttara, Dhaka-1230',
  ),
];
