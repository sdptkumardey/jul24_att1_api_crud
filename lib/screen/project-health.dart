import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/project_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class ProjectHealth extends StatefulWidget {
  static String id='project_health';

  @override
  State<ProjectHealth> createState() => _ProjectHealthState();
}

class _ProjectHealthState extends State<ProjectHealth> {
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
          title: Text('Terai Health Centre', style: TextStyle(color: Colors.white),),
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
                        Text('Siliguri Terai Lions Health Centre', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                        Image.network('https://morehost.co.in/app/images/iconl.png', width: 50.0,),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Text('Child Immunization Centre', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF0031be)), ),
                    SizedBox(height: 5.0,),
                    Text('Gurudwara, Sevoke Road, Siliguri', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Color(0XFF9a0b01)), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('12th July, 1992', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Gurudwara Sri Singh Sabha, Siliguri Sponsored by: Omkesh Neha Radha Memorial Charitable Trust', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Sunday Time : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('10.00 AM to 12.00 NOON', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Chairman : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Lion Ritesh Madhyani (77639 10140)', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Image.network('https://morehost.co.in/app/images/bank4.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank5.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank6.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/health5.jpg',),
                    SizedBox(height: 15.0,),
                    Text('Shri Shri Keshab Swami Goudiyamath, Burdwan Road, Siliguri', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('September, 1992', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Lion Binod Minda, Anjali Plaza, Basement, Noukaghat More, Siliguri', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Sunday Time :', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' 10.00 AM to 12.00 NOON', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Chairman : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' Lion Pravin Agarwal (89677 92050)', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Image.network('https://morehost.co.in/app/images/bank7.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/health4.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank8.jpg',),
                    SizedBox(height: 15.0,),
                    Text('Mother & Child Care Centre', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF0031be)), ),
                    Text('Shri Shri Keshab Swami Goudiyamath, Burdwan Road, Siliguri', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' 29th November, 2015', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('  Lion Binod Minda, Anjali Plaza, Basement, Noukaghat More, Siliguri', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Sponsored by : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' L. R. Berlia Social Development Foundation', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Sunday Time : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' 10.00 AM to 12.00 NOON', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank9.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank10.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/health1.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/health2.jpg',),
                    SizedBox(height: 15.0,),
                    Text('Free Homeo Clinic', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Color(0XFF0031be)), ),
                    Text('Shri Shri Keshab Swami Goudiyamath, Burdwan Road, Siliguri', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('1993', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' Shri Shri Keshab Swami Goudiyamath Sponsored by: Late Brij Mohan Chowdhury Doctor: Dr. K. B. Nandi (BHMS)', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Sunday Time : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text(' 10:00 AM to 11:00 AM', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text('Sri Sri Radha Krishna Mandir, Bhupendranagar, Ward No. 42', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('19th June, 2005', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Shri Shri Radha Krishna Mandir', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Sponsored by :', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Lion Mukesh Singhal', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Doctor : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('K. B. Nandi (BHMS)', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Turesday & Saturday Time : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('9.00 AM to 10.00 AM', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text('Anganbari School, Dangapara, P.O. Mahanvita', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                    Wrap(
                      children: [
                        Text('Estd : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('20th November, 2011', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Place Courtesy : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Anganbari School', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Sponsored by : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Dal Chand Mitruka Memorial Trust', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Doctor : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('Baidas Roy (RMP)', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    Wrap(
                      children: [
                        Text('Every Sunday Time : ', style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, ), ),
                        Text('2.30 PM onwards', style: TextStyle(fontSize: 14.0,), ),
                      ],
                    ),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank11.jpg',),
                    SizedBox(height: 5.0,),
                    Image.network('https://morehost.co.in/app/images/bank12.jpg',),
                    SizedBox(height: 15.0,),
                    Container(child: Text('From the Chairman Desk',  style: TextStyle(color: Color(0XFF013792), fontSize: 18.0, fontWeight: FontWeight.bold ), textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0XFF504d4c), width: 1.0)
                        ),
                      ),
                    ),
                    Image.network('https://morehost.co.in/app/images/bank13.jpg',),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
                        child: Wrap(
                          children: [
                            Text("First of all I would like to thank the president for again giving me the opportunity to take care of health centres. We are running two homeopathic and two children vaccination centres at different locations. The vaccination as per the WHO; is a simple,safe and effective way to protect ourselves against harmful diseases. The smooth running of the centres are not possible without the contribution of financial and service by our honourable members.", textAlign: TextAlign.justify, ),
                            Text("Chairman\nLion Ajay Sinhal\n\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        )
                    )


                  ],
                ),
              ),
            )
        )
    );
  }
}
