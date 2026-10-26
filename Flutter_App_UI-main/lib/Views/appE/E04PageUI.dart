// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appE/E03PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appE/E05PageUI.dart';

class ForgotPasswordE extends StatefulWidget {
  const ForgotPasswordE({super.key});

  @override
  State<ForgotPasswordE> createState() => _ForgotPasswordEState();
}

class _ForgotPasswordEState extends State<ForgotPasswordE> {

  bool isEnable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/BGLoginE.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter
          )
        ),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                       decoration: BoxDecoration(
                        shape: BoxShape.circle,
                         color: Color(0xffF8EEC0),
                         border: Border.all(
                          color: Colors.transparent,
                         )
                       ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 4, top: 4),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

                Padding(
                  padding: const EdgeInsets.only(top: 350),
                  child: Row(
                    children: [
                      Text(
                        "Forgot your password?",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        ),
                      ),                    
                    ],
                  ),             
                ),

                Row(
                    children: [
                      Text(
                        "Enter email address",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),                    
                    ],
                  ),             

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),                       
                      ),
                    ),
                  ),
                ),

                 Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFD700),
                      Color(0xffFFA500),
                    ],
                    begin: Alignment.centerRight,
                    end: Alignment.bottomCenter
                  )
                ),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => OTPVerificationE()),
                  );
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Send code",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                ),
              ),
            ),

                        Padding(
                          padding: const EdgeInsets.only(top:220),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                  "Don't have an Account?",
                                  style: TextStyle(
                                    color: Color(0xff888888),
                                  ),
                              ),
                          
                            Padding(
                            padding: const EdgeInsets.only(left: 5),
                              child: InkWell(
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (RegisterE()))),
                                  child: Text(
                                      "Create Account",
                                  style: TextStyle(
                                  color: Color(0xffF79515),
                                ),
                              ),
                            ),
                          )
                          ],
                          ),
                      ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}