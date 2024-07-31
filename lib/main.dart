import 'package:flutter/material.dart';
import 'package:flutterdesign/app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '100 day',
      home: App()
    );
  }
}