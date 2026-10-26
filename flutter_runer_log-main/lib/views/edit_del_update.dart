// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_log_app/Models/DB.dart';
import 'package:flutter_log_app/services/supabase-service.dart';

class EditDelUpdate extends StatefulWidget {
  RunLog? index;

  EditDelUpdate({super.key, this.index});
  @override
  State<EditDelUpdate> createState() => _EditDelUpdateState();
}

class _EditDelUpdateState extends State<EditDelUpdate> {
  TextEditingController runWhereController = TextEditingController();
  TextEditingController runPersonController = TextEditingController();
  TextEditingController runDistanceController = TextEditingController();

  void initState() {
    super.initState();
    if (widget.index != null) {
      runWhereController.text = widget.index!.runWhere;
      runPersonController.text = widget.index!.runPerson;
      runDistanceController.text = widget.index!.runDistance.toString();
    }
  }

  void updatenewrunLog() async {
    // validation
    if (runWhereController.text.isEmpty ||
        runPersonController.text.isEmpty ||
        runDistanceController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("โปรดกรอกข้อมูลให้ครบถ้วน")));
      return;
    }

    // create RunLog object
    RunLog updatedLog = RunLog(
      runWhere: runWhereController.text,
      runPerson: runPersonController.text,
      runDistance: int.parse(runDistanceController.text),
    );

    // update to database
    final service = SupabaseService();
    await service.updateRunLog(widget.index!.id!, updatedLog);

    // show success message
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("อัปเดตสำเร็จ")));

    // go back to previous screen
    Navigator.pop(context);
  }

  Future<void> deleteRunlog() async {
    final service = SupabaseService();

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(

        title: Text("ยืนยันการลบ"),
        content: Text("คุณแน่ใจหรือไม่ว่าต้องการลบรายการนี้?"),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("ยกเลิก"),
          ),

          ElevatedButton(
            onPressed: () async {
              await service.deleteRunLog(widget.index!.id!);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("ลบสำเร็จ"),
                  duration: Duration(seconds: 2),
                ),
              );
              Navigator.pop(context);
            },
            child: Text("ยืนยัน"),
          ),
        ],
      ),
    );
  }

  List<RunLog> runLogs = [];

  void fetchLogs() async {
    final service = SupabaseService();
    final logs = await service.fetchRunLogs();
    setState(() {
      runLogs = logs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Run Tracker (Delete/Update Log)",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff353535),
        centerTitle: true,

        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

            SizedBox(height: 40,),

            Image.asset(
              "assets/icons/Run-icons.png",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),


              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Column(
                  children: [
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

                      SizedBox(height: 20,),
                      TextField(
                        controller: runPersonController,
                        decoration: InputDecoration(
                          labelText: "ชื่อผู้วิ่ง",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),

                      SizedBox(height: 20,),
                      TextField(
                        controller: runDistanceController,
                        decoration: InputDecoration(
                          labelText: "ระยะทาง (กม.)",
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),

                      SizedBox(height: 30,),

                      ElevatedButton(onPressed: (){
                        updatenewrunLog();
                      }, child: Text("อัปเดตข้อมูล",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )
                      
                      ),
                       style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff284b63),
                          fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                        ),
                      ),

                      SizedBox(height: 5,),

                      ElevatedButton(onPressed: (){
                        deleteRunlog();
                      }, child: Text("ลบข้อมูล",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )
                      
                      ), 
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 92, 26, 22),
                        fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
                      ),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
