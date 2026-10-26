import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ฺB02PageUI.dart';

class SignupB extends StatefulWidget {
  const SignupB({super.key});

  @override
  State<SignupB> createState() => _SignupBState();
}

class _SignupBState extends State<SignupB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
            children: [
                SizedBox(
                  height: 110,
                ),
                Text(
                    "Create Account",
                    style: TextStyle(
                      color: Color(0xff1F41BB),
                      fontSize: 40,
                      fontWeight: FontWeight.bold
                    ),
                ),

                Text(
                    "Create an account so you explore all the \n existing jobs",

                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
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
                    height: 20,
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

                  SizedBox(
                    height: 20,
                  ),

                  TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
              
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                      
                    ),
              
                    hintText: "ConfirmPassword",
                    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              
                    filled: true,
                    fillColor: Color(0xffF1F4FF),
              
                    hintStyle: TextStyle(
                      color: Color(0xff626262)),
                    )
                  ),

    
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: ElevatedButton(
                          onPressed: (){},
                        
                          style: ElevatedButton.styleFrom(
                          
                          backgroundColor: Color(0xff1F41BB),
                          fixedSize: Size(357, 60),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                          )
                          ), child: Text(
                          "Sign up",
                          style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize:20,
                           
                          ),
                                            ),
                                            ),
                      ),

                     SizedBox(
                        height: 30,
                    ),

                    InkWell(
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => (Login_B())));
                        },
                        child: Text(
                        "Already have an account",
                        
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
                                color: Color(0xffe9ecef),
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
                                color: Color(0xffe9ecef),
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
                                color: Color(0xffe9ecef),
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
                  ]), 
                ),
                ),
            ],
        )
      ),
    );
  }
}