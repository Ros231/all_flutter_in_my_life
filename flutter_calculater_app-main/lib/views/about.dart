import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Body health Calculater",
          
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/icons/calculator.png",
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
          
                SizedBox(
                  height: 20,
                ),
          
                Text(
                  "คำนวนหาค่ามวลกายใช้ BMI"
                ),
          
                SizedBox(
                  height: 10,
                ),
          
                Text(
                  "คำนวนหาปริมาณแคลอรีที่ร่างกายใฃ้ในแต่ละวันใช้ BMR"
                ),
          
          
              ],
            )
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.network(
                  "https://tse3.mm.bing.net/th/id/OIP.wGYfc6KBrtIcm09wdoLq9AHaHa?cb=defcachec2&rs=1&pid=ImgDetMain&o=7&rm=3",
                
                width: 60,
                height: 60,
                ),
                Text(
                  "developed by rhodes island ",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[600]
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}