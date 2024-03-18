import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/user_profile.dart';

//-----------AUTH
enum AuthState { initial, loading, authenticated, unauthenticated }

final authProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier(ref));

class AuthNotifier extends StateNotifier<AuthState> {
  final Ref ref;
  int id = 1001;
  List<int> appointmentList = [];
  AuthNotifier(this.ref) : super(AuthState.initial);

  void loading() {
    state = AuthState.loading;
  }

  Future<bool> login(String username, String password) async {
    // state = AuthState.loading;

    await Future.delayed(Duration(seconds: 3));
    UserProfile? findUser(String username) {
      try {
        return usersList.singleWhere(
          (user) => user.username.toLowerCase() == username.toLowerCase(),
          // orElse: () => null,
        );
      } catch (e) {
        return null;
      }
    }

    var userInfo = findUser(username);
    // if (userInfo == null) {
    //   print("Got Nullll");
    //   print(username);
    //   print(password);
    // } else {
    //   print("${userInfo.username}, ${userInfo.password}");
    // }

    if (userInfo != null && userInfo.password == password) {
      id = userInfo.id;
      appointmentList = userInfo.appointmentList;
      state = AuthState.authenticated;
      // print("set authenticated from func");
      return true;
    } else {
      state = AuthState.unauthenticated;
      // print("set unauthenticated from func");
      return false;
    }
  }

  void logout() {
    state = AuthState.unauthenticated;
  }

  int username() {
    return id;
  }

  List<int> AppointmentList() {
    return appointmentList;
  }
}
