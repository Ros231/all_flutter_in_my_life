import 'package:flutter/material.dart';
import 'package:flutter_application_cake_seller/views/cake_shop.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  
  Future.delayed(Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => CakeShop(),
    ));
  });
  super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg_welcome.png',
              ),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
          child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              'Cake Seller',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff9d8189)
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Find your favorite cake here",
              style: TextStyle(fontSize: 20,
                color: Color(0xff9d8189)
              ),
            )
          ],
        ) 
        ),
      ),
    );
  }
}