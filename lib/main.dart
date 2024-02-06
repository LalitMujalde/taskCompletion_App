// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:shoshintech_project/pages/dashboard.dart';

import 'pages/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Muli',
        ),
        home: const DashBoardPage());
  }
}
