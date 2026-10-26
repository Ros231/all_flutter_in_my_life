import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D02PageUI.dart';

class RegisterD extends StatefulWidget {
  const RegisterD({super.key});

  @override
  State<RegisterD> createState() => _RegisterDState();
}

class _RegisterDState extends State<RegisterD> {

bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(
                          color: Colors.black.withAlpha(50),
                          width: 1
                         )
                       ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 4, top: 4),
                        child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:30),
                      child: Text(
                        " Hello! Register to get \n started",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
          
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(                          
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                  
                            hintText: "Username",
                            hintStyle: TextStyle(
                              color: Color(0xff8391A1),
                              fontSize: 16, 
                            ),
                            
                            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

                            filled: true,
                            fillColor: Color(0xffF5F5F5),
                          ),
                        ),

                         SizedBox(
                          height: 10,
                        ),

                        TextField(
                          
                          decoration: InputDecoration(
                            border: OutlineInputBorder(                          
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                  
                            hintText: "Email",
                            hintStyle: TextStyle(
                              color: Color(0xff8391A1),
                              fontSize: 16, 
                            ),
                            
                            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

                            filled: true,
                            fillColor: Color(0xffF5F5F5),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                  
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Color(0xff8391A1),
                              fontSize: 16,                              
                            ),
                  
                            filled: true,
                            fillColor: Color(0xffF5F5F5),

                            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

                              ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        TextField(
                          obscureText: true,

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),

                            hintText: "Confrim Password",
                            hintStyle: TextStyle(
                              color: Color(0xff8391A1),
                              fontSize: 16,                              
                            ),
                  
                            filled: true,
                            fillColor: Color(0xffF5F5F5),

                            contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

                              ),
                        ),
          
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ElevatedButton(onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1E232C),
                                fixedSize: Size(MediaQuery.of(context).size.width ,MediaQuery.of(context).size.height / 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), child: 
                            Text(
                              "Register",  
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                            ),
                        ),
          
                        Row(    
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.black.withAlpha(50),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                child: Text(
                                  "Or Register with",
                                  style: TextStyle(
                                    color: Color(0xff888888),
                                  ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                height: 1,
                                width: MediaQuery.of(context).size.width / 2.5,
                                color: Colors.black.withAlpha(50),
                              ),
                            )
                          ],
                        ),
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black.withAlpha(50),
                                    )
                                  ),
                                  width: 105,
                                  height: 56,
                                  child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      "assets/icons/facebook_icon.png",
                                      height: 10,
                                      width: 10,
                                    ),
                                  )
                                ),
                            ),
          
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.black.withAlpha(50),
                                    )
                                  ),
                                  width: 105,
                                  height: 56,
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
                                    border: Border.all(
                                      color: Colors.black.withAlpha(50),
                                    )
                                  ),
                                  width: 105,
                                  height: 56,
                                   child: InkWell(
                                    onTap: (){},
                                    child: Image.asset(
                                      "assets/icons/apple_icon.png",
                                      height: 10,
                                      width: 10,
                                  ),
                                ),
                              )
                            )
                          ],
                        ),
          
                        Padding(
                          padding: const EdgeInsets.only(top: 110),
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
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (LoginD()))),
                                  child: Text(
                                      "Login Now",
                                  style: TextStyle(
                                  color: Color(0xff35C2C1),
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
          ),
        )
      ),
    );
  }
}