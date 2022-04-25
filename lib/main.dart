import 'package:flutter/material.dart';
import 'package:netflix_flutter/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "JaeFlix",
      theme: ThemeData(
          primaryColor: Colors.black,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [Container(), Container(), Container(), Container()],
          ),
          bottomNavigationBar: Bottom(),
        ),
      ),
    );
  }
}
