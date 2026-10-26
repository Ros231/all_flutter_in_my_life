// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_test/views/sign_in_ui.dart';
import 'package:flutter_application_test/views/sign_up_ui.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8000),
              child: Image.asset(
                "assets/img/dew.jpg",
                width: 250.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Dew เบอร์ 5",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "คนดีฃองแผ่นดิน ทำงานเก่ง รับใช้มวลชน",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 50  ,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => SignIn(),
                      )
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                ),
                
                SizedBox(
                  width: 20.0,
                ),
                
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => SignUp()
                        ),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(120, 50),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15)
                    ),
                  ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
