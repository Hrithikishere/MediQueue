import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/appointments.dart';
import 'package:medi_queue/providers/login_register/loginProvider.dart';

// final appointmentProvider =
//     StateNotifierProvider<AppointmentNotifier, List<Appointment>>((ref) {
//   return AppointmentNotifier(doctorList);
// });

// class AppointmentNotifier extends StateNotifier<List<Appointment>> {
//   AppointmentNotifier(List<Appointment> doctorList) : super([]);

//   List<Appointment> filterListByUser(int id) {
//     List<Appointment> filteredList = [];
//     for (Appointment doctor in doctorList) {
//       if (doctor.desg == "Cardiologist") {
//         filteredList.add(doctor);
//       }
//     }
//     return filteredList;
//   }

// }
