import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_log_app/Models/DB.dart';
import 'package:flutter_log_app/services/supabase-service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';


class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){ askforopenCamera();
    });
  }

  TextEditingController runWhereController = TextEditingController();
  TextEditingController runPersonController = TextEditingController();
  TextEditingController runDistanceController = TextEditingController();

  void askforopenCamera(){

    showDialog(context: context, 
    builder: (context) => AlertDialog(
      
      title: Text("ถ่ายรูปสถานที่วิ่งไหม?"),
      content: Text("คุณต้องการถ่ายรูปหรือไม่?"),

      actions: [
        TextButton(
          onPressed: (){
          Navigator.pop(context);
        }, child: Text("ยกเลิก")
        ),

        ElevatedButton(onPressed: (){
          Navigator.pop(context);
          permission_check();

        }, child: Text("ถ่ายรูป"))
      ],
    ),
    );
  }

    File? image_file;
    final ImagePicker picker = ImagePicker();

    Future<void> pickImage() async {
      try{
      final XFile? image = await picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1000,
        imageQuality: 80,
        );

        if(image != null){
          setState(() {
            image_file = File(image.path);
          });
          print("Image path: ${image_file!.path}");
        }

        } on PlatformException catch (e) {
          print("Failed to pick image: $e");
          if (image_file != null) {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed from System: $e"))
          );
          }
        
        } catch (e) {
          if (image_file != null) {
          
          print("Failed to pick image: $e");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Failed to pick image: $e"))
          );

          }
        }
    }

    Future<void> permission_check() async {
      
      var status = await Permission.camera.status;
      
      if(status.isGranted){
        pickImage();
      }else if(status.isDenied){
        if( await Permission.camera.request().isGranted){
          
        pickImage();
        }
      }else if(status.isPermanentlyDenied){
        await openAppSettings();
      }
    }

  void insertnewRunLog() async{
    // validation
    if(runWhereController.text.isEmpty || runPersonController.text.isEmpty || runDistanceController.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: 
        Text("โปรดกรอกข้อมูลให้ครบถ้วน")
        )
      );
      return;
    }

    // create RunLog object

    RunLog newLog = RunLog(
      runWhere: runWhereController.text,
      runPerson: runPersonController.text,
      runDistance: int.parse(runDistanceController.text),
    );

    // insert to database
    final service = SupabaseService();
    await service.insertRunLog(newLog);

    // show success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: 
        Text("บันทึกสำเร็จ")
      )
    );

    // go back to previous screen
    Navigator.pop(context);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Run Tracker (Add Log)",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )
        ),
        backgroundColor: Color(0xff353535),
        centerTitle: true,

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Center(
        child: Column(
          children: [

            SizedBox(height: 40,),

            Image.asset(
              "assets/icons/Run-icons.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),

            
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.5,
                    
                    ),
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Expanded(
                    child: Column(
                      children: [
                        
                        SizedBox(height: 0.5,),

                        Text(
                          "เพิ่มบันทึกการวิ่งของคุณ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 20,),

                        TextField(
                          decoration: InputDecoration(
                            labelText: "สถานที่วิ่ง", 
                            labelStyle: TextStyle(
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "เช่น สวนลุมพินี, สวนรถไฟ, ริมแม่น้ำเจ้าพระยา",
                            hintStyle: TextStyle(
                              color: Colors.black.withAlpha(95),
                              fontSize: 16,
                            ),
                          ),
                        controller: runWhereController,
                        ),

                        SizedBox(height: 15,),

                        TextField(
                          decoration: InputDecoration(
                            labelText: "จำนวนคนวิ่ง", 
                            labelStyle: TextStyle(
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "เช่น 1, 2, 3",
                            hintStyle: TextStyle(
                              color: Colors.black.withAlpha(95),
                              fontSize: 16,
                            ),
                          ),
                          controller: runPersonController,
                        ),

                        //same for distance

                        SizedBox(height: 15,),

                        TextField(
                          decoration: InputDecoration(
                            labelText: "ระยะทาง (กิโลเมตร)", 
                            labelStyle: TextStyle(
                              fontSize: 20,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            hintText: "เช่น 10, 21, 42",
                            hintStyle: TextStyle(
                              color: Colors.black.withAlpha(95),
                              fontSize: 16,
                            ),
                          ),
                          controller: runDistanceController,
                        ),

                        SizedBox(height: 20,),

                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  insertnewRunLog();
                                },
                              
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff284b63),
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              
                                child: Text(
                                  "บันทึก",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(onPressed: (){
                              
                                runWhereController.clear();
                                runPersonController.clear();
                                runDistanceController.clear();
                              
                                Navigator.pop(context);
                              }, 
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff353535),
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),

                              child: Text(
                                  "ยกเลิก",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffffffff)
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),               
              ),
            ],
            ),
          ),    
          ),
        ],
      ),
    ),
    );
  }
}