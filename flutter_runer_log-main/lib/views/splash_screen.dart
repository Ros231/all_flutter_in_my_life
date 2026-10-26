import 'package:flutter/material.dart';
import 'package:flutter_log_app/views/showall.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Showall(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xff3c6e71),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(height: 200),


            Image.asset(
              "assets/icons/Run-icons.png",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "RUN TRACKER",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            ),

            SizedBox(height: 50,),

            CircularProgressIndicator(
              color: Colors.white,
            ),

            SizedBox(height: 200,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [

              Icon(
                Icons.copyright,
                  color: Colors.black.withAlpha(100)
                  ),

                Text(
                  "2026 RUN TRACKER",

                  style: TextStyle(
                    color: Colors.black.withAlpha(90)
                  ),
                  ),  
             ],
            ),

            Text(
                    "Created by Phanuwat Sho Torsrisakul",

                    style: TextStyle(
                      color: Colors.black.withAlpha(90)
                    ),
                  )
          ],
        ),
      ),
    );
  }
}