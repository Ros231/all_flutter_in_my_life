
// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appA/A02PageUI.dart';
class Appa extends StatefulWidget {
  const Appa({super.key});

  @override
  State<Appa> createState() => _AppaState();
}

class _AppaState extends State<Appa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
             Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(  
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          ),
                      child: Container(
                          child: Image.asset(
                            'assets/imgs/home_A_Saly_1.png',
                            width: 372,
                            height: 463,
                          ),

                        color: Color(0xfff5cac3),
                        height: 463,
                        width: 372,
                      ),
                      ),
                    ],
                  )
              ),

              Container(
                child: Column(
                  children: [
                    Text(
                      "Discover Your ",

                      style: TextStyle(
                        color: Color(0xff283618),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Own Dream House ",
                      style: TextStyle(
                        color: Color(0xff283618),
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                '''Consequat esse ea est occaecat minim tempor ad reprehenderit fugiat id velit sit incididunt quis. 
                  Elit eiusmod nostrud Lorem occaecat id aliqua adipisicing. Eiusmod tempor consequat tempor 
                  reprehenderit commodo. Ut veniam qui sunt excepteur dolor aliqua ex enim non.''',
                  
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff283618),
                    fontSize: 13,
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      
                    }, child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff5cac3),
                      fixedSize: Size(197, 65),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                    ),
                    ),

                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => (SigninA())));
                    }, child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xff545151),
                        fontSize: 24,
                      )
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF3F3F3),
                      fixedSize: Size(197, 65),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
            ]
            
          ),
        ),
      );
    }
}