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
    apiKey: 'AIzaSyDCB9WS3W01EDkmyt1AK1qwPo1eivlWSgw',
    appId: '1:449884066349:web:74169347b521d7d5869ea4',
    messagingSenderId: '449884066349',
    projectId: 'flutterauth-b0daf',
    authDomain: 'flutterauth-b0daf.firebaseapp.com',
    storageBucket: 'flutterauth-b0daf.appspot.com',
    measurementId: 'G-PHV8MK7P2B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZ_3OoHCAOv84gO3MmWwnvI7_F9SrAmi4',
    appId: '1:449884066349:android:69ae9c059d3d69f1869ea4',
    messagingSenderId: '449884066349',
    projectId: 'flutterauth-b0daf',
    storageBucket: 'flutterauth-b0daf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0PPXHqkR9HI4j-p5XfpElZkC6QlY6kj0',
    appId: '1:449884066349:ios:9cca13095d7dcaea869ea4',
    messagingSenderId: '449884066349',
    projectId: 'flutterauth-b0daf',
    storageBucket: 'flutterauth-b0daf.appspot.com',
    iosClientId: '449884066349-55mc2s4er7c3ituho7rnd54vbaunskp1.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0PPXHqkR9HI4j-p5XfpElZkC6QlY6kj0',
    appId: '1:449884066349:ios:9cca13095d7dcaea869ea4',
    messagingSenderId: '449884066349',
    projectId: 'flutterauth-b0daf',
    storageBucket: 'flutterauth-b0daf.appspot.com',
    iosClientId: '449884066349-55mc2s4er7c3ituho7rnd54vbaunskp1.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseapp',
  );
}
