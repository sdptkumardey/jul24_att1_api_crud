import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/Models/members_directory_api.dart';

class MembersDirectory extends StatefulWidget {
  static String id='members_directory';
  @override
  State<MembersDirectory> createState() => _MembersDirectoryState();
}
class _MembersDirectoryState extends State<MembersDirectory> {
  List<MembersDirectoryApi> postList = [];
  List<MembersDirectoryApi> postList2 = [];
  late Future<List<MembersDirectoryApi>> fut_inst;

  TextEditingController searchController = TextEditingController();
  String search = '';
  Future<List<MembersDirectoryApi>> getPostApi() async{
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/member_directory.php'));
    var data = jsonDecode(response.body.toString());

    print('calling getpostapi');
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(MembersDirectoryApi.fromJson(i));
      }
      postList2 = postList;
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
   print(postList2.length);
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
        title: Text('Member Directory', style: TextStyle(color: Colors.white),),
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

            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: searchController,
                onChanged: (String s){
                  setState(() {
                   search = s;
                  });
                  print(postList2.length);
                  List<MembersDirectoryApi> result = [];
                  for(var i=0; i<postList2.length; i++)
                    {
if(postList2[i].name!.toLowerCase().contains(search.toLowerCase()))
  {
    result.add(
        postList2[i]
    );
  }
                    }
                  setState(() {
                    postList=result;
                  });
                  print(result.length);
print('--------------ON CHANGED CALLED---------------');

                },
                style: TextStyle(fontSize: 14.0, color: Color(0xFF282828)),
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Search Member Name',
                    labelStyle: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff817d7d)
                    )
                ),
              ),
            ),

            Expanded(
              child: FutureBuilder(
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
                      return ListView.builder(
                          itemCount: postList.length,
                          itemBuilder: (context,index){
                          //  print(index);

                                return   GestureDetector(
                                  onTap: ()
                                  {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MemberDetails(mem_id: postList[index].id,)),
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
                                            child: Hero(
                                              tag: postList[index].id.toString(),
                                              child: Image.network(postList[index].imgUrl.toString(),
                                                height: 85.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(postList[index].name.toString(), style: TextStyle(color: Color(0XFF434c5e), fontWeight: FontWeight.bold, fontSize: 15.0),),
                                            SizedBox(height: 5.0,),
                                            Row(
                                              children: [
                                                Icon(Icons.phone, color: Color(0XFF267734),),
                                                SizedBox(width: 5.0,),
                                                Text(postList[index].mobile.toString(), style: TextStyle(fontSize: 14.0),),
                                              ],
                                            ),
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
