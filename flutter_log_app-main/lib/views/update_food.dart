import 'package:flutter/material.dart';
import 'package:flutter_log_app/models/food.dart';
import 'package:flutter_log_app/services/supabase_services.dart';
import 'package:intl/intl.dart';

class UpdateFood extends StatefulWidget {

  Food? food;

  UpdateFood({super.key, this.food});
 // สร้างตัวแปรเพื่อรับข้อมูลจากหน้าก่อนหน้า
  
  @override
  State<UpdateFood> createState() => _UpdateFoodState();
}

class _UpdateFoodState extends State<UpdateFood> {

  TextEditingController foodNamdeController = TextEditingController();
  TextEditingController foodPriceController = TextEditingController();
  TextEditingController foodPersonController = TextEditingController();
  TextEditingController foodDateController = TextEditingController();

  String selectedMeal = 'เช้า';

  // ตัวแปรเก็บวันที่กิน
  DateTime? foodDate;

  // ตัวแปรเก็บเวลากินที่มาจาก ปฏิทิน แลล้วกำหนดวันที่เลือกกำหนดให้ foodDate และแสดงไปที่ TextField

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        foodDate = picked;

        foodDateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }
  
  @override
  void initState() {
    super.initState();
    if (widget.food != null) {
      foodNamdeController.text = widget.food!.foodName;
      foodPriceController.text = widget.food!.foodPrice.toString();
      foodPersonController.text = widget.food!.foodPerson.toString();
      foodDateController.text = widget.food!.foodDate;
      selectedMeal = widget.food!.foodMeal;

      // แปลงวันที่ที่ได้จากฐานข้อมูลมาเป็น DateTime แล้วเก็บใน foodDate
      foodDate = DateTime.parse(widget.food!.foodDate);
    }
  }
  
  
  
  void updateFood() async {
    // validation เช็คว่ากรอกครบทุกช่องไหม
      if (foodNamdeController.text.isEmpty || foodPriceController.text.isEmpty || foodPersonController.text.isEmpty || foodDateController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: 
          Text('กรุณากรอกข้อมูลให้ครบ'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2)
          ),
        ),
      );
      }
    // แพ็กข้อมูล
    Food food =  Food(
          foodMeal: selectedMeal,
          foodName: foodNamdeController.text,
          foodPrice: double.parse(foodPriceController.text),
          foodPerson: int.parse(foodPersonController.text),
          foodDate : foodDate!.toIso8601String(),
        );
    final service = SupabaseServices();
    await service.updateFood(widget.food!.id!, food);

    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: 
        Text('บันทึกข้อมูลเรียบร้อย'),
        backgroundColor: Colors.green,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)
        ),
      ),
    );

    // กลับไปที่หน้า showAll

    Navigator.pop(context);
  }
    // ส่งไปบันทึกที่ supabase ผ่าน supabaseServices
    

  Future<void> deleteFood() async {
    // ลบข้อมูลจากฐานข้อมูลผ่าน SupabaseServices
    final service = SupabaseServices();  await showDialog(
      context: context,

      builder: (context) => AlertDialog(
       title: Text('ยืนยันการลบ'),
       // หัวข้อของ dialog
       content: Text('คุณต้องการลบข้อมูลนี้หรือไม่?'),
       // เนื้อหาของ dialog
       actions: [
         ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: Text('ยกเลิก'),
          
         ),
        // ปุ่มยืนยันลบข้อมูล
         ElevatedButton(onPressed: () async{
          await service.deleteFood(widget.food!.id!);
           
           ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('ลบข้อมูลเรียบร้อย'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
            )); // ปิด dialog 

            Navigator.pop(context); // กลับไปที่หน้าหลังจากลบข้อมูลเสร็จ
         }, child: Text('ยืนยันการลบ')),
       ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Food Log'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                // ป้อนกินอะไร
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('กินอะไร', style: TextStyle(fontSize: 18)),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'เช่น KFC, Pizza',
                  ),
                  controller: foodNamdeController,
                ),
                SizedBox(height: 20),

                // เลือกกินมื้อไหน
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('กินมื้อไหน', style: TextStyle(fontSize: 18)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMeal = 'เช้า';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedMeal == 'เช้า'
                            ? Colors.green
                            : Colors.grey,
                      ),
                      child: Text(
                        'เช้า',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMeal = 'กลางวัน';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedMeal == 'กลางวัน'
                            ? Colors.green
                            : Colors.grey,
                      ),
                      child: Text(
                        'กลางวัน',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMeal = 'เย็น';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedMeal == 'เย็น'
                            ? Colors.green
                            : Colors.grey,
                      ),
                      child: Text(
                        'เย็น',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMeal = 'ว่าง';
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: selectedMeal == 'ว่าง'
                            ? Colors.green
                            : Colors.grey,
                      ),
                      child: Text(
                        'ว่าง',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // ป้อนกินไปเท่าไหร่
                Align(
                  alignment: Alignment.centerLeft,

                  child: Text('กินไปเท่าไหร่', style: TextStyle(fontSize: 18)),
                ),

                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'เช่น 299.50',
                  ),
                  controller: foodPriceController,
                ),

                SizedBox(height: 20),

                // ป้อนกินกันกี่คน
                Align(
                  alignment: Alignment.centerLeft,

                  child: Text('กินกันกี่คน', style: TextStyle(fontSize: 18)),
                ),

                TextField(
                  keyboardType: TextInputType.number,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'เช่น 3',
                  ),
                  controller: foodPersonController,
                ),

                SizedBox(height: 20),

                // เลือกกินไปวันไหน
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('กินไปวันไหน', style: TextStyle(fontSize: 18)),
                ),
                TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: 'เช่น 2020-01-31',
                    suffixIcon: Icon(Icons.calendar_today
                      
                    ),
                  ),
                  controller: foodDateController,
                  
                  onTap: () {
                    pickDate();
                  },
                  //เปิด ปฎิทิน ให้เลือกวันที่แล้วมาแสดงใน textfield
                ),
                SizedBox(height: 20),

                // ปุ่มบันทึก
                ElevatedButton(
                  onPressed: () {
                    //บันทึกการแก้ไข
                    updateFood();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),
                  child: Text("บันทึกการแก้ไข", style: TextStyle(color: Colors.white)),
                ),
                SizedBox(height: 10),

                // ปุ่มยกเลิก
                ElevatedButton(
                  onPressed: () {
                    //ลบข้อมูล
                    deleteFood().then((value) {
                      Navigator.pop(context);
                    });
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  ),

                  child: Text("ลบข้อมูล", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}