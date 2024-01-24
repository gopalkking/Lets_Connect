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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjBT-ewuUHCDBw-mK28gVgFp1NUHl2XxY',
    appId: '1:662141672254:android:22e322591b958f859baa6f',
    messagingSenderId: '662141672254',
    projectId: 'letsconnect-88934',
    databaseURL: 'https://letsconnect-88934-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'letsconnect-88934.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD17UETKlfD_L859cAjiXOqmoukTfQc5yA',
    appId: '1:662141672254:ios:b4d82dca2e237ea69baa6f',
    messagingSenderId: '662141672254',
    projectId: 'letsconnect-88934',
    databaseURL: 'https://letsconnect-88934-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'letsconnect-88934.appspot.com',
    iosBundleId: 'com.example.letsConnect',
  );
}