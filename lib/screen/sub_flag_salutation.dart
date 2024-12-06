import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/RollHonourApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class SubFlagSalutation extends StatefulWidget {
  static String id='sub_flag_salutation';
  @override
  State<SubFlagSalutation> createState() => _SubFlagSalutationState();
}
class _SubFlagSalutationState extends State<SubFlagSalutation> {
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
        title: Text('Flag Salutation', style: TextStyle(color: Colors.white),),
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
                      padding: EdgeInsets.symmetric(vertical: 10.0,),
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("FLAG SALUTATION", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Center(
                        child: Wrap(
                          children: [
                            Text("We salute our National Flag and pledge our allegiance to the same. Its honour and its glory depend upon the zeal and assiduity with each one of us, shoulders the responsibilities of a good citizen. Its glorious history written in letters of gold inspires us to put in good work for the fair name of our country. We declare our unflinching loyalty to our National Flag and maintain that its course shall be our course, and that each individual amongst us shall make genuine efforts to add to its lustre and glory and make it fly proudly aloft in the comity of Nations. ",
                              textAlign: TextAlign.justify,
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
                            Text("ध्वज वंदना", textAlign: TextAlign.center, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ),
                          ],
                        ),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Wrap(
                        children: [
                          Text("हम अपने राष्ट्रध्वज को नमन करते है, और इसके प्रति निष्ठा का संकल्प करते है इसका सम्मान और गौरव हमारे द्वारा एक अच्छे नागरिक के कर्तव्य-भार का उत्साह और लगन के साथ वहन किरो जाने पर निर्भर है। इसका स्वर्णाक्षरों में लिखा हुआ यशपूण इतिहास हमें अपने देश के उज्जवल नाम के लिये अच्छे कार्य करने की प्रेरणा देता है। हम अपने राष्ट्र- ध्वज के प्रति अविचल भक्ति की घोषणा करते है और यह मानते है कि इसका मार्ग ही हमारा मार्ग होगा और हममें से प्रत्येक व्यक्ति इसकी भव्यता और गरिमा बढ़ाने और राष्ट्रों के समुदाय में इसे शान से ऊँचा फहराने के लिये सच्चा प्रयास करेगा | ",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16.0, ),
                          ),

                        ],
                      )
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0 ),
                      child: Row(
                        children: [
                          Expanded(child: Text('')),
                          Expanded(child: Text("जय हिन्द", textAlign: TextAlign.right, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Color(0XFF7b68ee)), ))
                        ],
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

