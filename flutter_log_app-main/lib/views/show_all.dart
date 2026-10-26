import 'package:flutter/material.dart';
import 'package:flutter_log_app/models/food.dart';
import 'package:flutter_log_app/services/supabase_services.dart';
import 'package:flutter_log_app/views/add_food.dart';
import 'package:flutter_log_app/views/update_food.dart';

class ShowAll extends StatefulWidget {
  const ShowAll({super.key});

  @override
  State<ShowAll> createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {

List<Food>foods = [];
final service = SupabaseServices();

void loadAll() async{
  final data = await service.getallFood();

  setState(() {
    //เก็บข้อมูลที่ไดมาจาก SupabaseServices มาเก็บใน data และ มาเก็บใน food
    foods = data;
  });
}
  @override
  void initState() {
    super.initState();
    loadAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOG MEAL',

          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          )
        ),
        
        centerTitle: true,
        
        backgroundColor: Color(0xffc1121f),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,),

              Image.asset(
                'assets/icons/food_icon.png',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),

            Expanded(
              child: ListView.builder(
                // ต้องการจำนวนรายการที่ต้องการแสดง
                itemCount: foods.length,
              
                // สร้าง widget สําหรับแสดงใน ListView
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: 30, right: 30 , top: 5, bottom: 5),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context) => UpdateFood(food: foods[index]))
                        ).then((value)  {loadAll();});
                      },
                    
                      leading: Image.asset(
                        "assets/images/food_B.png",
                      ),
                      trailing: Icon(Icons.info),
                      
                      title: Text(
                        "กิน ${foods[index].foodName}", 
                      ),
                    
                      subtitle: Text(
                        "วัน ${foods[index].foodDate}"
                      ),
                    tileColor: index % 2 == 0 ? Colors.grey[300] : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    ),
                  );
                }
              )
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: Color(0xffc1121f),
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => AddFood())
            //than แปลว่า " แล้ว " แปลว่า ถ้ากลับมาหน้านี้จะทําอะไร ในที่นี้คือ โหลดข้อมูลอีกครั้ง
          ).then((value)  {loadAll();});
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}