
import 'package:flutter/material.dart';
import 'package:flutter_calculater_app/views/Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => carInstallmentCalculater(),
          ),
        );
      },
    );
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001d3d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/splash_image.png'),
            SizedBox(height: 20),

            Text(
              'Car Installment',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'คำนวณค่างวดรถยนต์',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 80),

            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),

            SizedBox(height: 80),
            Text(
              'Created by Phanuwat T.',
              style: TextStyle(
                color: Colors.white.withAlpha(80),
                fontSize: 11,
              ),
            ),

            Text(
              'Version 1.0.0',
              style: TextStyle(
                color: Colors.white.withAlpha(80),
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}