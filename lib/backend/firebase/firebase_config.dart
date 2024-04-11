import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA8InIFqWPnJG09V9eeNNBFV-2EMKPLHow",
            authDomain: "prototipo-projeto-irrig-ersjpr.firebaseapp.com",
            projectId: "prototipo-projeto-irrig-ersjpr",
            storageBucket: "prototipo-projeto-irrig-ersjpr.appspot.com",
            messagingSenderId: "1016342323151",
            appId: "1:1016342323151:web:4322f8a5c1b008f3cdbcba"));
  } else {
    await Firebase.initializeApp();
  }
}
