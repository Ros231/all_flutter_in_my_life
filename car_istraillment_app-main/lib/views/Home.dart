// ignore_for_file: sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class carInstallmentCalculater extends StatefulWidget {
  const carInstallmentCalculater({super.key});

  @override
  State<carInstallmentCalculater> createState() => _carInstallmentCalculaterState();
}

class _carInstallmentCalculaterState extends State<carInstallmentCalculater> {

  TextEditingController carPrice = TextEditingController(); //ราคาของรถยนต์

  int downPaymentPercent = 10; //เงินดาวน์ (%)

  int selectMouth = 24; //ระยะเวลาผ่อนชำระ (เดือน)

  TextEditingController interestRate = TextEditingController(); //อัตราดอกเบี้ย (%/ปี)

  double carInstallment = 0.00;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff003566),
        title: 
        Text(
          'Car Installment Calculator',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
          centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 40),
                Text(
                  "คำนวนค่างวดรถยนต์",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                SizedBox(height: 20),
            
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xff003566),
                      width: 4,
                      
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      "assets/imgs/carCalculator.png",
                      width: 300,
                    ),
                  ),
                ),
                
                SizedBox(height: 20),
            
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ราคาของรถยนต์ (บาท)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(  
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '0.00',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  controller: carPrice,
                ),
                
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "จำนวนเงินดาวน์ (%)",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    RadioGroup<int>(
                      groupValue: downPaymentPercent,
                      onChanged: (int? value){
                        setState(() {
                          downPaymentPercent = value!;
                        });
                      }, child: Row(
                        children: [10,20,30,40,50].map((int val){
                          return Row(
                            children: [
                              Radio<int>(
                                value: val,
                              ),
                              Text("$val")
                            ],
                          );
                        }).toList(),
                      )
                    ),
                    SizedBox(width: 10),
                    ],
                  ),

                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "ระยะเวลาผ่อนชำระ (เดือน)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<int>(  
                            value: selectMouth,
                            isExpanded: true,
                            items: [24,36,48,60,72].map((int val_mouth)
                            {
                              return DropdownMenuItem<int>(
                                value: val_mouth,
                                child: Text("$val_mouth เดือน"),
                              );
                            }
                            ).toList(), 
                            onChanged: (int? newValue)
                            {
                              setState(() {
                                selectMouth = newValue!;
                              }
                            );
                          }
                        ),
                      ),
                    ),
                  ),

                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "อัตราดอกเบี้ย (%/ปี)",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextField(  
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '0.00',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  controller: interestRate,
                ),
                
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      if(carPrice.text.isEmpty || interestRate.text.isEmpty){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('กรุณากรอกข้อมูลให้ครบถ้วน'),
                          ),
                        );
                        return;
                      }
                      double price = double.parse(carPrice.text);
                      double interest = double.parse(interestRate.text);
                      
                      setState(() { // คำนวณค่างวดรถยนต์

                      double loanAmount = price - (price * downPaymentPercent / 100);
                      double totalInterest = loanAmount * (interest / 100) * (selectMouth / 12);
                      carInstallment = (loanAmount + totalInterest) / selectMouth;

                      });
                                  
                    }, child: Text(
                      'คำนวณ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff003566),
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.4, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(onPressed: (){
                      setState(() {

                        carPrice.clear();
                        interestRate.clear();
                        downPaymentPercent = 10;
                        selectMouth = 24;
                        carInstallment = 0.0;

                      });
                    }, child: Text(
                      'ยกเลิก',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFD60A),
                      fixedSize: Size(MediaQuery.of(context).size.width * 0.4, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xff001D3D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'ค่างวดรถยนต์ต่อเดือนเป็นเงิน',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            NumberFormat("#,##0.00").format(carInstallment),
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'บาทต่อเดือน',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}