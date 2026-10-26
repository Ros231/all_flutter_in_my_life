import 'package:flutter/material.dart';
import 'package:flutter_calculater_app/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CarIstraillment_app());
}

class CarIstraillment_app extends StatefulWidget {
  const CarIstraillment_app({super.key});

  @override
  State<CarIstraillment_app> createState() => _CarIstraillment_appState();
}

class _CarIstraillment_appState extends State<CarIstraillment_app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}