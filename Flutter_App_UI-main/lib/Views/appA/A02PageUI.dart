// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appA/A01PageUI.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninA extends StatefulWidget {
  const SigninA({super.key});

  @override
  State<SigninA> createState() => _SigninAState();
}

class _SigninAState extends State<SigninA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          "assets/icons/Status_Bar.png",
          alignment: Alignment.centerLeft,
        ),
        
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            
            children: [
              Text(
                "Welcome Back",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
              '''Consequat dolore occaecat duis cupidatat velit et. Duis ad consectetur amet commodo sit aliqua ex cillum. 
                Enim anim reprehenderit exercitation .''',
                
                textAlign: TextAlign.center,
                ),
              ),

              SizedBox(
                height: 80,
              ),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                    
                  ),

                  hintText: "Username, Email & Phone Number",  

                  filled: true,
                  fillColor: Color(0xff84a59d),

                  hintStyle: TextStyle(
                    color: Color(0xfff7ede2)
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

                  filled: true,
                  fillColor: Color(0xff84a59d),

                  hintStyle: TextStyle(
                    color: Color(0xfff7ede2)),
                  )
                ),

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                    ),
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => (Appa())));
                    }, child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 24
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xfff5cac3),
                      fixedSize: Size(500, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                      height: 5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xffffffff),
                            Color(0xfff5cac3),
                          ]
                        )
                      ),
                    ),
                    ),

                    Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "Or Sign up With",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),  
                    ),

                    Expanded(
                      child: Container(
                      height: 5,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff84a59d),
                            Color(0xffffffff),
                          ]
                        )
                      ),
                    ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff7ede2)
                        ),
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.google,
                            size: 30,
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff7ede2)
                        ),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebook,
                            color: Color(0xff0085FF),
                            size: 30,
                          ),
                          onPressed: (){},
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfff7ede2)
                        ),
                        child: IconButton(
                          icon: Icon(
                            FontAwesomeIcons.apple,
                            size: 30,
                          ),
                          onPressed: (){},
                        ),
                      ),
                    )                  
                  ],
                )
            ],
          ),
        )
      ),
    );
  }
}