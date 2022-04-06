import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simandl/src/ui/pages/main_page.dart';

class PofelWebApp extends StatelessWidget {
  const PofelWebApp({
    Key? key,
    required this.link,
    required this.invite,
    required this.page,
  }) : super(key: key);
  final String link;
  final String invite;
  final String page;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            canvasColor: Colors.amber,
            textTheme: GoogleFonts.poppinsTextTheme()),
        home: MainPage());
  }
}
