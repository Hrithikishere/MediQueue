import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

final opthamologistProvider =
    StateNotifierProvider<OpthamologistNotifier, List<Doctor>>((ref) {
  return OpthamologistNotifier(doctorList);
});

class OpthamologistNotifier extends StateNotifier<List<Doctor>> {
  OpthamologistNotifier(List<Doctor> doctorList) : super([]) {
    state = filterListByOpthamologist();
  }

  List<Doctor> filterListByOpthamologist() {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.desg == "Opthalmologist") {
        filteredList.add(doctor);
      }
    }
    return filteredList;
  }

  void filterListByOpthamologistName(String name) {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.name.toLowerCase().contains(name.toLowerCase()) &&
          doctor.desg == "Opthalmologist") {
        filteredList.add(doctor);
      }
    }
    state = filteredList;
    // print(state);
  }
}
