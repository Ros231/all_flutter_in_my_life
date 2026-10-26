import 'package:flutter/material.dart';
import 'package:flutter_hotline_app/models/bank.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubC extends StatefulWidget {
  const SubC({super.key});

  @override
  State<SubC> createState() => _SubCState();
}

class _SubCState extends State<SubC> {
   Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

   List<Bank> bankinfo = [
    Bank(
      images:"assets/images/BKKBank.jpg",
      name: "ธนาคารกรุงเทพ",
      phone: "1333"
    ),
    Bank(
      images: "assets/images/GSB.jpg",
      name: "ธนาคารออมสิน",
      phone: "1115"
    ),
    Bank(
      images: "assets/images/Kbank.jpg",
      name: "ธนาคารกธิกรไทย",
      phone: "028888888"
    ),
    Bank(
      images:"assets/images/Krungthai.jpg",
      name: "ธนาคารกรุงไทย",
      phone: "021111111"
    ),
    Bank(
      images:"assets/images/Krungsri.jpg",
      name: "ธนาคารกรุงศรีอยุธยา",
      phone: "1572"
    ),
    Bank(
      images: "assets/images/TTB.jpg",
      name: "ธนาคารทหารไทย",
      phone: "1428"
    ),
    Bank(
      images:"assets/images/Citibank.jpg",
      name: "Citibank",
      phone: "1588"
    ),
    Bank(
      images:"assets/images/LHBank.jpg",
      name: "LHBank",
      phone: "1327"
    ),
    Bank(
      images: "assets/images/GHBank.jpg",
      name: "ธนาคารอาคารสงเคราะห์",
      phone: "026459000"
    ),
    Bank(
      images: "assets/images/SCB.jpg",
      name: "ธนาคารไทยพาณิชย์",
      phone: "027777777"
    ),
    Bank(
      images: "assets/images/KKP.png",
      name: "ธนาคารเกียรตินาคิน",
      phone: "021655555"
    ),
    Bank(
      images: "assets/images/thaicredit.jpg",
      name: "ธนาคารไทยเครดิต",
      phone: "026975454"
    ),
    Bank(
      images: "assets/images/UOB.jpg",
      name: "UOB",
      phone: "022851555"
    ),
    Bank(
      images: "assets/images/tisco.jpg",
      name: "Tisco",
      phone: "026336000"
    ),
    Bank(
      images: "assets/images/ibank.jpg",
      name: "ธนาคารอิสลาม",
      phone: "022042766"
    ),
    Bank(
      images: "assets/images/CIMB.jpg",
      name: "CIMBBank",
      phone: "026267777"
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
              Text("ธนาคาร",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ), 
            Image.asset(
              "assets/icons/bank.jpg",
              height: 200 ,
              width: 200,
            ),
            ListView.separated(
              
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: bankinfo.length,
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
                        bankinfo[index].images!,
                        fit: BoxFit.cover ,
                        ),
                      
                  ),
                  title: Text(
                    bankinfo[index].name!,
                    ),
                  subtitle: Text(
                    bankinfo[index].phone!,
                    ),
                  
                  trailing: InkWell(
                    onTap: (){
                      _makePhoneCall(bankinfo[index].phone!);
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