import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Expanded(
                flex: 1,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 8),
                      child: Image.network(
                          "https://firebasestorage.googleapis.com/v0/b/pofelapp-420.appspot.com/o/logos%2F143916375_775527080066698_909625513750134267_n.jpg?alt=media&token=6945f061-882b-4046-b336-44789ebfeba5")),
                ),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: const [
                        Text(
                          "Šimandl kocourek",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(flex: 2, child: Container()),
            ]),
      ),
    );
  }
}
