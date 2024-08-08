import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBmTE9x8YCiCX9p-UppqhEsBXDiLejd6Sk",
            authDomain: "plaidtestingred.firebaseapp.com",
            projectId: "plaidtestingred",
            storageBucket: "plaidtestingred.appspot.com",
            messagingSenderId: "356870749890",
            appId: "1:356870749890:web:884b7826d80e065036455b"));
  } else {
    await Firebase.initializeApp();
  }
}
