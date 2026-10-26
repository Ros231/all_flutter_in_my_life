import 'package:flutter/material.dart';
import 'package:flutter_log_app/views/show_all.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => ShowAll()
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffc1121f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/food_icon.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10
            ),
            Text(
              'LOG MEAL',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            Text(
              "🍟🍔🍕",

              style: TextStyle(
                fontSize: 30,),
            ),
            SizedBox(
              height: 50
            ),
            CircularProgressIndicator(
              color: Colors.white
            )
          ],
      )),
    );
  }
}