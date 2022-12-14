// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBVDhbKFXiqw44wGkhxNQjnZD06J64ipeo',
    appId: '1:594616465565:web:6fa7ee5b9b9f56aae0bc74',
    messagingSenderId: '594616465565',
    projectId: 'doctor-app-auth',
    authDomain: 'doctor-app-auth.firebaseapp.com',
    storageBucket: 'doctor-app-auth.appspot.com',
    measurementId: 'G-ZJ7C34JTY4',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWaiSrE9fuLckF-BBKUZZpOl0aJpWww2k',
    appId: '1:594616465565:android:57765f2ac37e683ae0bc74',
    messagingSenderId: '594616465565',
    projectId: 'doctor-app-auth',
    storageBucket: 'doctor-app-auth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAt13dqeKakkXFIJYMga3g2kFoRNKeRa4',
    appId: '1:594616465565:ios:86e4cb4407b4d3cbe0bc74',
    messagingSenderId: '594616465565',
    projectId: 'doctor-app-auth',
    storageBucket: 'doctor-app-auth.appspot.com',
    iosClientId: '594616465565-lmh8ns9gisn352ddj1vg25trea4garcd.apps.googleusercontent.com',
    iosBundleId: 'com.example.doctorApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAt13dqeKakkXFIJYMga3g2kFoRNKeRa4',
    appId: '1:594616465565:ios:86e4cb4407b4d3cbe0bc74',
    messagingSenderId: '594616465565',
    projectId: 'doctor-app-auth',
    storageBucket: 'doctor-app-auth.appspot.com',
    iosClientId: '594616465565-lmh8ns9gisn352ddj1vg25trea4garcd.apps.googleusercontent.com',
    iosBundleId: 'com.example.doctorApp',
  );
}
