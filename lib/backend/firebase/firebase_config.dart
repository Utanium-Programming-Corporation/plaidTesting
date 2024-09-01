import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkRDAWukPj6jHhaah15Hkh_W5fH9p7Ibw",
            authDomain: "emailmanager-b43f0.firebaseapp.com",
            projectId: "emailmanager-b43f0",
            storageBucket: "emailmanager-b43f0.appspot.com",
            messagingSenderId: "278545472036",
            appId: "1:278545472036:web:324ec0f2a2485080ef16b1"));
  } else {
    await Firebase.initializeApp();
  }
}
