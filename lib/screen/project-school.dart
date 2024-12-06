import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectSchool extends StatefulWidget {
  static String id='project_school';
  @override
  State<ProjectSchool> createState() => _ProjectSchoolState();
}

class _ProjectSchoolState extends State<ProjectSchool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Color(0Xff00529c),
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
          title: Text('Sulochana Mansi Jajodia Terai Lions Public School', style: TextStyle(color: Colors.white, fontSize: 14.0),),
          actions: [
            CommotteeMenu()
          ],
        ),
        body: Container(
            margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
            color: Colors.white,
            child:SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Sulochana Mansi Jajodia Terai Lions Public School', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF0031be)), textAlign: TextAlign.center, ),
                    Image.network('https://morehost.co.in/app/images/school1.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/school2.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/school3.jpg',),
                    SizedBox(height: 15.0,),
                    Container(child: Text('From the Chairman Desk',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0XFF504d4c), width: 1.0)
                        ),
                      ),
                    ),
                    Image.network('https://morehost.co.in/app/images/school4.jpg',),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                        child: Wrap(
                          children: [
                            Text("Dear members\nI am deeply honored and grateful for the trust and confidence you all have shown in me by appointing me as the chairman of our upcoming new school project.It is truly humbling to have your support, and I am excited to take on this responsibility.\nI want to express my sincere appreciation to our lead Donor & each one of you for the continuous support. I understand the importance of this role, and I am committed to working diligently to ensure our upcoming school project operates smoothly and be completed in time.Your faith in me motivates me to do my best.\nIt's a great initiative of our club to contribute one more such a great project to the society.\n\n", textAlign: TextAlign.justify, ),
                            Text("Warm regards,\nLion Srawan Chowdhury\n\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        )
                    ),




















                  ],
                ),
              ),
            )
        )
    );
  }
}
