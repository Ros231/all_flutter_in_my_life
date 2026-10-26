import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D02PageUI.dart';

class SuccessChange extends StatefulWidget {
  const SuccessChange({super.key});

  @override
  State<SuccessChange> createState() => _SuccessChangeState();
}

class _SuccessChangeState extends State<SuccessChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/Successmark.png",
              ),
          
              Padding(
                padding: const EdgeInsets.only(top: 30 ,bottom: 10),
                child: Text(
                  "Password Changed!",
          
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
          
              Text(
                "Your password has been changed \nsuccessfully.",
                textAlign: TextAlign.center,
              ),
          
                 Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => (LoginD())));
                            },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff1E232C),
                                  fixedSize: Size(MediaQuery.of(context).size.width ,MediaQuery.of(context).size.height / 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ), child: 
                              Text(
                                "back to Login",  
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