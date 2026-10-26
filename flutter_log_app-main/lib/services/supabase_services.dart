
import 'package:flutter_log_app/models/food.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices { // ใช้ในการเขียนโค้ดคำสั่งเพื่อทำงานต่าง กับ supabase

  final supabase = Supabase.instance.client;

  // ส่วนของ method ใช้ในการเขียนโค้ดคำสั่งเพื่อทำงานต่างๆ กับ supabase เฃ่น แก้ไขข้อมูล ลบข้อมูล และเพิ่มข้อมูล

Future<List<Food>> getallFood() async { // ใช้ในการดึงข้อมูลจากฐานข้อมูล

  // 
    final data = await supabase.from("Food_tb").select('*').order("foodDate", ascending: false);
    
    return data.map((e) => Food.fromJson(e)).toList();
  //ข้อมูลที่ได้มาจาก supabase ซึ่งเป็น json มาใช้ในแอป และเรียกมาใช้ที่ method ที่ต้องการดึงข้อมูลจากฐานข้อมูล

  
} 

  Future insertFood(Food food) async { // ใช้ในการเพิ่มข้อมูล

    await  supabase.from("Food_tb").insert(food.toJson());
}

// ใช้ในการแก้ไขข้อมูล food_tb ใน supbase 

 Future updateFood(String id, Food food) async {
    await supabase.from("Food_tb").update(food.toJson()).eq('id', id);
  }

  // ใช้ในการลบข้อมูล food_tb ใน supbase 

  Future deleteFood(String id) async {
    await supabase.from("Food_tb").delete().eq('id', id);
  }
}