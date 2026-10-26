import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xff001D3D),
        title: Text("สวยด่วน THAILAND",
        style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Color(0xffFFC300),
          ),),
        centerTitle: true,
        
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.white,),
        ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
            children: [
              SizedBox(height: 40,),
              Text(
                "ผู้จัดทำ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/icons/sau.png",
                  height: 200,
                  width: 200, 
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/me.jpg",
                  height: 200,
                  width: 200, 
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "6619410030",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "นาย ภานุวัฒน์ ต่อศรีสกุล",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "phanuwat.goon@gmail.com",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "วิศวกรรมศาสตร์",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20,),
              Text(
                "วิศวกรรมคอมพิวเตอร์",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
                  ),
          ),
        )
      ),
    );
  }
}