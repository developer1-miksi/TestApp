import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA9eD1nzAi8ZF2knJgzBNh1SzLy8eO8P5g",
            authDomain: "test-app-main-lrq4rq.firebaseapp.com",
            projectId: "test-app-main-lrq4rq",
            storageBucket: "test-app-main-lrq4rq.appspot.com",
            messagingSenderId: "341350524345",
            appId: "1:341350524345:web:073092eec17aec6b4d8268"));
  } else {
    await Firebase.initializeApp();
  }
}
