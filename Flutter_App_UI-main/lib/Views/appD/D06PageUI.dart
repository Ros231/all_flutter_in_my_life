import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D07PageUI.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                            "Create new password",
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
                            '''Your new password must be unique from those\npreviously used.''',
                            style: TextStyle(
                              color: Color(0xff000000).withAlpha(95),
                              fontSize: 15.5,
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
                          hintText: "New password",
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
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Confirm password",
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => (SuccessChange())));
                          },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1E232C),
                                fixedSize: Size(MediaQuery.of(context).size.width ,MediaQuery.of(context).size.height / 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ), child: 
                            Text(
                              "Reset Password",  
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