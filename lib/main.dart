import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_1/mobile.dart';

import 'web.dart';

Future<void> main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.deepOrange,
        textTheme: GoogleFonts?.poppinsTextTheme(),
        iconTheme: const IconThemeData(color: Colors.black38),
      )));
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (size.width < 800) {
      return const Mobile();
    } else if (size.width < 1200) {
      return const Web(isMedium: true);
    }
    return const Web(
      isMedium: false,
    );
  }
}
