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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDr2r98QhE_P0eFqEn_-EaWjMsLUGsraEQ',
    appId: '1:659387466364:web:76d56cd77c352c55133ff9',
    messagingSenderId: '659387466364',
    projectId: 'my-notes-a4afc',
    authDomain: 'my-notes-a4afc.firebaseapp.com',
    storageBucket: 'my-notes-a4afc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCHVtZWhd_DsUPzMiU7GPdxyNEvT9DJ8Gs',
    appId: '1:659387466364:android:f5c57c452df275dd133ff9',
    messagingSenderId: '659387466364',
    projectId: 'my-notes-a4afc',
    storageBucket: 'my-notes-a4afc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAXYuG_0H1ZvOG0QTuYq6bFqWZ3Djv5scM',
    appId: '1:659387466364:ios:294882ea5bf7f324133ff9',
    messagingSenderId: '659387466364',
    projectId: 'my-notes-a4afc',
    storageBucket: 'my-notes-a4afc.appspot.com',
    iosClientId: '659387466364-hb327cpcqborfum22kqcstl4jhcose1l.apps.googleusercontent.com',
    iosBundleId: 'com.example.myNotes',
  );
}