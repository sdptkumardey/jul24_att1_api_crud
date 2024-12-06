import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectBloodBank extends StatefulWidget {
  static String id='project_blood_bank';
  @override
  State<ProjectBloodBank> createState() => _ProjectBloodBankState();
}

class _ProjectBloodBankState extends State<ProjectBloodBank> {
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
          title: Text('Terai Blood Bank', style: TextStyle(color: Colors.white),),
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
                child: Container(

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Siliguri Terai Lions Blood Bank', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                          Image.network('https://morehost.co.in/app/images/iconl.png', width: 50.0,),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Image.network('https://morehost.co.in/app/images/bank.jpg',),
                      Container(
                        color: Color(0XFF013792),
                        padding: EdgeInsets.all(10.0),
                        child: Text('Jyotinagar, Sevoke Road, Siliguri 734001\nMob : 9093100751/52/53/54/55',  style: TextStyle(color: Colors.white),),
                      ),
                      SizedBox(height: 15.0,),
                      Text('Services Available',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                      SizedBox(height: 15.0,),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                            color: Color(0XFFff904e),
                            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                            margin: EdgeInsets.all(5.0),
                            child: Text('Blood Bank', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                              color: Color(0XFFff904e),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              margin: EdgeInsets.all(5.0),
                              child: Text('Haemophilia Unit', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
 ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0XFFff904e),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              margin: EdgeInsets.all(5.0),
                              child: Text('Plasmapheresis', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                              color: Color(0XFFff904e),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              margin: EdgeInsets.all(5.0),
                              child: Text('Platelet Apherisis', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),


                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              color: Color(0XFFff904e),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              margin: EdgeInsets.all(5.0),
                              child: Text('Oxygen Bank', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                              color: Color(0XFFff904e),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                              margin: EdgeInsets.all(5.0),
                              child: Text('Thalassemia Unit', textAlign: TextAlign.center,),
                            ),
                            flex: 1,
                          ),
                        ],
                      ),
                      Image.network('https://morehost.co.in/app/images/bank1.jpg',),
                      SizedBox(height: 5.0,),
                      Image.network('https://morehost.co.in/app/images/bank2.jpg',),
                      SizedBox(height: 5.0,),
                      Image.network('https://morehost.co.in/app/images/bank3.jpg',),
                      SizedBox(height: 15.0,),
                      Container(child: Text('From the Chairman Desk',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                        decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0XFF504d4c), width: 1.0)
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Image.network('https://morehost.co.in/app/images/bloodc.jpg',),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                          child: Wrap(
                            children: [
                              Text("Dear Friends,\nSiliguri Terai Lions Blood Centre isn't just a place for blood; it's a symbol of community service and hope during tough times. The trust people have in it comes from the dedication of our club and its members, building upon the indelible legacies of our predecessors.\nI feel incredibly lucky and honored to be the Chairman of the Terai Lions Blood Centre. With Lion Ajay Dhanotiwala leading our club as President, I'm excited to lead the Terai Blood Bank to new heights, fostering teamwork and collaboration. Let's remember the words of Helen Keller: 'Alone we can do so little; together we can do so much.'\nI kindly ask for the support and teamwork of everyone involved as we work together to make a positive impact in our community.\n", textAlign: TextAlign.justify, ),
                              Text("Regards,\nLion Ashok Kr. Sharma\n\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
                            ],

                          )
                      )
                    ],
                  ),
                ),
              ),
            )
        )
    );
  }
}
