import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_queue/pages/about_page.dart';
import 'package:medi_queue/pages/app_intro/intro_four_page.dart';
import 'package:medi_queue/pages/app_intro/intro_one_page.dart';
import 'package:medi_queue/pages/app_intro/intro_three_page.dart';
import 'package:medi_queue/pages/app_intro/intro_two_page.dart';
import 'package:medi_queue/pages/app_intro/splash_page.dart';
import 'package:medi_queue/pages/appointment/appointment_create_page.dart';
import 'package:medi_queue/pages/appointment/appointment_details_page.dart';
import 'package:medi_queue/pages/appointment/appointments_page.dart';
import 'package:medi_queue/pages/blog/blog_desc_page.dart';
import 'package:medi_queue/pages/blog/blogs_page.dart';
import 'package:medi_queue/pages/doctors/all_doctors_page.dart';
import 'package:medi_queue/pages/doctors/cardiologist_list_page.dart';
import 'package:medi_queue/pages/doctors/doctor_profile_page.dart';
import 'package:medi_queue/pages/doctors/eye_list.dart';
import 'package:medi_queue/pages/doctors/medicine_list_page.dart';
import 'package:medi_queue/pages/home_page.dart';
import 'package:medi_queue/pages/login_register/login_or_register_page.dart';
import 'package:medi_queue/pages/login_register/login_page.dart';
import 'package:medi_queue/pages/login_register/register_page.dart';
import 'package:medi_queue/pages/more_page.dart';
import 'package:medi_queue/pages/doctors/surgeon_list_page.dart';
import 'package:medi_queue/pages/my_profile_page.dart';
import 'package:medi_queue/util/doctor/doctor_profile_card.dart';

final GoRouter router = GoRouter(debugLogDiagnostics: true, routes: <GoRoute>[
  GoRoute(
    path: '/',
    name: 'splash',
    pageBuilder: (context, state) {
      return MaterialPage(child: SplashPage());
    },
  ),
  GoRoute(
    path: '/intro_one',
    name: 'intro_one',
    pageBuilder: (context, state) {
      return MaterialPage(child: IntroOnePage());
    },
  ),
  GoRoute(
    path: '/intro_two',
    name: 'intro_two',
    pageBuilder: (context, state) {
      return MaterialPage(child: IntroTwoPage());
    },
  ),
  GoRoute(
    path: '/intro_three',
    name: 'intro_three',
    pageBuilder: (context, state) {
      return MaterialPage(child: IntroThreePage());
    },
  ),
  GoRoute(
    path: '/intro_four',
    name: 'intro_four',
    pageBuilder: (context, state) {
      return MaterialPage(child: IntroFourPage());
    },
  ),
  GoRoute(
    path: '/login_or_register',
    name: 'login_or_register',
    pageBuilder: (context, state) {
      return MaterialPage(child: LoginOrRegisterPage());
    },
  ),
  GoRoute(
    path: '/register',
    name: 'register',
    pageBuilder: (context, state) {
      return MaterialPage(child: RegisterPage());
    },
  ),
  GoRoute(
    path: '/blogs',
    name: 'blogs',
    pageBuilder: (context, state) {
      return MaterialPage(child: BlogsPage());
    },
  ),
  GoRoute(
    path: '/appointments',
    name: 'appointments',
    pageBuilder: (context, state) {
      return MaterialPage(child: AppointmentsPage());
    },
  ),
  GoRoute(
    path: '/login_page',
    name: 'login_page',
    pageBuilder: (context, state) {
      return MaterialPage(child: LoginPage());
    },
  ),
  GoRoute(
    path: '/home',
    name: 'home',
    pageBuilder: (context, state) {
      return MaterialPage(child: HomePage());
    },
  ),
  GoRoute(
    path: '/more',
    name: 'more',
    pageBuilder: (context, state) {
      return MaterialPage(child: MorePage());
    },
  ),
  GoRoute(
    path: '/doctor_profile/:id',
    name: 'doctor_profile',
    pageBuilder: (context, state) {
      return MaterialPage(
          child: DoctorProfilePage(
        id: int.parse(state.pathParameters['id']!),
      ));
    },
  ),
  GoRoute(
    path: '/appointment_details',
    name: 'appointment_details',
    pageBuilder: (context, state) {
      return MaterialPage(child: AppointmentDetails());
    },
  ),
  GoRoute(
    path: '/doctor_surgeon',
    name: 'doctor_surgeon',
    pageBuilder: (context, state) {
      return MaterialPage(child: SurgeonListPage());
    },
  ),
  GoRoute(
    path: '/doctor_ophthalmologist',
    name: 'doctor_ophthalmologist',
    pageBuilder: (context, state) {
      return MaterialPage(child: EyeListPage());
    },
  ),
  GoRoute(
    path: '/doctor_medicine',
    name: 'doctor_medicine',
    pageBuilder: (context, state) {
      return MaterialPage(child: MedicineListPage());
    },
  ),
  GoRoute(
    path: '/doctor_cardiologist',
    name: 'doctor_cardiologist',
    pageBuilder: (context, state) {
      return MaterialPage(child: CardiologitstListPage());
    },
  ),
  GoRoute(
    path: '/doctor_all',
    name: 'doctor_all',
    pageBuilder: (context, state) {
      return MaterialPage(child: AllDoctorsListPage());
    },
  ),
  GoRoute(
    path: '/my_profile',
    name: 'my_profile',
    pageBuilder: (context, state) {
      return MaterialPage(child: MyProfilePage());
    },
  ),
  GoRoute(
    path: '/appointment_create/:id',
    name: 'appointment_create',
    pageBuilder: (context, state) {
      return MaterialPage(
          child: AppointmentCreatePage(
        id: int.parse(state.pathParameters['id']!),
      ));
    },
  ),
  GoRoute(
    path: '/blog_desc/:id',
    name: 'blog_desc',
    builder: (context, state) {
      return BlogDescriptionPage(
        id: int.parse(state.pathParameters['id']!),
      );
    },
  ),
  GoRoute(
    path: '/about',
    name: 'about',
    builder: (context, state) {
      return AboutPage(
          // id: state.pathParameters['id']!,
          );
    },
  ),
]);
