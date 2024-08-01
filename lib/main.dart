import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterdesign/app.dart';

void main() {
  runApp(const MyApp());
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: '100 day', home: App());
  }
}
