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
    apiKey: 'AIzaSyB6M_fPXdMbhE2YwURsKRRXOEwtg2DChq4',
    appId: '1:780243273094:web:18f1f577ad8ffc2938d807',
    messagingSenderId: '780243273094',
    projectId: 'testflutter-5de21',
    authDomain: 'testflutter-5de21.firebaseapp.com',
    databaseURL: 'https://testflutter-5de21-default-rtdb.firebaseio.com',
    storageBucket: 'testflutter-5de21.appspot.com',
    measurementId: 'G-EHNSKQGQFG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATmARkqZwXHpczvl_uqElXCNpYxR2evbg',
    appId: '1:780243273094:android:b479e5959050c94d38d807',
    messagingSenderId: '780243273094',
    projectId: 'testflutter-5de21',
    databaseURL: 'https://testflutter-5de21-default-rtdb.firebaseio.com',
    storageBucket: 'testflutter-5de21.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA6YtqVRGgCWJ4s-NoCOenHU93O5Z4sYvY',
    appId: '1:780243273094:ios:69c9b42db8cbac0738d807',
    messagingSenderId: '780243273094',
    projectId: 'testflutter-5de21',
    databaseURL: 'https://testflutter-5de21-default-rtdb.firebaseio.com',
    storageBucket: 'testflutter-5de21.appspot.com',
    iosClientId: '780243273094-ssluegn3feiilkardfijkkjif02o3gfk.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA6YtqVRGgCWJ4s-NoCOenHU93O5Z4sYvY',
    appId: '1:780243273094:ios:69c9b42db8cbac0738d807',
    messagingSenderId: '780243273094',
    projectId: 'testflutter-5de21',
    databaseURL: 'https://testflutter-5de21-default-rtdb.firebaseio.com',
    storageBucket: 'testflutter-5de21.appspot.com',
    iosClientId: '780243273094-ssluegn3feiilkardfijkkjif02o3gfk.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterapp',
  );
}