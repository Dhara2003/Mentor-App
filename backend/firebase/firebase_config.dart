import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCpRehjn4vcJFxY1ONg31oHD_5_SdYMjjY",
            authDomain: "mentorship-trial.firebaseapp.com",
            projectId: "mentorship-trial",
            storageBucket: "mentorship-trial.appspot.com",
            messagingSenderId: "204413088361",
            appId: "1:204413088361:web:c9a7b1bc52b5f013ef28f8",
            measurementId: "G-2TK9Y5H7WR"));
  } else {
    await Firebase.initializeApp();
  }
}
