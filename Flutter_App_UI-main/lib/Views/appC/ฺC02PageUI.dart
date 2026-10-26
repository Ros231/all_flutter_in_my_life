import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appC/%E0%B8%BAC03PageUI.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninC extends StatefulWidget {
  const SigninC({super.key});

  @override
  State<SigninC> createState() => _SigninCState();
}

class _SigninCState extends State<SigninC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150), 
                child: Image.asset(
                  "assets/icons/H_logo2.png",
                  height: 60,
                  width: 60,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  "Sign in to your account",
                  style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Color(0xff6F6F6F),  
                              ),
                            ),
                          ],
                        ),
                      ),
                
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(                          
                            borderSide: BorderSide.none
                          ),
                
                          hintText: "ex: jon.smith@email.com",
                          hintStyle: TextStyle(
                            color: Color(0xff888888).withAlpha(90),
                            fontSize: 16, 
                          ),
                
                          filled: true,
                          fillColor: Color(0xffF5F5F5),
                        ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(                       
                          children: [
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Color(0xff6F6F6F),  
                              ),                           
                            ),
                          ],
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none
                          ),
                
                          hintText: "***********",
                          hintStyle: TextStyle(
                            color: Color(0xff888888).withAlpha(90),
                            fontSize: 16,                              
                          ),
                
                          filled: true,
                          fillColor: Color(0xffF5F5F5),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff00B140),
                              fixedSize: Size(300, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ), child: 
                          Text(
                            "SIGN IN",  
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          ),
                          ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            "or sign in with",
                            style: TextStyle(
                              color: Color(0xff888888),
                            ),
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
                                width: 80,
                                height: 50,
                                color: Color(0xffECECEC),
                                child: InkWell(
                                  onTap: (){},
                                  child: Image.asset(
                                    "assets/icons/google.png",
                                    height: 10,
                                    width: 10,
                                  ),
                                )
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
                                    FontAwesomeIcons.facebookF
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
                                    FontAwesomeIcons.twitter
                                  ),
                                  onPressed: (){},
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Color(0xff888888),
                                ),
                            ),
                        
                          Padding(
                          padding: const EdgeInsets.only(left: 5),
                            child: InkWell(
                               onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (SignupC()))),
                                child: Text(
                                    "SIGN UP",
                                style: TextStyle(
                                color: Color(0xff00B140),
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
              )
          ],
        )
      ),
    );
  }
}