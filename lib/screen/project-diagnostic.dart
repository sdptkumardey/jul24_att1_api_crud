import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectDiagnostic extends StatefulWidget {
  static String id='project_diagnostic';

  @override
  State<ProjectDiagnostic> createState() => _ProjectDiagnosticState();
}

class _ProjectDiagnosticState extends State<ProjectDiagnostic> {
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
          title: Text('Diagnostic Centre', style: TextStyle(color: Colors.white),),
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
                        Text('Terai Lions Diagnostic Centre', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                        Image.network('https://morehost.co.in/app/images/iconl.png', width: 50.0,),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Image.network('https://morehost.co.in/app/images/diagnostic1.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/diagnostic2.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/diagnostic3.jpg',),
                    SizedBox(height: 25.0,),
                    Container(child: Text('From the Chairman Desk',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0XFF504d4c), width: 1.0)
                        ),
                      ),
                    ),
                    SizedBox(height: 25.0,),
                    Image.network('https://morehost.co.in/app/images/diagnostic5.jpg',),
                    SizedBox(height: 20.0,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                        child: Wrap(
                          children: [
                            Text("Dear esteemed members,\nI am writing to express my heartfelt gratitude to our President Ln Ajay Dhanotiwala for reposing faith in me to serve as the Chairman of our prestigious service project 'Siliguri Terai Lions Diagnostic Centre'.\n We aim to provide quality healthcare services to society at affordable rates with state-of-the-art technology, maintaining the highest scientific standards of quality and accuracy. As health care has become very expensive and beyond the reach of underprivileged society, our centre is committed to ensuring quality health care for all. Our focus is to make a significant impact in the lives of countless individuals and families.\n Our commitment to affordable and accessible healthcare services has been possible due to your unwavering continuous support. Your selflessness and compassion are the driving force behind our mission.\n Let us join hands to:\n- Spread awareness about our services\n- Support each other in this noble endeavor\n- Foster a culture of compassion and care\n- Make a meaningful difference in people's lives.\n", textAlign: TextAlign.justify, ),
                            Text("Yours in Service\nLion Kamal Singh Kundalia\n\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
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
