// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appB/%E0%B8%BAB03PageUI.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_B extends StatefulWidget {
  const Login_B({super.key});

  @override
  State<Login_B> createState() => _Login_BState();
}

class _Login_BState extends State<Login_B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
            CustomPaint(
            size: Size.infinite, 
            painter: BackgroundPainter(),
          ),
          Column(
          children: [

                SizedBox(
                  height: 110,
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Login here",
                        style: TextStyle(
                          color: Color(0xff1F41BB),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          "Welcome back you've \n been missed !",
                          
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
           
              SizedBox(
                height: 80,
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
               child: Column(children: [
               TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                    ),
                    
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),

                    hintText: "Email",  
                    
                    filled: true,
                    fillColor: Color(0xffF1F4FF),
              
                    hintStyle: TextStyle(
                      color: Color(0xff626262)
                    ),
                    ),
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
              
                  TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                      
                    ),
              
                    hintText: "Password",
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              
                    filled: true,
                    fillColor: Color(0xffF1F4FF),
              
                    hintStyle: TextStyle(
                      color: Color(0xff626262)),
                    )
                  ),
                  ]), 
                ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot your Password?",
                  style: TextStyle(
                    color: Color(0xff1F41BB),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          ElevatedButton(
            onPressed: (){}, child: Text(
            "Sign In",
            style: TextStyle(
              color: Color(0xffffffff),
              fontSize:20, 
            ),
          ),

            style: ElevatedButton.styleFrom(
              
              backgroundColor: Color(0xff1F41BB),
              fixedSize: Size(357, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),

          SizedBox(
            height: 30,
          ),

          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => (SignupB())));
            },
            child: Text(
              "Create new account",
            
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 50,
          ),

          Text(
            "Or continue with",

            style: TextStyle(
              color: Color(0xff1F41BB),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: Color(0xffECECEC),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.google
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: Color(0xffECECEC),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebook
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 80,
                    height: 50,
                    color: Color(0xffECECEC),
                    child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.apple
                      ),
                      onPressed: (){},
                    ),
                  ),
                ),
              )
            ],
          )
        ],
        )
      ]
    ), 
  );
}
}

class BackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.withAlpha(15) // สีจางๆ ตามแบบ
      ..style = PaintingStyle.fill;

    // 1. วาดวงกลมด้านบน (ให้รัศมีเป็น 40% ของความกว้างจอ)
    double radius = size.width * 0.5;
    canvas.drawCircle(
      Offset(size.width * 0.7, size.height * 0.1), // ตำแหน่ง X, Y (70%, 10%)
      radius,
      paint,
    );

    // 2. วาดเส้นโครงสร้างด้านล่าง (ใช้ Path)
    final linePaint = Paint()
      ..color = Colors.blue.withAlpha(20)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    Path path = Path();
    path.moveTo(0, size.height * 0.7); // เริ่มต้นที่ฝั่งซ้าย
    path.lineTo(size.width * 0.4, size.height * 0.75); // ลากไปจุดตัด
    path.lineTo(size.width * 0.25, size.height); // ลากลงล่าง
    
    canvas.drawPath(path, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
