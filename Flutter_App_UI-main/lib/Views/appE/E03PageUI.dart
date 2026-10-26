// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appE/E01PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appE/E02PageUI.dart';

class RegisterE extends StatefulWidget {
  const RegisterE({super.key});

  @override
  State<RegisterE> createState() => _RegisterEState();
}

class _RegisterEState extends State<RegisterE> {

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Create your new account",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),                       
                      ),
                      
                      hintText: "Name",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8B8B8B),
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),                       
                      ),                     
                      hintText: "E-mail",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8B8B8B),
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),                       
                      ),
                      
                      hintText: "Phone",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8B8B8B),
                      )
                    ),
                  ),
                ),

                 Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),                       
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Color(0xff8B8B8B),
                      ),

                      suffixIcon: IconButton(
                        icon: Icon(isEnable ? Icons.visibility : Icons.visibility_off,
                        color: Color(0xff8B8B8B),
                      ),
                      onPressed: () {
                        setState(() {
                          isEnable = !isEnable;
                        });
                      },
                    ),
                  ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                          "By signing up you agree to our",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff000000),
                          ),
                        ),
                  
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                            "Terms & Conditions",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffF79515),
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xffF79515),

                              
                            ),
                        ),
                      ),                     
                    ],
                  ),
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                            "and",
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff000000),             
                            ),
                        ),
                      ),
                     Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                                "Privacy Policy",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffF79515),
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xffF79515),
                     
                                  
                                ),
                            ),
                          ),
                   ],
                 ),

              Padding(
              padding: const EdgeInsets.only(top: 25),
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
                    MaterialPageRoute(builder: (context) => RegisterE()),
                  );
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
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
               padding: const EdgeInsets.only(top: 30),
               child: Row(
                    children: [
                      Expanded(
                        child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xffFFC52A).withAlpha(31),
                              Color(0xffF79515),
                            ]
                          )
                        ),
                      ),
                      ),
               
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          "OR",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        ),  
                      ),
               
                      Expanded(
                        child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xffF79515),
                              Color(0xffFFC52A).withAlpha(31),
                            ]
                          )
                        ),
                      ),
                      ),
                    ],
                  ),
             ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(360),
                                  ),
                                  width: 80,
                                  height: 80,
                                   child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      "assets/icons/Google.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                  )
                                ),
                              ),
                            ),
          
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 80,
                                  height: 80,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      "assets/icons/Facebook.png",
                                      height: 50,
                                      width: 50,
                                    ),
                                  )
                                ),
                            ),
          
                           
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: 80,
                                  height: 80,
                                   child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      "assets/icons/apple_icon.png",
                                      height: 50,
                                      width: 10,
                                  ),
                                ),
                              )
                            )
                          ],
                        ),

                         Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                  "Already have an Account?",
                                  style: TextStyle(
                                    color: Color(0xff888888),
                                  ),
                              ),
                          
                            Padding(
                            padding: const EdgeInsets.only(left: 5),
                              child: InkWell(
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (LoginE()))),
                                  child: Text(
                                      "Login",
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