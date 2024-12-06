import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectAnnapurna extends StatefulWidget {
  static String id='project_annapurna';
  @override
  State<ProjectAnnapurna> createState() => _ProjectAnnapurnaState();
}

class _ProjectAnnapurnaState extends State<ProjectAnnapurna> {
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
          title: Text('Annapurna Rasoi', style: TextStyle(color: Colors.white),),
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
                        Text('Terai Annapurna Rasoi', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                        Image.network('https://morehost.co.in/app/images/iconl.png', width: 50.0,),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/annapurna1.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/annapurna2.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/annapurna3.jpg',),
                    SizedBox(height: 15.0,),
                    Container(child: Text('From the Chairman Desk',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0XFF504d4c), width: 1.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Image.network('https://morehost.co.in/app/images/annapurna4.jpg',),
                    SizedBox(height: 20.0,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                        child: Wrap(
                          children: [
                            Text("The Terai Annapoorna Rasoi is a unique way to reach out to serve and provide nutritious cooked food to the ones in need.\nThis initiative of Terai has been operational since L.Y.2018-19 and I am honored to serve as the chairman of this wonderful project for L.Y.2024-25.\nWe provide nutritious food, water, environment friendly plates spoons and glasses, large canopy umbrella and dustbin for disposal of glasses and plates. All this provides a clean and comfortable environment for the beneficiaries.\nYou can reach out for booking at the following numbers\n\n", textAlign: TextAlign.justify, ),
                            Text("Lion Binod Jalan (9434761741)\nLion B N Das (9832066996)\n\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
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
