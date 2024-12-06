import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/RollHonourApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class SubInvocation extends StatefulWidget {
  static String id='sub_invocation';

  @override
  State<SubInvocation> createState() => _SubInvocationState();
}

class _SubInvocationState extends State<SubInvocation> {
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
        title: Text('Invocation', style: TextStyle(color: Colors.white),)
      ),
      body: Container(

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
                            Text("God's Blessing", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("LET there be harmony in your thoughts.\nLET there be harmony in your gatherings.\nLET there be harmony in your brains and minds.\nLET there be harmony in your mutual help.\nBE you all mutually co-operative in service.",
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
                            Text("परमेश्वर का आशीर्वाद", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("तुम्हारे विचारों में समानता हो,\nतुम्हारी सभाओं में सामंजस्य हो,\nतुम्हारे मन और चित साथ साथ हो,\nतुम्हारे पारस्परिक सहयोग में सामंजस्य हो,\nतुम सब परस्पर सेवाभाव से सहयोगी बने रहो।",
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

