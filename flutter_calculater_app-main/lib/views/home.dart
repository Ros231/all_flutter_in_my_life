import 'package:flutter/material.dart';
import 'package:flutter_calculater_app/views/about.dart';
import 'package:flutter_calculater_app/views/bmi.dart';
import 'package:flutter_calculater_app/views/bmr.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// ตั้งตัวแปร ควบคุมตัวแปร item

 int selectstatus = 1;

 // ตัวแปรเก็บ widget หน้าจอที่จะมาแสดงที่ body ของ scaffold
List<Widget> showBody = [
  Bmi(),
  About(),
  Bmr(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        backgroundColor: Color(0xff283618),
        title: Text(
          "Calculater health App",
          style: TextStyle(
            color: Color(0xfffefae0)
          ),
        ),
        centerTitle: true,
      ),

    bottomNavigationBar: BottomNavigationBar(

      selectedItemColor: Color(0xffdda15e),
      currentIndex: selectstatus,
      onTap: (value) {
        setState(() {
          selectstatus = value;
        });
      },

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "BMI",
        ),

        BottomNavigationBarItem(icon: Icon(Icons.map),
        label: "About"
        ),

        BottomNavigationBarItem(icon: Icon(Icons.heart_broken_sharp),
        label: "BMR"
        ),

        ],
      ),

      body: showBody[selectstatus],
      
    );
  }
}