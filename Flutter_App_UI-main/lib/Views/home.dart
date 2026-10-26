// ignore_for_file: sort_child_properties_last


import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/Views/appE/E01PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appA/A01PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appB/%E0%B8%BAB01PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appC/%E0%B8%BAC01PageUI.dart';
import 'package:flutter_speed_ui_app/Views/appD/D01PageUI.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff283618),
      body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20),   

        child: Column(
          children: [
            Image.asset(
              'assets/imgs/home_1.png', 
              width: 300, height: 300,
           ),
   
            //App A
            ElevatedButton(onPressed: (){Navigator.push(context, 
            MaterialPageRoute(builder: (context) => (Appa())),
            );
            }, child: Text(
              "Go to A Page",
              style: TextStyle(
                color: Color(0xfffefae0),
                fontSize: 24,

              ),
            ),
          
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0XFFdda15e),
              fixedSize: Size(500, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              )
            ),
            ),
            SizedBox(
              height: 20,
            ),

            //App B
            ElevatedButton(onPressed: (){Navigator.push(context, 
            MaterialPageRoute(builder: (context) => (Appb())),
            );
            }, child: Text(
              "Go to B Page",
              style: TextStyle(
                color: Color(0xfffefae0),
                fontSize: 24,

              ),
            ),
            
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0XFFbc6c25),
              fixedSize: Size(500, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            ),
            SizedBox(
              height: 20,
            ),
            //App C
            ElevatedButton(onPressed: (){Navigator.push(context, 
            MaterialPageRoute(builder: (context) => (Appc())),
            );
            }, child: Text(
              "Go to C Page",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 24,

              ),
            ),
            
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0XFFfefae0),
              fixedSize: Size(500, 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            ),
            SizedBox(
              height: 20,
            ),
            //App D
            ElevatedButton(onPressed: (){Navigator.push(context, 
            MaterialPageRoute(builder: (context) => (Appd())),
            );
            }, child: Text(
              "Go to D Page",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 24,

              ),
            ),
            
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0XFFe9edc9),
              fixedSize: Size(500, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            ),
            SizedBox(
              height: 20,
            ),
            //App E
            ElevatedButton(onPressed: (){Navigator.push(context, 
            MaterialPageRoute(builder: (context) => (Appe())),
            );
            }, child: Text(
              "Go to E Page",
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 24,

              ),
            ),
            
            style: ElevatedButton.styleFrom(
              backgroundColor:Color(0XFFccd5ae),
              fixedSize: Size(500, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            ), 
            SizedBox(
              height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
  }