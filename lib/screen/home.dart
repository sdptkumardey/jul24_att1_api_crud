import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/services/global_var.dart';
import 'package:jul24_att1_api_crud/screen/event.dart';
import 'package:jul24_att1_api_crud/screen/pst.dart';
import 'package:jul24_att1_api_crud/style.dart';
import 'package:jul24_att1_api_crud/screen/board_directors.dart';
import 'package:jul24_att1_api_crud/screen/members_directory.dart';
import 'package:jul24_att1_api_crud/screen/honorary-members.dart';
import 'package:jul24_att1_api_crud/screen/list-of-committee.dart';
import 'package:jul24_att1_api_crud/screen/roll-honour.dart';
import 'package:jul24_att1_api_crud/screen/charter-member.dart';
import 'package:jul24_att1_api_crud/screen/global-leader.dart';
import 'package:jul24_att1_api_crud/screen/project-blood-bank.dart';
import 'package:jul24_att1_api_crud/screen/splash-screen.dart';
import 'package:jul24_att1_api_crud/screen/sub-club-info.dart';
import 'package:jul24_att1_api_crud/screen/sub_invocation.dart';
import 'package:jul24_att1_api_crud/screen/sub_peace_prayer.dart';
import 'package:jul24_att1_api_crud/screen/sub_flag_salutation.dart';
import 'package:jul24_att1_api_crud/screen/sub_birthday.dart';
import 'package:jul24_att1_api_crud/screen/sub_pmjf.dart';
import 'package:jul24_att1_api_crud/screen/sub_dff.dart';
import 'package:jul24_att1_api_crud/screen/sub_blood_group.dart';
import 'package:jul24_att1_api_crud/screen/sub_slogan.dart';


import 'package:flutter/scheduler.dart';
class Home extends StatefulWidget {
  static String id='home';
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  void initState() {
    // TODO: implement initState
    super.initState();
    if(loadScreen=='No')
    {
      setState(() {
        loadScreen='Loaded';
        print('Splash Screen Load');
      });


      SchedulerBinding.instance.addPostFrameCallback((_) {
        Navigator.pushNamed(context, SplashScreen.id);
      });


    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color(0XFF00529c),
        body: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Expanded(
             flex: 1,
               child:Container(
               decoration: BoxDecoration(
                 color: Color(0XFFf7ca65),
                 borderRadius: BorderRadius.vertical(
                     bottom: Radius.elliptical(
                         MediaQuery.of(context).size.width, 30.0)
                 ),
               ),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Expanded(child:
                   Container(
                       padding:EdgeInsets.symmetric(vertical: 10.0),
                       child: Image.network('https://morehost.co.in/app/images/logo2.png',
                         height: 100.0,
                       ))
                   ),
                   Expanded(
                       flex: 2,
                       child:        Container(
                       child: Image.network('https://morehost.co.in/app/images/LION-NEW-LOGO-24-25.png',
                         height: 190.0,
                       ))),
                   Expanded(child:        Container(
           margin: EdgeInsets.symmetric(vertical: 30.0),
                       child: GestureDetector(
                           onTap: (){
                             _scaffoldKey.currentState?.openEndDrawer();

                           },
                           child: Icon(Icons.menu)))),
                 ],
               )
               )
           ),

            Expanded(
                flex: 2,
                child:Container(
                    decoration: BoxDecoration(
                        color: Color(0XFF00529c)),
                    child: Column(

                      children: [
SizedBox(height: 15.0,),
                        Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Expanded(child: Column(
                              children: [
                                GestureDetector(
                                  onTap:(){
print('ON BOARD OF DIRECTOR');
                                    Navigator.pushNamed(context, BoardDirectors.id);
                            },
                                  child: Container(
                                    decoration: front_border_left,
                                    padding: front_button_padding,
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Center(child: Text('Board Of\nDirectors', style: front_text_button,)),
                                  ),
                                ),

                              ],
                            )),
                            Column(
                              children: [
                                Container(
                                width: 10.0,
                                height: 50.0,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xFF7F7F7F)),
                                      )
                                  ),
                                  padding: front_button_padding,
                                  margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                ),

                              ],
                            ),
                            Expanded(child:

                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, MembersDirectory.id);
                              },
                              child: Container(
                                decoration: front_border_right,
                                padding: front_button_padding,
                                                       margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                               child: Center(child: Text('Members\nDirectory', style: front_text_button)),
                              ),
                            )),

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Expanded(child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, Event.id);
                                  },
                                  child: Container(
                                    decoration: front_border_left,
                                    padding: front_button_padding,
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Center(child: Text('Events/\nActivities', style: front_text_button, textAlign: TextAlign.center, )),
                                  ),
                                ),

                              ],
                            )),
                            Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xFF7F7F7F)),
                                      )
                                  ),
                                  padding: front_button_padding,
                                  margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                ),

                              ],
                            ),
                            Expanded(child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, GlobalLeader.id);
                              },
                              child: Container(
                                decoration: front_border_right,
                                padding: front_button_padding,
                                margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                                child: Center(child: Text('Global & District\n322F Leaders', style: front_text_button, textAlign: TextAlign.center)),
                              ),
                            )),

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Expanded(child: Column(
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.pushNamed(context, ProjectBloodBank.id);
                                  },
                                  child: Container(
                                    decoration: front_border_left,
                                    padding: front_button_padding,
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Center(child: Text('Permanent\nProjects', style: front_text_button, textAlign: TextAlign.center,)),
                                  ),
                                ),

                              ],
                            )),
                            Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xFF7F7F7F)),
                                      )
                                  ),
                                  padding: front_button_padding,
                                  margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                ),

                              ],
                            ),
                            Expanded(child: GestureDetector(
onTap: (){
  Navigator.pushNamed(context, ListOfCommittee.id);
},
                              child: Container(
                                decoration: front_border_right,
                                padding: front_button_padding,
                                margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                                child: Center(child: Text('List of\nCommittees', style: front_text_button, textAlign: TextAlign.center,)),
                              ),
                            )),

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Expanded(child: Column(
                              children: [
                                GestureDetector(
                                  onTap :()
                              {
                                Navigator.pushNamed(context, HonoraryMembers.id);
                              },
                                  child: Container(
                                    decoration: front_border_left,
                                    padding: front_button_padding,
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Center(child: Text('Honorary\nMembers', style: front_text_button, textAlign: TextAlign.center,)),
                                  ),
                                ),

                              ],
                            )),
                            Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xFF7F7F7F)),
                                      )
                                  ),
                                  padding: front_button_padding,
                                  margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                ),

                              ],
                            ),
                            Expanded(child: GestureDetector(
                              onTap :()
                              {
                                Navigator.pushNamed(context, RollHonour.id);
                              },
                              child: Container(
                                decoration: front_border_right,
                                padding: front_button_padding,
                                margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                                child: Center(child: Text('Roll of\nHonour', style: front_text_button,  textAlign: TextAlign.center,)),
                              ),
                            )),

                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 5.0,),
                            Expanded(child: Column(
                              children: [
                                GestureDetector(
                                  onTap :()
                                  {
                                    Navigator.pushNamed(context, Pst.id);
                                  },
                                  child: Container(
                                    decoration: front_border_left,
                                    padding: front_button_padding,
                                    margin: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Center(child: Text('PST &\nUpcoming Leaders', style: front_text_button, textAlign: TextAlign.center,)),
                                  ),
                                ),

                              ],
                            )),
                            Column(
                              children: [
                                Container(
                                  width: 10.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xFF7F7F7F)),
                                      )
                                  ),
                                  padding: front_button_padding,
                                  margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                                ),

                              ],
                            ),
                            Expanded(child: GestureDetector(
                              onTap :()
                              {
                                Navigator.pushNamed(context, CharterMember.id);
                              },
                              child: Container(
                                decoration: front_border_right,
                                padding: front_button_padding,
                                margin: EdgeInsets.fromLTRB(10.0, 0, 5.0, 0),
                                child: Center(child: Text('Charter\nMember', style: front_text_button,  textAlign: TextAlign.center,)),
                              ),
                            )),


                          ],
                        ),

                      ],

                    ))
            ),



            Expanded(
                flex: 1,
                child:Container(
                    decoration: BoxDecoration(
                        color: Color(0XFFf7ca65)
                    ),
                    child: Image.network('https://morehost.co.in/app/images/notice5.jpg')
                )
            ),


          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                tileColor: Color(0XFFdfdfde),
                leading: const Icon(Icons.home),
                title: const Text(' Home '),
                onTap: () {
                  Navigator.pop(context);
                },
                trailing: const Icon(Icons.cancel, color: Colors.red,),
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_rounded),
                title: const Text(' Club Information '),
                onTap: () {
                  Navigator.pushNamed(context, SubClubInfo.id);
                },
              ),
              ListTile(
                tileColor: Color(0XFFededed),
                leading: const Icon(Icons.assistant),
                title: const Text(' Rites & Rituals '),
                onTap: () {
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_rounded),
                title: const Text(' Invocation '),
                onTap: () {
                  Navigator.pushNamed(context, SubInvocation.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_rounded),
                title: const Text(' Peace Prayer '),
                onTap: () {
                  Navigator.pushNamed(context, SubPeacePrayer.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.arrow_circle_right_rounded),
                title: const Text(' Flag Salutation '),
                onTap: () {
                  Navigator.pushNamed(context, SubFlagSalutation.id);
                },
              ),
              Divider(thickness: 1,),
              ListTile(
                leading: const Icon(Icons.cake),
                title: const Text(' Birthday & Anniversary '),
                onTap: () {
                  Navigator.pushNamed(context, SubBirthday.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text(' PMJF & MJF Members '),
                onTap: () {
                  Navigator.pushNamed(context, SubPmjf.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text(' DFF Members '),
                onTap: () {
                  Navigator.pushNamed(context, SubDff.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.water_drop, color: Colors.red,),
                title: const Text(' Members Blood Group '),
                onTap: () {
                  Navigator.pushNamed(context, SubBloodGroup.id);
                },
              ),
              ListTile(
                leading: const Icon(Icons.spatial_audio_off),
                title: const Text(' Slogan '),
                onTap: () {
                  Navigator.pushNamed(context, SubSlogan.id);
                },
              ),



            ],
          ),
        ),
      ),
    );
  }
}
