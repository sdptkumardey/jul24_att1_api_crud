import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/RollHonourApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
class RollAnnapurna extends StatefulWidget {
  static String id='roll_annapurna';
  @override
  State<RollAnnapurna> createState() => _RollAnnapurnaState();
}

class _RollAnnapurnaState extends State<RollAnnapurna> {
  late Future<List<RollHonourApi>> fut_inst;
  List<RollHonourApi> postList = [];
  String _selectedValue = '1';
  Future<List<RollHonourApi>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/roll_annapurna.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(RollHonourApi.fromJson(i));
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
          title: Text('Annapurna Rasoi Chairperson', style: TextStyle(color: Colors.white, fontSize: 12.0),),
          actions: [
            CommotteeMenu()
          ],
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
                          child: Row(
                            children: [
                              Container(
                                child: Container(
                                  color: Color(0XFFff0000),
                                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                                  child: Text(postList[index].name.toString(), style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.0),
                              ),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListView.builder(itemBuilder: (context,nindex){
                                      return Wrap(
                                        children: [
                                          Text(postList[index].memberPostArr?[nindex].name as String, style: TextStyle(color: Color(0XFF2252a8), fontWeight: FontWeight.bold, fontSize: 14.0),),
                                          Text(' : ', style: TextStyle(color: Color(0XFF2252a8), fontWeight: FontWeight.bold, fontSize: 14.0),),
                                          GestureDetector(
                                              onTap : (){
                                                num? numLink = postList[index].memberPostArr?[nindex].numLink;
                                                if(numLink!>0)
                                                {
                                                  //                           print('Inside Non 0 Condition');
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => MemberDetails(mem_id:
                                                    postList[index].memberPostArr?[nindex].member
                                                      ,)),
                                                  );
                                                }
                                              },
                                              child: Text(postList[index].memberPostArr?[nindex].fullName as String, style: TextStyle(color: Color(0XFF000000), fontSize: 14.0),)),
                                        ],
                                      );
                                    },

                                      itemCount: postList[index].memberPostArr?.length,
                                      shrinkWrap: true,
                                      physics: ClampingScrollPhysics(),

                                    ),
                                  ],
                                ),
                              ),


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
        )



    );
  }
}
