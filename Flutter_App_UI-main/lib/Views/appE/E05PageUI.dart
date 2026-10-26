import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appE/E06PageUI.dart';

class OTPVerificationE extends StatefulWidget {
  const OTPVerificationE({super.key});

  @override
  State<OTPVerificationE> createState() => _OTPVerificationEState();
}

class _OTPVerificationEState extends State<OTPVerificationE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: Text(
                            "OPT Verification",
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            )
                          ),
                        ),

                        SizedBox(
                          width: 48,
                        ),
                ],
              ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                       child: Image.asset(
                         "assets/imgs/OTPE.png",
                         width: 350,
                         height: 350,
                         fit: BoxFit.fill,
                       ),
                    ),

                      Row(
                        children: [
                          Text(
                              "Enter OTP",
                               style: TextStyle(
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                        ],
                      ),

                      Row(
                        children: [
                          Text(
                              "An 4 digit code has been sent to your \nemail",
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 15,
                              ),
                            ),
                        ],
                      ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 70,
                              height: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                  filled: true,
                                  fillColor: Color(0xffE3E3E3), // Add padding to the text field)
                                ),
                              ),
                            ),
                          ),

                           Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 70,
                              height: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                  filled: true,
                                  fillColor: Color(0xffE3E3E3), // Add padding to the text field)
                                ),
                              ),
                            ),
                          ),

                           Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 70,
                              height: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                  filled: true,
                                  fillColor: Color(0xffE3E3E3), // Add padding to the text field)
                                ),
                              ),
                            ),
                          ),

                           Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: SizedBox(
                              width: 70,
                              height: 80,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                maxLength: 1,
                                decoration: InputDecoration(
                                  counterText: "",
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                                  filled: true,
                                  fillColor: Color(0xffE3E3E3), // Add padding to the text field)
                                ),
                              ),
                            ),
                          ), 
                        ],
                      ),
                    ),

                    Row(
                      children: [
                      Text(
                          "You should receive the OTP in ",
                        ),

                      Text(
                      "30 seconds",
                      style: TextStyle(
                        color: Color(0xffED6400),
                      ),
                    ),
                      ],
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
                    MaterialPageRoute(builder: (context) => CreateNewPasswordE()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ), child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}