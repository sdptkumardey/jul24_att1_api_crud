import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/committee_menu.dart';
class BloodBankCommittee extends StatefulWidget {
  static String id='blood_bank_committee';
  @override
  State<BloodBankCommittee> createState() => _BloodBankCommitteeState();
}

class _BloodBankCommitteeState extends State<BloodBankCommittee> {

  late Future<List<ListOfCommitteeApi>> fut_inst;
  List<ListOfCommitteeApi> postList = [];
  String _selectedValue = '1';
  Future<List<ListOfCommitteeApi>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/blood-bank-committee.php'));
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
        title: Text('Blood Bank Committee', style: TextStyle(color: Colors.white),),
        actions: [
          CommotteeMenu()
        ],

      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
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
                              children: [
                                Center(child: Container(

                                  child: Text('COMMITTEE L.Y. 2024 - 25',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Color(0XFFf7f8fb)
                                  ),
                                  width: MediaQuery.of(context).size.width,
                                  padding: EdgeInsets.all(15.0),
                                )
                                ),








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



