import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appC/%E0%B8%BAC02PageUI.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupC extends StatefulWidget {
  const SignupC({super.key});

  @override
  State<SignupC> createState() => _SignupCState();
}

class _SignupCState extends State<SignupC> {

bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [               
                Padding(
                  padding: const EdgeInsets.only(top: 40, right: 40), 
                    child: Image.asset(
                      "assets/icons/H_logo2.png",
                      height: 25,
                      width: 25,
                    ),
                  ),
              ],
            ),

              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text(
                  "Create your account",
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
                              "Name",
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
                
                          hintText: "ex: jon smith",
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
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(                       
                          children: [
                            Text(
                              "Confirm Password",  
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

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: ischeck, onChanged: (bool? value) {
                                setState(() {
                                  ischeck = value!;
                                });
                          }, 
                            checkColor: Color(0xff00B140), 
                            activeColor: Colors.transparent, 
                            
                            side: BorderSide(
                              color: Color(0xff00B140),
                              width: 1,
                            ),
                          ),

                          Text(
                            "I understood the"
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              "terms & policy",
                              style: TextStyle(
                                color: Color(0xff00B140),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
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
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "or sign up with",
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
                              "Have an account?",
                              style: TextStyle(
                                color: Color(0xff888888),
                              ),
                            ),
                        
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (SigninC()))),
                                child: Text(
                                  "SIGN IN",
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