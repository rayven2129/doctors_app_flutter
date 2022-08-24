import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project_app_doctor/home/homepage.dart';
import 'package:project_app_doctor/login_page/ui/login_page.dart';

void onButtonTapped(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const LoginWidget()));
}

void onLogoutButton(BuildContext context) {
  Navigator.push(
      context, MaterialPageRoute(builder: (context) => const MyApp()));
}

final FirebaseAuth auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
Future<void> google(BuildContext context) async {
  final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
  if (googleSignInAccount != null) {
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication.idToken,
        accessToken: googleSignInAuthentication.accessToken);

    // Getting users credential
    UserCredential result = await auth.signInWithCredential(authCredential);
    User? users = result.user;

    if (users != null) {
      // ignore: use_build_context_synchronously
      onButtonTapped(context);
    }
  }

  // if result not null we simply call the MaterialpageRoute,
  // for go to the HomePage screen
}

Future logout(BuildContext context) async {
  await googleSignIn.disconnect();
  // ignore: use_build_context_synchronously
  onLogoutButton(context);
}
