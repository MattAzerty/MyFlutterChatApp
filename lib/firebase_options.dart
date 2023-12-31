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
    apiKey: 'AIzaSyA_CQkrbxmOkTYeCKqezF2bwcPkIzzVUkE',
    appId: '1:786661452191:web:8e5eddd7b185d0ddb175aa',
    messagingSenderId: '786661452191',
    projectId: 'myflutterchatapp-a17ef',
    authDomain: 'myflutterchatapp-a17ef.firebaseapp.com',
    storageBucket: 'myflutterchatapp-a17ef.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNFf0ZRRBs8pJC9gcwG9pXBHxQy-Sht7o',
    appId: '1:786661452191:android:beb51499f37ab60eb175aa',
    messagingSenderId: '786661452191',
    projectId: 'myflutterchatapp-a17ef',
    storageBucket: 'myflutterchatapp-a17ef.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0D7omBZnvnPZsfBaqNcYxtv98gwOycWs',
    appId: '1:786661452191:ios:73c9fb4a70b7c5a4b175aa',
    messagingSenderId: '786661452191',
    projectId: 'myflutterchatapp-a17ef',
    storageBucket: 'myflutterchatapp-a17ef.appspot.com',
    iosBundleId: 'com.mattazerty.myFlutterChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0D7omBZnvnPZsfBaqNcYxtv98gwOycWs',
    appId: '1:786661452191:ios:f1aad618dd94420bb175aa',
    messagingSenderId: '786661452191',
    projectId: 'myflutterchatapp-a17ef',
    storageBucket: 'myflutterchatapp-a17ef.appspot.com',
    iosBundleId: 'com.mattazerty.myFlutterChatApp.RunnerTests',
  );
}
