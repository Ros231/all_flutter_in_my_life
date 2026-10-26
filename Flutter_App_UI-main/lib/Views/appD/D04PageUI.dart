import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D02PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appD/D05PageUI.dart';

class ForgotPasswordD extends StatefulWidget {
  const ForgotPasswordD({super.key});

  @override
  State<ForgotPasswordD> createState() => _ForgotPasswordDState();
}

class _ForgotPasswordDState extends State<ForgotPasswordD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
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
                          padding: const EdgeInsets.only(top: 30),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            )
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                        Text(
                            '''Don't worry! It occurs. Please enter the email \naddress linked with your account.''',
                            style: TextStyle(
                              color: Color(0xff000000).withAlpha(95),
                              fontSize: 16,
                            )
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                              fontSize: 16,
                          ),

                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          
                          filled: true,
                          fillColor: Color(0xffF5F5F5), // Add padding to the text field)
                        ),
                      ),
                    ),

                    Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => (OTPVerificationD())));
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1E232C),
                                fixedSize: Size(MediaQuery.of(context).size.width ,MediaQuery.of(context).size.height / 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), child: 
                            Text(
                              "Send Code",  
                              style: TextStyle(
                                color: Color(0xffffffff),
                              ),
                            ),
                            ),
                        ),

                        
                        Padding(
                          padding: const EdgeInsets.only(top: 450),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(
                                  "Remember Password?",
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                  ),
                              ),
                          
                            Padding(
                            padding: const EdgeInsets.only(left: 5),
                              child: InkWell(
                                 onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => (LoginD()))),
                                  child: Text(
                                      "Login",
                                  style: TextStyle(
                                  color: Color(0xff35C2C1),
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}