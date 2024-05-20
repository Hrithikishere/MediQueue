import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/doctors.dart';

final doctorProvider =
    StateNotifierProvider<DoctorNotifier, List<Doctor>>((ref) {
  return DoctorNotifier(doctorList);
});

class DoctorNotifier extends StateNotifier<List<Doctor>> {
  DoctorNotifier(List<Doctor> state) : super(state);

  String inputName = "";
  String designation = "";

  void setInputName(String name) {
    inputName = name;
    filterListByNameAndDesg();
  }

  void setDesignation(String desg) {
    designation = desg;
    filterListByNameAndDesg();
  }

  // void filterList(String docDesg) {
  //   List<Doctor> filteredList = [];
  //   for (Doctor doctor in doctorList) {
  //     if (doctor.desg == docDesg) {
  //       filteredList.add(doctor);
  //     }
  //   }
  //   state = filteredList;
  //   print(state);
  // }

  // void filterListByName(String name) {
  //   List<Doctor> filteredList = [];
  //   for (Doctor doctor in doctorList) {
  //     if (doctor.name.toLowerCase().contains(name.toLowerCase())) {
  //       filteredList.add(doctor);
  //     }
  //   }
  //   state = filteredList;
  //   print(state);
  // }

  void filterListByNameAndDesg() {
    List<Doctor> filteredList = [];
    for (Doctor doctor in doctorList) {
      if (doctor.name.toLowerCase().contains(inputName.toLowerCase()) &&
          doctor.desg.toLowerCase().contains(designation.toLowerCase())) {
        filteredList.add(doctor);
      }
    }
    state = filteredList;
    // print(state);
  }
}
