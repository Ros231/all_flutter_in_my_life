import 'package:flutter/material.dart';

class Bmr extends StatefulWidget {
  const Bmr({super.key});

  @override
  State<Bmr> createState() => _BmrState();
}

class _BmrState extends State<Bmr> {
  // ตัวควบคุม textfield
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  String gender = "male";
  double bmr = 0.0;

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
                  "คำนวณ BMR (Basal Metabolic Rate)",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/icons/exercise.png",
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("เพศ"),
                ),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: Text("ชาย"),
                        value: "male",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: Text("หญิง"),
                        value: "female",
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("น้ำหนัก (kg.)"),
                ),
                SizedBox(height: 2),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรุณากรอกน้ำหนัก",
                  ),
                  controller: weightController,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("ส่วนสูง (cm.)"),
                ),
                SizedBox(height: 2),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรุณากรอกส่วนสูง",
                  ),
                  controller: heightController,
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("อายุ (ปี)"),
                ),
                SizedBox(height: 2),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "กรุณากรอกอายุ",
                  ),
                  controller: ageController,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (weightController.text.isEmpty ||
                        heightController.text.isEmpty ||
                        ageController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("กรุณากรอกข้อมูลให้ครบ"),
                          backgroundColor: Colors.grey[800],
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    }
                    double weight = double.parse(weightController.text);
                    double height = double.parse(heightController.text);
                    int age = int.parse(ageController.text);
                    setState(() {
                      if (gender == "male") {
                        bmr = 66 + (13.7 * weight) + (5 * height) - (6.8 * age);
                      } else {
                        bmr = 665 + (9.6 * weight) + (1.8 * height) - (4.7 * age);
                      }
                    });
                  },
                  child: Text(
                    "คำนวณ",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff283618),
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      weightController.clear();
                      heightController.clear();
                      ageController.clear();
                      bmr = 0.0;
                    });
                  },
                  child: Text(
                    "ล้างข้อมูล",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                ),
                SizedBox(height: 30),
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
                          "ค่า BMR (Basal Metabolic Rate)",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        Text(
                          bmr == 0.0 ? "-" : bmr.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff283618),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}