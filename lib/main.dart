import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCy_w2_cR95Fw087eN-jmGOQ4rYRYM0A8A",
        authDomain: "pofelapp-420.firebaseapp.com",
        projectId: "pofelapp-420",
        storageBucket: "pofelapp-420.appspot.com",
        messagingSenderId: "64901511903",
        appId: "1:64901511903:web:bbe104720d877ff495c76a",
        measurementId: "G-8H64HM68WC"),
  );

  String myurl = Uri.base.toString();
  String invite = Uri.base.queryParameters["invite"] ?? "";
  String page = Uri.base.queryParameters["page"] ?? "";
  runApp(PofelWebApp(link: myurl, invite: invite, page: page));
}
