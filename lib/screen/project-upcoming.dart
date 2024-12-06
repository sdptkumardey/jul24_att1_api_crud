import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectUpcoming extends StatefulWidget {
  static String id='project_upcoming';
  @override
  State<ProjectUpcoming> createState() => _ProjectUpcomingState();
}

class _ProjectUpcomingState extends State<ProjectUpcoming> {
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
          title: Text('Upcoming Service Project', style: TextStyle(color: Colors.white),),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Upcoming Service Project', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                        Image.network('https://morehost.co.in/app/images/iconl.png', width: 50.0,),
                      ],
                    ),
                    SizedBox(height: 75.0,),

                  ],
                ),
              ),
            )
        )
    );
  }
}
