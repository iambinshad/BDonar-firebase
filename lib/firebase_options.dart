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
    apiKey: 'AIzaSyATT0zG-Mjn2md67I2__MHpyRA5cf8SI28',
    appId: '1:396590491646:web:ce2d08eaa70f402d29c2af',
    messagingSenderId: '396590491646',
    projectId: 'fir-crashlytics-174ca',
    authDomain: 'fir-crashlytics-174ca.firebaseapp.com',
    storageBucket: 'fir-crashlytics-174ca.appspot.com',
    measurementId: 'G-HX4W0NHZE2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMeVSkP16PVgdeVHCAObsBR2fV1wWy1Z4',
    appId: '1:396590491646:android:1bbc67f216bdba0929c2af',
    messagingSenderId: '396590491646',
    projectId: 'fir-crashlytics-174ca',
    storageBucket: 'fir-crashlytics-174ca.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyATmZrplYn9ddOBERwKbCzanJZvYnczl3I',
    appId: '1:396590491646:ios:87f411a7f3d6a7e829c2af',
    messagingSenderId: '396590491646',
    projectId: 'fir-crashlytics-174ca',
    storageBucket: 'fir-crashlytics-174ca.appspot.com',
    iosClientId: '396590491646-72q5ft5usa7shjiruae40r21ht6m26e0.apps.googleusercontent.com',
    iosBundleId: 'com.example.bDonate',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyATmZrplYn9ddOBERwKbCzanJZvYnczl3I',
    appId: '1:396590491646:ios:87f411a7f3d6a7e829c2af',
    messagingSenderId: '396590491646',
    projectId: 'fir-crashlytics-174ca',
    storageBucket: 'fir-crashlytics-174ca.appspot.com',
    iosClientId: '396590491646-72q5ft5usa7shjiruae40r21ht6m26e0.apps.googleusercontent.com',
    iosBundleId: 'com.example.bDonate',
  );
}
