import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/SubBloodGroupApi2.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class SubBloodGroup extends StatefulWidget {
  static String id='sub_blood_group';
  @override
  State<SubBloodGroup> createState() => _SubBloodGroupState();
}

class _SubBloodGroupState extends State<SubBloodGroup> {
  late Future<List<SubBloodGroupApi2>> fut_inst;
  List<SubBloodGroupApi2> postList = [];
  String _selectedValue = '1';

  Future<List<SubBloodGroupApi2>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/sub_blood_group.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(SubBloodGroupApi2.fromJson(i));
      }
      print(postList);
      return postList;
    }
    else
    {
      return postList;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fut_inst=getPostApi();
  }

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
        title: Text('Members Blood Group', style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child:


            FutureBuilder(
                future: fut_inst,

                builder: (context,snapshot)
                {
                  if(!snapshot.hasData)
                  {
                    return SpinKitRotatingCircle(
                      color: Colors.blueAccent,
                      size: 50.0,
                    );
                  }
                  else
                  {



                    return ListView.builder(itemBuilder: (context,index)
                    {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(

                        child: Text(postList[index].bloodGroupName.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                        textAlign: TextAlign.center,
                      ),
                              color: Color(0XFFff0000),
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                            ),

                            ListView.builder(itemBuilder: (context,nindex){
                              return GestureDetector(
                                onTap: (){

                                  num? numLink = postList[index].listName?[nindex].numLink;
                    if(numLink!>0) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>
                            MemberDetails(
                              mem_id: postList[index].listName?[nindex]
                                  .member,)),
                      );
                    }
                                },
                                child: Container(
                                  child: Text(postList[index].listName?[nindex].name as String, style: TextStyle(fontSize: 14.0),
                                    textAlign: TextAlign.left,
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                                    ),
                                    color: Color(0XFFFFFFFF),
                                  ),
                                  padding: EdgeInsets.only(left: 10.0,top: 8.0, bottom: 8.0),
                                ),
                              );
                            },
                              itemCount: postList[index].listName?.length,
                              shrinkWrap: true,
                              physics: ClampingScrollPhysics(),

                            )



















                          ],
                        ),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                            )
                        ),
                      );
                    },
                      itemCount: postList.length,
                    );

                  }
                }




            ),



            ),
          ],

        ),
      ),
    );
  }
}
