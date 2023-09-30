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
    apiKey: 'AIzaSyAHiU9Dg3CR9sBfZWPNA1AnqltIK5V4IcM',
    appId: '1:216676294417:web:375ac9633258a15f6df6b0',
    messagingSenderId: '216676294417',
    projectId: 'driverapp-3cff3',
    authDomain: 'driverapp-3cff3.firebaseapp.com',
    storageBucket: 'driverapp-3cff3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3CF0FwKacIosvx2Qm0RiSmzoXooc4tkE',
    appId: '1:216676294417:android:cbdf3d4c6ccf30ed6df6b0',
    messagingSenderId: '216676294417',
    projectId: 'driverapp-3cff3',
    storageBucket: 'driverapp-3cff3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCh7n4j-JcsYYpP5G2OgGqbfeOz47qizOE',
    appId: '1:216676294417:ios:4c4575fd28dfd3ee6df6b0',
    messagingSenderId: '216676294417',
    projectId: 'driverapp-3cff3',
    storageBucket: 'driverapp-3cff3.appspot.com',
    iosClientId: '216676294417-o5p8utroq1o53fehbqtldbsdq30eagid.apps.googleusercontent.com',
    iosBundleId: 'com.example.driverApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCh7n4j-JcsYYpP5G2OgGqbfeOz47qizOE',
    appId: '1:216676294417:ios:ebcd9bca6d198df66df6b0',
    messagingSenderId: '216676294417',
    projectId: 'driverapp-3cff3',
    storageBucket: 'driverapp-3cff3.appspot.com',
    iosClientId: '216676294417-spk8aicsr0arn6mgr1v9817qbqhg7svk.apps.googleusercontent.com',
    iosBundleId: 'com.example.driverApp.RunnerTests',
  );
}