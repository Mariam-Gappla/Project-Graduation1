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
    apiKey: 'AIzaSyC0U2HJHXVnIikdhf0wZuMz42J93ml8o6c',
    appId: '1:989432751749:web:6bbb2ea2a1c7451bd4abec',
    messagingSenderId: '989432751749',
    projectId: 'the-chatapp-60d51',
    authDomain: 'the-chatapp-60d51.firebaseapp.com',
    storageBucket: 'the-chatapp-60d51.appspot.com',
    measurementId: 'G-46ZHFPZBJX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDMxbgyKRU2MJdNP79ddX4eQPx2hKCI66I',
    appId: '1:989432751749:android:c2cd2910b7dbe062d4abec',
    messagingSenderId: '989432751749',
    projectId: 'the-chatapp-60d51',
    storageBucket: 'the-chatapp-60d51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAcGZx4P2UOdUYzgJppn9otKuXfIWhIlCw',
    appId: '1:989432751749:ios:e9c341e47cf82ae1d4abec',
    messagingSenderId: '989432751749',
    projectId: 'the-chatapp-60d51',
    storageBucket: 'the-chatapp-60d51.appspot.com',
    iosBundleId: 'com.example.diabetes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAcGZx4P2UOdUYzgJppn9otKuXfIWhIlCw',
    appId: '1:989432751749:ios:9d49cc33087887d6d4abec',
    messagingSenderId: '989432751749',
    projectId: 'the-chatapp-60d51',
    storageBucket: 'the-chatapp-60d51.appspot.com',
    iosBundleId: 'com.example.diabetes.RunnerTests',
  );
}
