// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appB/%E0%B8%BAB02PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appB/%E0%B8%BAB03PageUI.dart';
import 'package:google_fonts/google_fonts.dart';

class Appb extends StatefulWidget {
  const Appb({super.key});

  @override
  State<Appb> createState() => _AppbState();
}

class _AppbState extends State<Appb> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
      child: Column(
        children: [
                Image.asset(
                  "assets/imgs/welcomeB.png",
            
                ),

                Text(
                  "Discover Your \n Dream Job here",

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff1F41BB),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  child: Text(
                    "Explore all the existing job roles based on your interest and study major", 
                    textAlign: TextAlign.center,
                    
                  ),
                ),

                 Padding(
                   padding: const EdgeInsets.only(top: 100),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => (Login_B())));
                      }, 
                        child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                   
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 60),
                      backgroundColor: Color(0xff1F41BB),
                      shape: RoundedRectangleBorder(
                          
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                                   ),
                   
                   ElevatedButton(onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => (SignupB())));
                   }, 
                    child: Text(
                      "Register",
                      style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                   
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 60),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ) ,
                                   ),
                                 ],
                               ),
                 ),
          ],
       ),
      )
    );
  }
}
