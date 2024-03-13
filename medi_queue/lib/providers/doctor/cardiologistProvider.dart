import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

final cardiologistProvider =
    StateNotifierProvider<CardiologitstNotifier, List<Doctor>>((ref) {
  return CardiologitstNotifier(doctorList);
});

class CardiologitstNotifier extends StateNotifier<List<Doctor>> {
  CardiologitstNotifier(List<Doctor> doctorList) : super([]) {
    state = filterListByCardiologitst();
  }

  List<Doctor> filterListByCardiologitst() {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.desg == "Cardiologist") {
        filteredList.add(doctor);
      }
    }
    return filteredList;
  }

  void filterListByCardiologitstName(String name) {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.name.toLowerCase().contains(name.toLowerCase()) &&
          doctor.desg == "Cardiologist") {
        filteredList.add(doctor);
      }
    }
    state = filteredList;
    print(state);
  }
}
