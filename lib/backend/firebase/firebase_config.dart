import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBlYSgyf2m_BTRyjLNyyfA7uOz28eMzfbc",
            authDomain: "toximetro-5d49a.firebaseapp.com",
            projectId: "toximetro-5d49a",
            storageBucket: "toximetro-5d49a.firebasestorage.app",
            messagingSenderId: "448790909358",
            appId: "1:448790909358:web:36d9b2d59522447890f83f",
            measurementId: "G-3BZRKNTP3N"));
  } else {
    await Firebase.initializeApp();
  }
}
