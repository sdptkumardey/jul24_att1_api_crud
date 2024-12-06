import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/RollHonourApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class SubPeacePrayer extends StatefulWidget {
  static String id='sub_peace_prayer';

  @override
  State<SubPeacePrayer> createState() => _SubPeacePrayerState();
}

class _SubPeacePrayerState extends State<SubPeacePrayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff00529c),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
        title: Text('Peace Prayer', style: TextStyle(color: Colors.white),)
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 3.0),
          color: Colors.white,
          child:SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, ),
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("PRAYER", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("May the sky and atmosphere be peaceful\nMay earth and water be peaceful\nMay Medical Herbs and plants be peaceful\nMay all the learned persons and\nGod himself be peaceful\nMay all objects be peaceful\nMay peace itself be peaceful\nMay that peace come unto us and\nUnto all people of the World",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0, ),
                            ),
                          ],
                        ),
                      )
                  ),



                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0, ),
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("शान्ति प्रार्थना", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("शान्त हो आकाश, सारा अन्तरिक्ष शान्त हो,\nशान्त हो अपनी धरा, जलधारा सारी शान्त हो।\nशान्त हो औषधियां सभी, हो वनस्पतियां शान्त हो ।\nदेवगण सब शान्त हो, हो शान्त ब्रहम भी स्वयं |\nशान्ति भी हो शान्त, प्राणि मात्र सारे शान्त हो।\nशान्ति का उद्घोष हो, और विश्व सारा शान्त हो।",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16.0, ),
                            ),
                          ],
                        ),
                      )
                  ),



                ],
              ),
            ),
          )
      ),
    );
  }
}

