import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/views/info.dart';
import 'package:flutter_hotline_app/views/sub_A.dart';
import 'package:flutter_hotline_app/views/sub_B.dart';
import 'package:flutter_hotline_app/views/sub_C.dart';
import 'package:flutter_hotline_app/views/sub_D.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  int selcectedIndex = 0;

  List<Widget> screens = [
    SubA(),
    SubB(),
    SubC(),
    SubD(),
  ];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Color(0xff001D3D),
        title: Text('สวยด่วน THAILAND',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xffFFC300),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.infoCircle),
            color: Color(0xffFFC300),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Info()));
            },
          ),
        ],
        
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff001D3D),
        
        currentIndex: selcectedIndex,
        selectedItemColor: Color(0xffFFC300),
        unselectedItemColor: Colors.white,

        onTap: (value){
          setState(() {
            selcectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,

        items: [  
          BottomNavigationBarItem(
            
            icon: Icon(FontAwesomeIcons.road),
            label: 'การเดินทาง',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ambulance),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.bank),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.city),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      body: screens[selcectedIndex],
    );
  }
}