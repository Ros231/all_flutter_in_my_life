import 'package:flutter/material.dart';
import 'package:flutter_application_test/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    //class เพื่อเรียกใช้ widget หลักชองแอป
    Test_App(),
  );
}

class Test_App extends StatefulWidget {
  const Test_App({super.key});

  @override
  State<Test_App> createState() => _Test_AppState();
}

class _Test_AppState extends State<Test_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}

