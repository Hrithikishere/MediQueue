import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_queue/framework/helpers/constants/data/user_profile.dart';

//-----------AUTH
enum AuthState { initial, loading, authenticated, unauthenticated }

final authProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) => AuthNotifier(ref));

class AuthNotifier extends StateNotifier<AuthState> {
  final Ref ref;
  String id = "";
  AuthNotifier(this.ref) : super(AuthState.initial);

  void loading() {
    state = AuthState.loading;
  }

  Future<bool> login(String username, String password) async {
    // state = AuthState.loading;

    await Future.delayed(Duration(seconds: 3));
    UserProfile? findUser(String username) {
      UserProfile? user =
          usersList.firstWhere((user) => user.username == username);
      if (user != null) {
        return user;
      } else {
        return null;
      }
    }

    var userInfo = findUser(username);

    if (userInfo != null && userInfo.password == password) {
      id = username;
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

  String username() {
    return id;
  }
}
