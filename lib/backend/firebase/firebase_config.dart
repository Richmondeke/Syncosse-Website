import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA9Wea5r3SaROPC6LNOJpUbHkRuDY64uRk",
            authDomain: "responsive-c-r-m-app-de-qznx0o.firebaseapp.com",
            projectId: "responsive-c-r-m-app-de-qznx0o",
            storageBucket: "responsive-c-r-m-app-de-qznx0o.firebasestorage.app",
            messagingSenderId: "855353575547",
            appId: "1:855353575547:web:116be0aaeb53107bddbade"));
  } else {
    await Firebase.initializeApp();
  }
}
