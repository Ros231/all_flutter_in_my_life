import 'package:flutter/material.dart';
import 'package:flutter_calculater_app/views/home.dart';

// class override แรกเอาไว้รับค่าส่งค่าใน หน้าต่างๆ
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override

void initState() {
  // คำสังให้น่วงเวลา 3 วิแล้วไปหน้า home แบบย้อนไม่ได้
  // ใช้ future เพื่อน่วงเวลา
  Future.delayed(
      Duration(seconds: 3),

      (){
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => Home(),
        ),
      );
    },
  );
    super.initState();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF283618),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/calculator.png",
              width: MediaQuery.of(context).size.width * 0.25,
              height: MediaQuery.of(context).size.width * 0.25,
              fit: BoxFit.cover,
            
            ),

          SizedBox(
            height: 60,
          ),

            Text(
              "body health calculator",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: Color(0xfffefae0),
                ),
              ),

          SizedBox(
            height: 60,
          ),

            CircularProgressIndicator(
              color: Color(0xffbc6c25),
            )

          ],
        ),
      ),
    );
  }
}