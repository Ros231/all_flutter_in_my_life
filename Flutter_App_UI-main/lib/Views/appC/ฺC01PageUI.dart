
import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appC/%E0%B8%BAC02PageUI.dart';

class Appc extends StatefulWidget {
  const Appc({super.key});

  @override
  State<Appc> createState() => _AppcState();
}

class _AppcState extends State<Appc> {
  @override

  void initState() {
    Future.delayed(
      Duration(seconds:3),(){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(builder: (context) => SigninC()));
    }
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/imgs/BackgroundC.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset(
                  "assets/icons/H_logo.png",               
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                      "HOPE FOR",
                      
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 40,
                        height: 0.8
                      ),
                      ),
                  
                      Text(
                        "HUMANITY",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                        ),    
                      )
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 200),
                child: Text(
                  "Welcome to \n hope for humanity",
                
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff005014),
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )

            ],
          ),
      ),
      ),
    );
  }
}