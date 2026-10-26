import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/models/trasport.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class SubA extends StatefulWidget {
  const SubA({super.key});
  @override
  State<SubA> createState() => _SubAState();
}
class _SubAState extends State<SubA> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  List<Trasport> trasportdata = [
    Trasport(
      image:"assets/images/DRR.jpg",
      name: "กรมทางหลวงชนบท",
      phone: "1146"
    ),
    Trasport(
      image: "assets/images/policetourist.jpg",
      name: "ตำรวจท่องเที่ยว",
      phone: "1155"
    ),
    Trasport(
      image: "assets/images/policehighway.jpg",
      name: "ตำรวจทางหลวง",
      phone: "1146"
    ),
    Trasport(
      image:"assets/images/policetrasports.jpg",
      name: "ข้อมูลจราจร",
      phone: "1193"
    ),
    Trasport(
      image:"assets/images/BMTA.jpg",
      name: "ขสมก.",
      phone: "1348"
    ),
    Trasport(
      image: "assets/images/BKS.jpg",
      name: "บขส.",
      phone: "1490"
    ),
    Trasport(
      image:"assets/images/EXAT.png",
      name: "เส้นทางบนทางด่วน",
      phone: "1543"
    ),
    Trasport(
      image:"assets/images/DOH.jpg",
      name: "กรมทางหลวง",
      phone: "1586"
    ),
    Trasport(
      image: "assets/images/SRT.png",
      name: "การรถไฟแห่งประเทศไทย",
      phone: "1690"
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
              Text("การเดินทาง",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),), 
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                "assets/icons/highway.jpg",
                height: 200 ,
                width: 200,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: trasportdata.length,
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
                        trasportdata[index].image!,
                        fit: BoxFit.cover ,
                        ),
                  ),
                  title: Text(
                    trasportdata[index].name!,
                    ),
                  subtitle: Text(
                    trasportdata[index].phone!,
                    ),
                  
                  trailing: InkWell(
                    onTap: (){
                      _makePhoneCall(trasportdata[index].phone!);
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