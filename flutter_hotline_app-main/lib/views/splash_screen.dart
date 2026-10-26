import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/views/home.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    },
  );
  super.initState();
}
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001D3D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/hotline.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'THAI HOTLINE APP',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFC300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}