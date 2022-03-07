import 'package:flutter/material.dart';
import 'package:seltzer_revisited/dash/dash_home.dart';
import '/dash/locator.dart';

void main() {
  SetUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashHome(),
    );
  }
}
