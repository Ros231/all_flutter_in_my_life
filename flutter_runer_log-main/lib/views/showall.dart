import 'package:flutter/material.dart';
import 'package:flutter_log_app/Models/DB.dart';
import 'package:flutter_log_app/services/supabase-service.dart';
import 'package:flutter_log_app/views/edit_add.dart';
import 'package:flutter_log_app/views/edit_del_update.dart';

class Showall extends StatefulWidget {
  const Showall({super.key});

  @override
  State<Showall> createState() => _ShowallState();
}

class _ShowallState extends State<Showall> {
  List<RunLog> runLogs = [];
  final service = SupabaseService();

  void fetchLogs() async {
    final logs = await service.fetchRunLogs();
    setState(() {
      runLogs = logs;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchLogs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Run Tracker",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xff353535),

        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/Runer-boy.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),

            Expanded(
              child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                height: 500,
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/images/City-B.png"),
                  //   alignment: Alignment.bottomCenter,
                  //   opacity: 0.2,
                  // ),
                  border: Border.all(color: Colors.grey, width: 1.5),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Stack(
                  children: [

                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.asset(
                            "assets/images/City-B.png",
                          ),
                        ),
                      ),
                    ),

                    ListView.builder(
                      itemCount: runLogs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index % 2 == 0
                                  ? Color(0xff284b63)
                                  : Color(0xff353535),
                            ),
                            child: ListTile(
                              leading: Image.asset(
                                "assets/icons/Run-icons.png",
                                color: Color(0xffffffff),
                              ),
                              title: Text(" ที่ไหน: ${runLogs[index].runWhere}",
                              
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                              ),
                              
                              subtitle: Text(
                                "Runner: ${runLogs[index].runPerson} - Distance: ${runLogs[index].runDistance} KM",

                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),

                              trailing: IconButton(
                                icon: Icon(Icons.edit, color: Colors.white),
                                onPressed: () {
                                  // Handle edit action
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => EditDelUpdate(
                                        index: runLogs[index],
                                      ),
                                    ),
                                  ).then((value) => fetchLogs());
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff353535),
        onPressed: () {
          // Handle add action

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Edit()),
          ).then((value) => fetchLogs());
        },
        child: Icon(Icons.add, color: Colors.white),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
