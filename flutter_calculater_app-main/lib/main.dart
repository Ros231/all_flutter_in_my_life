import 'package:flutter/material.dart';
import 'package:flutter_calculater_app/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(
    Fluttercalculaterapp()
  );
}

class Fluttercalculaterapp extends StatefulWidget {
  const Fluttercalculaterapp({super.key});

  @override
  State<Fluttercalculaterapp> createState() => _FluttercalculaterappState();
}

class _FluttercalculaterappState extends State<Fluttercalculaterapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}