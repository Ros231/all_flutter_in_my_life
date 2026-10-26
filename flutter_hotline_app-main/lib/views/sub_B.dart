import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/models/eme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class SubB extends StatefulWidget {
  const SubB({super.key});

  @override
  State<SubB> createState() => _SubBState();
}

class _SubBState extends State<SubB> {
   Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Eme> eme = [
    Eme(
      images:"assets/images/police.jpg",
      name: "เหตุด่วนเหตุร้าย",
      phone: "191"
    ),
    Eme(
      images: "assets/images/rama199.png",
      name: "แจ้งไฟไหม้",
      phone: "199"
    ),
    Eme(
      images: "assets/images/police.jpg",
      name: "แจ้งรถหาย",
      phone: "1192"
    ),
    Eme(
      images:"assets/images/policemarine.jpg",
      name: "อุบัติเหตุทางน้ำ",
      phone: "1196"
    ),
    Eme(
      images:"assets/images/HDV.png",
      name: "แจ้งคนหาย",
      phone: "1300"
    ),
    Eme(
      images: "assets/images/DSH.png",
      name: "ศุนย์ปลอดภัยคมนาคม",
      phone: "1356"
    ),
    Eme(
      images:"assets/images/FV.jpg",
      name: "หน่อยแพทย์กู้ชีพ",
      phone: "1554"
    ),
    Eme(
      images:"assets/images/BEMS.png",
      name: "ศูนย์เอราวัณ",
      phone: "1646"
    ),
    Eme(
      images: "assets/images/EC.jpg",
      name: "เจ็บป่วยฉุกเฉิน",
      phone: "1669"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text("สายด่วน"),
              Text("อุบัติเหตุ-เหตุฉุกเฉิน",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),), 
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/icons/emecall.jpg",
                height: 200 ,
                width: 200,
              ),
            ),
            ListView.separated(
              
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: eme.length,
              separatorBuilder: (context, index)
              {
                return SizedBox(
                  height: 3,
                );
              },
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: Colors.black,
                      width: 1
                    )
                  ),
                  child: ListTile(
                    
                    leading : Container(
                      height: 80,
                      width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child:  
                      Image.asset(
                        eme[index].images!,
                        fit: BoxFit.cover,
                        ),
                      
                  ),
                  title: Text(
                    eme[index].name!,
                    ),
                  subtitle: Text(
                    eme[index].phone!,
                    ),
                  
                  trailing: InkWell(
                    onTap: (){
                      _makePhoneCall(eme[index].phone!);
                    },
                    child: Icon(FontAwesomeIcons.phone)),
                  ),
                );
              },
             )
          ],
            
          ),
        ),
      ),
    );
  }
}
