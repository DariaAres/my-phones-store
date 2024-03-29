// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

import 'firebase_options.dart';


/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```flutter
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
    apiKey: 'AIzaSyBxpNc0KyXW-VKAY6jtfSJ7fnvictYUXSw',
    appId: '1:154204761153:web:5ea15c76464839f3c1aac0',
    messagingSenderId: '154204761153',
    projectId: 'my-phones-app',
    authDomain: 'my-phones-app.firebaseapp.com',
    storageBucket: 'my-phones-app.appspot.com',
    measurementId: 'G-874B6MPRH0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBryMrddE45LA2j52BggDfeC3dyT0FxyKs',
    appId: '1:154204761153:android:929cffc0e9d8731ac1aac0',
    messagingSenderId: '154204761153',
    projectId: 'my-phones-app',
    storageBucket: 'my-phones-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvf__hwvln3tS7lUky1rdxRY2iIf1nPbo',
    appId: '1:154204761153:ios:57759fd26c279b1ac1aac0',
    messagingSenderId: '154204761153',
    projectId: 'my-phones-app',
    storageBucket: 'my-phones-app.appspot.com',
    iosBundleId: 'com.example.myPhonesStore',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCvf__hwvln3tS7lUky1rdxRY2iIf1nPbo',
    appId: '1:154204761153:ios:57759fd26c279b1ac1aac0',
    messagingSenderId: '154204761153',
    projectId: 'my-phones-app',
    storageBucket: 'my-phones-app.appspot.com',
    iosBundleId: 'com.example.myPhonesStore',
  );
}