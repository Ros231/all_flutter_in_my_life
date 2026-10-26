
import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appD/D02PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appD/D03PageUI.dart';

class Appd extends StatefulWidget {
  const Appd({super.key});

  @override
  State<Appd> createState() => _AppdState();
}

class _AppdState extends State<Appd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/imgs/BackgroundD.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                )
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 450),
                      child: Image.asset(
                        "assets/icons/Branding_iconC.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                      child: ElevatedButton(onPressed: 
                      (){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: 
                            (context) => LoginD(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(331,56),
                        backgroundColor: Color(0xff1E232C),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ), 
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Color(0xfffefae0),
                          fontSize: 15,
                        ),
                      ),
                      ),
                    ),
                    
                     OutlinedButton(onPressed: 
                    (){
                      Navigator.push(context, 
                        MaterialPageRoute(builder: 
                          (context) => RegisterD(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(331,56),
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ), 
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 15,
                      ),
                    ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text(
                        "continue as a guest",
                        style: TextStyle(
                          color: Color(0xff35C2C1),
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff35C2C1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}