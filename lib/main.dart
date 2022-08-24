// ignore_for_file: depend_on_referenced_packages
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
// ignore: unused_import
import 'package:project_app_doctor/login_page/function/google_sign_in.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:shared_preferences/shared_preferences.dart';
import 'package:project_app_doctor/login_page/ui/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
