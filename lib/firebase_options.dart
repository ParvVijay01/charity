// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDFc2dQkGIdeKP1UzTNTa6qdHeonOeazHU',
    appId: '1:1013728624127:web:be643296886ea103743bca',
    messagingSenderId: '1013728624127',
    projectId: 'charity-f1355',
    authDomain: 'charity-f1355.firebaseapp.com',
    storageBucket: 'charity-f1355.firebasestorage.app',
    measurementId: 'G-NEN22DZNH3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGA_Zdh6w8jizvNb0gx1Zw2N3nlTdlwbY',
    appId: '1:1013728624127:android:9f07c158b4e5591d743bca',
    messagingSenderId: '1013728624127',
    projectId: 'charity-f1355',
    storageBucket: 'charity-f1355.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-lEu7k7TxFtzeK4hgmPOfQM7kEcI3j1A',
    appId: '1:1013728624127:ios:cb2b0286de26b781743bca',
    messagingSenderId: '1013728624127',
    projectId: 'charity-f1355',
    storageBucket: 'charity-f1355.firebasestorage.app',
    iosClientId: '1013728624127-66jir0kefskf46u0nqkjm5u8cujd75al.apps.googleusercontent.com',
    iosBundleId: 'com.example.charity',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-lEu7k7TxFtzeK4hgmPOfQM7kEcI3j1A',
    appId: '1:1013728624127:ios:c2942a5ecd3e11d6743bca',
    messagingSenderId: '1013728624127',
    projectId: 'charity-f1355',
    storageBucket: 'charity-f1355.firebasestorage.app',
    iosClientId: '1013728624127-4vah3tm8m2db9bk6k3ius6828i325dfm.apps.googleusercontent.com',
    iosBundleId: 'com.parv.charity',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDFc2dQkGIdeKP1UzTNTa6qdHeonOeazHU',
    appId: '1:1013728624127:web:b134f71eaad60364743bca',
    messagingSenderId: '1013728624127',
    projectId: 'charity-f1355',
    authDomain: 'charity-f1355.firebaseapp.com',
    storageBucket: 'charity-f1355.firebasestorage.app',
    measurementId: 'G-BL1X7VBCE8',
  );
}