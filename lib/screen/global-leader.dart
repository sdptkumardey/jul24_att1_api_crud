import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/committee_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class GlobalLeader extends StatefulWidget {
  static String id='global_leader';

  @override
  State<GlobalLeader> createState() => _GlobalLeaderState();
}

class _GlobalLeaderState extends State<GlobalLeader> {
  late Future<List<ListOfCommitteeApi>> fut_inst;
  List<ListOfCommitteeApi> postList = [];
  String _selectedValue = '1';
  Future<List<ListOfCommitteeApi>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/global_leader.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(ListOfCommitteeApi.fromJson(i));
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
  void initState() {
    // TODO: implement initState
    super.initState();
    fut_inst=getPostApi();
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
        title: Text('Global & District 322F Leaders', style: TextStyle(color: Colors.white, fontSize: 14.0),),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

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



                        return ListView.builder(itemBuilder: (context,index)
                        {
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [


                                ListView.builder(itemBuilder: (context,index){
                                  return Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                                          child: Text(postList[index].name.toString(), textAlign: TextAlign.center,  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 18.0),),
                                        ),


                                        ListView.builder(itemBuilder: (context,nindex){
                                          return Container(
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                                                )
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(postList[index].memberPostArr?[nindex].name as String, style: TextStyle(color: Color(0Xff0066ff), fontWeight: FontWeight.bold, fontSize: 16.0),),

                                                ListView.builder(itemBuilder: (context, zindex){
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap : (){
//                         print(postList[index].memberPostArr?[nindex].memberPostPerson?[zindex].member);
//                         print(postList[index].memberPostArr?[nindex].memberPostPerson?[zindex].numLink);
                                                            num? numLink = postList[index].memberPostArr?[nindex].memberPostPerson?[zindex].numLink;
                                                            if(numLink!>0)
                                                            {
                                                              //                           print('Inside Non 0 Condition');
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(builder: (context) => MemberDetails(mem_id:
                                                                postList[index].memberPostArr?[nindex].memberPostPerson?[zindex].member
                                                                  ,)),
                                                              );
                                                            }






                                                          },
                                                          child: Text(postList[index].memberPostArr?[nindex].memberPostPerson?[zindex].fullName as String,
                                                            style: TextStyle(color: Colors.black, fontSize: 14.0),)),
                                                    ],
                                                  );
                                                },
                                                  itemCount: postList[index].memberPostArr?[nindex].memberPostPerson?.length,
                                                  shrinkWrap: true,
                                                  physics: ClampingScrollPhysics(),
                                                ),


                                              ],
                                            ),
                                          );
                                        },
                                          itemCount: postList[index].memberPostArr?.length,
                                          shrinkWrap: true,
                                          physics: ClampingScrollPhysics(),
                                        ),



                                      ],
                                    ),
                                  );
                                },
                                  itemCount: postList.length,
                                  shrinkWrap: true,
                                  physics: ClampingScrollPhysics(),
                                ),


                                Container(

                                  color: Color(0XFF9e0c01),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('From the Desk of District Governor', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, ),),
                                margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                                ),
                                Image.network('https://morehost.co.in/app/images/dg.jpg',),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                    child: Wrap(
                                      children: [
                                        Text('Dear Members,'),
                                        Text("I would like to congratulate the new team of Lions Club of Siliguri Terai for their new addition: Terai e-Directory. It is a great initiative and I am looking forward to its great success. The Club has been doing a spectacular work and the initiatives and events organized by the Club are truly inspiring and have set a high standard for all of us in the District.\nThe entire Terai family is always fully energized in achieving our visions and I am sure that it will stand by and achieve its commitments with great passion. I am excited to see the unique initiatives and the commendable work the Club will be doing in the 25th year celebration of our District 322f.\nMy best wishes to the upcoming team under the leadership of President Lion Ajay Dhanotiwala.", textAlign: TextAlign.justify, ),
                                      ],
                                    )
                                ),


                                Container(

                                  color: Color(0XFF9e0c01),
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('From the Desk of Cabinet Secretary', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, ),),
                                  margin: EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                                ),
                                Image.network('https://morehost.co.in/app/images/cs.jpg',),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                                    child: Wrap(
                                      children: [
                                        Text("Dear Lions Club of Siliguri Terai,\nAs we embark upon a new Lionistic Year 2024-25, I extend my heartfelt best wishes to each and every member of our esteemed club. Your dedication to service and community upliftment has been truly commendable.\nI would like to express my gratitude for your continuous efforts in making a positive impact in our community. Your commitment to the Lions mission is inspiring and sets a remarkable example for others to follow.\nFurthermore, I wish to acknowledge the invaluable resource that is your e-Directory. Its informative content serves as a guiding light, aiding us in our endeavours and ensuring efficient communication and coordination within our district.\nLet us continue to work together with passion and determination, striving towards our shared goals of service and humanitarianism. May this new Lionistic Year be filled with boundless opportunities for growth, success, and fulfilment.\nWith warm regards,\n", textAlign: TextAlign.justify, ),
                                        Text("Lion Jaya Periwal\nCabinet Secretary\nDistrict 322F\"\n\n", style: TextStyle(fontWeight: FontWeight.bold),)
                                      ],
                                    )
                                ),



                              ],
                            ),
                          );
                        },
                          itemCount: 1,
                        );

                      }
                    }




                ),

              ),
            ],
          )
      ),
    );
  }
}
