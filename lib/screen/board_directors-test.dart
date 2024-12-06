import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jul24_att1_api_crud/Models/borad_members.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class BoardDirectors extends StatefulWidget {
  static String id='board_of_directors';

  @override
  State<BoardDirectors> createState() => _BoardDirectorsState();
}

class _BoardDirectorsState extends State<BoardDirectors> {
  List<BoradMembers> postList = [];
  Future<List<BoradMembers>> getPostApi() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
      {
    for(Map i in data)
      {
        postList.add(BoradMembers.fromJson(i));
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
      appBar: AppBar(
        backgroundColor: Color(0Xff00529c),
        title: Text('Board Of Directors', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
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
                  );;
                }
                else
                {
                  return ListView.builder(
                      itemCount: postList.length,
                      itemBuilder: (context,index){
                        print(index);
                        return   Container(
                          decoration: BoxDecoration(
                            color: Color(0XFFeceff4),
                              border: Border(
                                bottom: BorderSide(color: Colors.black12),
                              )
                          ),
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(postList[index].title.toString(), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), ),
                              Text('At Labor Notes 2024, the labor movement showed it won’t abandon militancy, Palestine, or each other—as some cops who tried to arrest pro-Palestine protesters learned.', style: TextStyle(fontSize: 14.0), ),
                            ],
                          ),
                        );
                      });
                }
              }
          ),



        )
        ],
      ),
    );
  }
}
