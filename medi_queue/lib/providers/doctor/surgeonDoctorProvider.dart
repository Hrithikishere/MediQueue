import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

final surgeonProvider =
    StateNotifierProvider<SurgeonNotifier, List<Doctor>>((ref) {
  return SurgeonNotifier(doctorList);
});

class SurgeonNotifier extends StateNotifier<List<Doctor>> {
  SurgeonNotifier(List<Doctor> doctorList) : super([]) {
    state = filterListBySurgeon();
  }

  List<Doctor> filterListBySurgeon() {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.desg == "Surgeon") {
        filteredList.add(doctor);
      }
    }
    return filteredList;
  }

  void filterListByNameSurgeon(String name) {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.name.toLowerCase().contains(name.toLowerCase()) &&
          doctor.desg == "Surgeon") {
        filteredList.add(doctor);
      }
    }
    state = filteredList;
    print(state);
  }
}
