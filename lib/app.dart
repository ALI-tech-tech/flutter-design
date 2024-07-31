import 'package:flutter/material.dart';
import 'package:flutterdesign/day_1.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  App({super.key});
  final List<Widget> pages = [const Day1()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "App Pages",
            style: GoogleFonts.aBeeZee(),
          ),
        ),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            children: List.generate(
                pages.length,
                (index) => OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pages[index],
                          ));
                    },
                    child: Text(
                      "Day ${index + 1}",
                      style: GoogleFonts.aBeeZee(
                      textStyle:  const TextStyle(fontSize: 30)
                      ),
                    ))),
          ),
        )),
      ),
    );
  }
}