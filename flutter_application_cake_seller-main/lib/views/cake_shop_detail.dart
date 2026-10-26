import 'package:flutter/material.dart';
import 'package:flutter_application_cake_seller/models/cake_shop_info.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class CakeShopDetail extends StatefulWidget {
  // ตัวแปรเก็บขัอมูลร้านเค้กที่ส่งมาจาก cake_shop.dart
  CakeShopInfo? cakeShopdetail;

  CakeShopDetail({super.key, this.cakeShopdetail});

  @override
  State<CakeShopDetail> createState() => _CakeShopDetailState();
}

class _CakeShopDetailState extends State<CakeShopDetail> {

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

    Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  MapController? mapController;

  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd8e2dc),
        title: Text(widget.cakeShopdetail!.name!),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff9d8189),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(45),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    // สามารถใช้ + เพื่ต่อ String ได้ แต่ในที่นี้ใช้ ${} เพื่อให้ดูง่ายขึ้น และสามารถใส่ ! เพื่อบอกว่าไม่เป็น null ได้ เช่น ${widget.cakeShopdetail!.image1!} หรือจะใช้  'assets/images/' + widget.cakeShopdetail!.image1! ก็ได้เช่นกัน
                    'assets/images/${widget.cakeShopdetail!.image1!}',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        // สามารถใช้ + เพื่ต่อ String ได้ แต่ในที่นี้ใช้ ${} เพื่อให้ดูง่ายขึ้น และสามารถใส่ ! เพื่อบอกว่าไม่เป็น null ได้ เช่น ${widget.cakeShopdetail!.image1!} หรือจะใช้  'assets/images/' + widget.cakeShopdetail!.image1! ก็ได้เช่นกัน
                        'assets/images/${widget.cakeShopdetail!.image2!}',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(width: 10,),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        // สามารถใช้ + เพื่ต่อ String ได้ แต่ในที่นี้ใช้ ${} เพื่อให้ดูง่ายขึ้น และสามารถใส่ ! เพื่อบอกว่าไม่เป็น null ได้ เช่น ${widget.cakeShopdetail!.image1!} หรือจะใช้  'assets/images/' + widget.cakeShopdetail!.image1! ก็ได้เช่นกัน
                        'assets/images/${widget.cakeShopdetail!.image3!}',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20,),

                Card(
                  child: Padding(padding: EdgeInsets.all(20),
                    child : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: Icon(FontAwesomeIcons.shop),
                          title: Text(widget.cakeShopdetail!.name!),
                          ),

                        ListTile(
                          leading: Icon(FontAwesomeIcons.mapLocation),
                          title: Text(widget.cakeShopdetail!.address!),
                          ),

                        ListTile(
                          onTap: (){
                            _makePhoneCall(widget.cakeShopdetail!.phone!);
                          },
                          leading: Icon(FontAwesomeIcons.phone),
                          title: Text(widget.cakeShopdetail!.phone!),
                          ),

                        ListTile(
                          onTap: (){
                            _launchInBrowser(Uri.parse(widget.cakeShopdetail!.website!));
                          },
                          leading: Icon(FontAwesomeIcons.globe),
                          title: Text(widget.cakeShopdetail!.website!),
                          ),

                        ListTile(
                          onTap: (){
                            _launchInBrowser(Uri.parse(widget.cakeShopdetail!.facebook!));
                          },
                          leading: Icon(FontAwesomeIcons.facebook),
                          title: Text(widget.cakeShopdetail!.facebook!),
                          ),

                          SizedBox(height: 10,),

                          Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            child: FlutterMap(
                              mapController: mapController,
                              options: MapOptions(
                                initialCenter: LatLng
                                  (
                                    double.parse(widget.cakeShopdetail!.latitude!),
                                    double.parse(widget.cakeShopdetail!.longitude!),
                                  ),
                                  initialZoom: 15,
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                  userAgentPackageName: 'com.example.app',
                                ),
                                MarkerLayer(
                                markers: [
                                  Marker(point: LatLng(
                                  double.parse(widget.cakeShopdetail!.latitude!), 
                                  double.parse(widget.cakeShopdetail!.longitude!),
                                  ), 
                                  child: InkWell(
                                    onTap: (){
                                      _launchInBrowser(
                                        Uri.parse('https://www.google.com/maps/search/?api=1&query=${widget.cakeShopdetail!.latitude},${widget.cakeShopdetail!.longitude}')
                                        );
                                    },
                                    child: Icon(
                                      Icons.location_pin,
                                    ),
                                  ))],
                                  ),
                                RichAttributionWidget(attributions: [
                                  TextSourceAttribution(
                                    '© OpenStreetMap contributors',
                                    onTap: (){
                                      _launchInBrowser(
                                        Uri.parse('https://www.openstreetmap.org/copyright'),
                                      );
                                    },
                                  )
                                ])
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
