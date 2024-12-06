import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/board_directors_api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:flutter/scheduler.dart';
class BoardDirectors extends StatefulWidget {
  static String id='board_of_directors';

  @override
  State<BoardDirectors> createState() => _BoardDirectorsState();
}

class _BoardDirectorsState extends State<BoardDirectors> {


  List<BoardDirectorsApi> postList = [];
  Future<List<BoardDirectorsApi>> getPostApi() async{
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/board_directors.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(BoardDirectorsApi.fromJson(i));
      }
      //print(postList);
      return postList;
    }
    else
    {
      return postList;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFc6cedf),
      appBar: AppBar(
        backgroundColor: Color(0Xff00529c),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
        title: Text('Board Members', style: TextStyle(color: Colors.white),),
      actions: [
        GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Home.id);
            },
            child: Icon(Icons.home, color: Color(0XFFFFFFFF),)),
      ],
      ),
      body: Container(
        color: Colors.white,
margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 10.0),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
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
                      return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context,index){
                            print(index);
                            return   GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MemberDetails(mem_id: postList[index].member,)),
                                );

                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                                    )
                                ),
                                margin: EdgeInsets.symmetric(vertical: 5.0),
                                padding: EdgeInsets.fromLTRB(5.0, 0, 5.0, 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(5.0, 0, 10.0, 0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Color(0XFFc6cedf))
                                        ),
                                        child: Image.network(postList[index].imgUrl.toString(),
                                          height: 85.0,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(postList[index].postName.toString(), style: TextStyle(color: Color(0XFFff0000), fontWeight: FontWeight.bold, fontSize: 16.0),),
                                        Text(postList[index].fullName.toString(), style: TextStyle(fontSize: 14.0),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}