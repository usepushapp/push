import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB70FleXOzY-4aHiCAfnJ5_VMJLr6lhXDA",
            authDomain: "push-app-qvknd4.firebaseapp.com",
            projectId: "push-app-qvknd4",
            storageBucket: "push-app-qvknd4.appspot.com",
            messagingSenderId: "1096762817884",
            appId: "1:1096762817884:web:5c510fc327591954bf9599"));
  } else {
    await Firebase.initializeApp();
  }
}
