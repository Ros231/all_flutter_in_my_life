// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appE/E02PageUI.dart';
import 'package:google_fonts/google_fonts.dart';

class Appe extends StatefulWidget {
  const Appe({super.key});

  @override
  State<Appe> createState() => _AppeState();
}

class _AppeState extends State<Appe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/imgs/BackgroundE.png",
              width: 320,
              height: 460,
            ),

            Container(
              width: 100,
              height: 8,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withAlpha(98),
                    blurRadius: 20,
                    offset: Offset(0,3)
                )
                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "BERRY JUICE",
                style: GoogleFonts.abrilFatface(
                  textStyle: TextStyle(
                    fontSize: 30,
                  ),
                  shadows: [
                    Shadow(
                      color: Color(0xffFAA91E),
                      blurRadius: 1,
                      offset: Offset(0,3)
                    ),
              
                  ]
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'A "Moments of healthy sip\nThe best vatamin for your health" ',
              
                textAlign: TextAlign.center,
              
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Container(
                width: 280,
                height: 50,
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
                    MaterialPageRoute(builder: (context) => LoginE()),
                  );
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Explore Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),

                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 30,
                      )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent
                ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}