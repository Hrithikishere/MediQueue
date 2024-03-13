import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

final medicineProvider =
    StateNotifierProvider<MedicineNotifier, List<Doctor>>((ref) {
  return MedicineNotifier(doctorList);
});

class MedicineNotifier extends StateNotifier<List<Doctor>> {
  MedicineNotifier(List<Doctor> doctorList) : super([]) {
    state = filterListByMedicine();
  }

  List<Doctor> filterListByMedicine() {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.desg == "Medicine") {
        filteredList.add(doctor);
      }
    }
    return filteredList;
  }

  void filterListByMedicineName(String name) {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.name.toLowerCase().contains(name.toLowerCase()) &&
          doctor.desg == "Medicine") {
        filteredList.add(doctor);
      }
    }
    state = filteredList;
    // print(state);
  }
}
