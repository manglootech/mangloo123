import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfwobL3aVY-B3GpGFIP3NNSXPX6Wk6ztw",
            authDomain: "manglootools.firebaseapp.com",
            projectId: "manglootools",
            storageBucket: "manglootools.appspot.com",
            messagingSenderId: "555830333520",
            appId: "1:555830333520:web:8dbf70d3e092e052288155",
            measurementId: "G-CJSY7TL1TV"));
  } else {
    await Firebase.initializeApp();
  }
}
