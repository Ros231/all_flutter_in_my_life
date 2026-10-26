import 'package:flutter/material.dart';
import 'package:flutter_application_cake_seller/views/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
    runApp( const CakeSellerApp());
  }

  @override
class CakeSellerApp extends StatefulWidget {
  const CakeSellerApp({super.key});


  State<CakeSellerApp> createState() => _CakeSellerAppState();
}

class _CakeSellerAppState extends State<CakeSellerApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home : SplashScreen(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme
          (
            Theme.of(context).textTheme
        ),
      ),
    );
  }
}