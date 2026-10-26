import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/models/utilities.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SubD extends StatefulWidget {
  const SubD({super.key});

  @override
  State<SubD> createState() => _SubDState();
}

class _SubDState extends State<SubD> {
     Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  List<Utilities> uitilities = [
    Utilities(
      images:"assets/images/MEA.jpg",
      name: "การไฟฟ้านครหลวง",
      phone: "1130"
    ),
    Utilities(
      images: "assets/images/PEA.jpg",
      name: "การไฟฟ้าส่วนภูมิภาค",
      phone: "1129"
    ),
    Utilities(
      images: "assets/images/EGAT.png",
      name: "การไฟฟ้าฝ่ายผลิต",
      phone: "1416"
    ),
    Utilities(
      images:"assets/images/MWA.jpg",
      name: "การประปานครหลวง",
      phone: "1125"
    ),
    Utilities(
      images:"assets/images/PWA.jpg",
      name: "การประปาส่วนภูมิภาค",
      phone: "1662"
    ),
    Utilities(
      images: "assets/images/DSH.png",
      name: "ศุนย์ปลอดภัยคมนาคม",
      phone: "1356"
    ),
    Utilities(
      images:"assets/images/true.jpg",
      name: "TRUE",
      phone: "1242"
    ),
    Utilities(
      images:"assets/images/dtac.jpeg",
      name: "DTAC",
      phone: "1678"
    ),
    Utilities(
      images: "assets/images/ais.jpg",
      name: "AIS",
      phone: "1175"
    ),
    Utilities(
      images: "assets/images/TOT.jpg",
      name: "TOT",
      phone: "1100"
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
              Text("สาธารณูปโภค",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),), 
            Image.asset(
              "assets/icons/Utilities.png",
              height: 200 ,
              width: 200,
            ),
            ListView.separated(
              
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: uitilities.length,
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
                        uitilities[index].images!,
                        fit: BoxFit.cover,
                        ),
                      
                  ),
                  title: Text(
                    uitilities[index].name!,
                    ),
                  subtitle: Text(
                    uitilities[index].phone!,
                    ),
                  
                  trailing: InkWell(
                    onTap: (){
                      _makePhoneCall(uitilities[index].phone!);
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