import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/Models/EventApi2.dart';
import 'package:jul24_att1_api_crud/screen/event_det.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class Event extends StatefulWidget {
  static String id='event';
  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  late Future<List<EventApi2>> fut_inst;
  List<EventApi2> postList = [];
  String _selectedValue = '1';

  Future<List<EventApi2>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/event.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(EventApi2.fromJson(i));
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
      backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Color(0Xff00529c),
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
          title: Text('Event', style: TextStyle(color: Colors.white),),

        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 3.0),
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
                        return GestureDetector(
                          onTap: (){
print(postList[index].id);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EventDet(event_id: postList[index].id,)),
                            );


                          },
                          child: Container(
                            child: Column(
                              children: [

                                Container(
                                    child: Column(
                                      children: [
                                        Image.network("https://morehost.co.in/app/upload_image/activity/"+postList[index].bannerUrl.toString(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                                          child: Text(postList[index].title.toString(),
                                            style: TextStyle(fontSize: 16.0,
                                            fontWeight: FontWeight.bold
                                            ),
                                          textAlign: TextAlign.center,

                                          ),
                                        )
                                      ],
                                    ),
                                )



                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                border: Border(
                                    bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                                ),
                              color: Color(0XFFffcf01),

                            ),
                            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 6.0),
                            margin: EdgeInsets.all(3.0),

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
