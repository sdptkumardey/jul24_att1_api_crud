import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/RollHonourApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class SubClubInfo extends StatefulWidget {
  static String id='sub_club_info';
  @override
  State<SubClubInfo> createState() => _SubClubInfoState();
}

class _SubClubInfoState extends State<SubClubInfo> {
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
          title: Text('Club Information', style: TextStyle(color: Colors.white),),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
            color: Colors.white,
            child:SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Lions Club of Siliguri Terai', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                    const SizedBox(height: 15.0,),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
                        child: const Wrap(
                          children: [
Text("Club No. - 050395 | Dist. - 322F | Region - IV\nZone - I | Inaugurated on : 06-03-1990\nCharter on : 04-04-1990 | Sponsored by : Lions Club of Siliguri\nMembers as on 01-07-2018:90 | PMJF : 2 & MJF : 64\nPentagon - 1 | Four Diamond - 2 | Triple Diamond - 11\nDouble Diamond  - 26 | Diamond - 49", textAlign: TextAlign.center, ),
                          ],
                        )
                    ),
                    SizedBox(height: 15.0,),
                    Text('Club Sponsored by us :', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF000000)), ),
                    SizedBox(height: 5.0,),
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 0),
                        child: Wrap(
                          children: [
                            Text("Lions Club of Bidhannagar | Lions Club of Siliguri Platinum\nLions Club of Siliguri Gold | Lions Club of Siliguri Metro\nLions Club of Rangpoo - Gateway of Sikkim\nLions Club of Siliguri Terai Shakti\nLions Club of Siliguri Terai Oorja", textAlign: TextAlign.center,),
                          ],
                        )),
                    SizedBox(height: 15.0,),













                  ],
                ),
              ),
            )
        ),
    );
  }
}
