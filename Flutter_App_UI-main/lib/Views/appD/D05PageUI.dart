import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D06PageUI.dart';

class OTPVerificationD extends StatefulWidget {
  const OTPVerificationD({super.key});

  @override
  State<OTPVerificationD> createState() => _OTPVerificationDState();
}

class _OTPVerificationDState extends State<OTPVerificationD> {
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
                            "OPT Verification",
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
                            '''Enter the verification code we just sent on your\nemail address.''',
                            style: TextStyle(
                              color: Color(0xff000000).withAlpha(95),
                              fontSize: 15.5  ,
                            )
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 80,
                            height: 70,
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
                                fillColor: Color(0xffF5F5F5), // Add padding to the text field)
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 80,
                            height: 70,
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
                                fillColor: Color(0xffF5F5F5), // Add padding to the text field)
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 80,
                            height: 70,
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
                                fillColor: Color(0xffF5F5F5), // Add padding to the text field)
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 80,
                            height: 70,
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
                                fillColor: Color(0xffF5F5F5), // Add padding to the text field)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CreateNewPassword()));
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1E232C),
                                fixedSize: Size(MediaQuery.of(context).size.width ,MediaQuery.of(context).size.height / 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), child: 
                            Text(
                              "Verify",  
                              style: TextStyle(
                                color: Color(0xffffffff),
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