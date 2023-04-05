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
    apiKey: 'AIzaSyA_Ycc4cbG2rqSD_RVQbRWDacor5Wi7D_g',
    appId: '1:1084200619939:web:024244d3981c989e85d416',
    messagingSenderId: '1084200619939',
    projectId: 'songtestapp-f256f',
    authDomain: 'songtestapp-f256f.firebaseapp.com',
    storageBucket: 'songtestapp-f256f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDiu9Xa8Dk6IogUe7Cf-uiaRRES-obMbJI',
    appId: '1:1084200619939:android:cae12ff0034c09fa85d416',
    messagingSenderId: '1084200619939',
    projectId: 'songtestapp-f256f',
    storageBucket: 'songtestapp-f256f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1xndTYlX_QL9RKJF8dB9ZbwvTP6Rju-E',
    appId: '1:1084200619939:ios:612cf9cdc595fd2585d416',
    messagingSenderId: '1084200619939',
    projectId: 'songtestapp-f256f',
    storageBucket: 'songtestapp-f256f.appspot.com',
    iosClientId: '1084200619939-fn38a4phavs5g1b3aurfjm7edjpjslon.apps.googleusercontent.com',
    iosBundleId: 'com.example.songtestapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1xndTYlX_QL9RKJF8dB9ZbwvTP6Rju-E',
    appId: '1:1084200619939:ios:612cf9cdc595fd2585d416',
    messagingSenderId: '1084200619939',
    projectId: 'songtestapp-f256f',
    storageBucket: 'songtestapp-f256f.appspot.com',
    iosClientId: '1084200619939-fn38a4phavs5g1b3aurfjm7edjpjslon.apps.googleusercontent.com',
    iosBundleId: 'com.example.songtestapp',
  );
}
