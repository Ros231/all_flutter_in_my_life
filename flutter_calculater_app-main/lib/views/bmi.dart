// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {

  //ตัวควบคุม textfiled
  TextEditingController data_kg = TextEditingController();
  TextEditingController data_cm = TextEditingController();

  double bmi = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            child: Column(
              children: [
                Text(
                  "หาค่าดัชนีมวลกาย (ฺBMI)",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]
                  ),
                ),
          
                Image.asset(
                  "assets/icons/BMI.png",
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "น้ำหนัก (kg.)"
                  ),
                ),

                SizedBox(
                  height: 2,
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรุณากรอกน้ำหนัก",
                    ),

                  controller: data_kg,
                ),

                SizedBox(
                  height: 10,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ส่วนสูง (cm.)"
                  ),
                ),

                SizedBox(
                  height: 2,
                ),

                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรุณากรอกส่วนสูง",
                    ),

                  controller: data_cm,
                ),

                SizedBox(
                  height: 20,
                ),

                ElevatedButton(onPressed: 
                (){
                  //คํานวณดัชนีมวลกาย
                  //เราจะ varidate input ตือการตรวจสอบค่ามี input รึยัง

                  if(data_cm.text.isEmpty || data_kg.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("กรุณากรอกข้อมูลให้ครบ"),
                        backgroundColor: Colors.grey[800],
                        duration: Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  //ส่วนคํานวณดัชนีมวลกาย
                  double kg = double.parse(data_kg.text);
                  double h = double.parse(data_cm.text)/100;
                  // ****** อะไรก็ตามที่ผลก็ได้ แสดงผล ต้องใส่ใน setState
                  setState(() {
                    bmi = kg/(h*h);
                  });

                }, child: 
                Text(
                  "คํานวณ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff283618),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(onPressed: 
                (){
                  setState(() {
                    data_cm.clear();
                    data_kg.clear();
                    bmi = 0.0;
                  });
                }, child: 
                Text(
                  "ล้างข้อมูล",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                ),
                
                SizedBox(
                  height: 30,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "ค่าดัชนีมวลกาย (ฺBMI)",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800]
                          ),
                        ),
                        Text(
                          bmi.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff283618),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
                
              ],
            )
          ),
        ),
      ),
    );
  }
}