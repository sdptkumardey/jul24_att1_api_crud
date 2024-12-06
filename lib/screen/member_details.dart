import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/member_details_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class MemberDetails extends StatefulWidget {
  static String id='members_details';
  const MemberDetails(
      { Key? key, required this.mem_id})
      : super(key: key); //super is used to call the constructor of the base class which is the StatefulWidget here
final  mem_id;
  @override
  State<MemberDetails> createState() => _MemberDetailsState();
}

class _MemberDetailsState extends State<MemberDetails> {
var mem_id;
List<MemberDetailsApi> postList = [];
List<MemberDetailsApi> postList2 = [];
late Future<List<MemberDetailsApi>> fut_inst;

Future<List<MemberDetailsApi>> getPostApi(mem_id) async{
  print('RECEIVE VALUE FROM ROUTE : '+mem_id.toString());
var url = 'https://morehost.co.in/app/native_app/member_details.php?id=$mem_id';
  print(url);
  final response = await http.get(Uri.parse(url));
  var data = jsonDecode(response.body.toString());
  print('calling getpostapi');
  if(response.statusCode==200)
  {
    postList.add(MemberDetailsApi.fromJson(data));
  //print(data);

    return postList;
  }
  else
  {
    return postList;
  }
}

makingPhoneCall(phone) async {
  var url = Uri.parse("tel:"+phone);
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

sendingMails(email) async {
  var url = Uri.parse("mailto:$email");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

void sendEmail(email){
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {
      'subject': 'CallOut user Profile',
      'body':  ''
    },
  );
  launchUrl(emailLaunchUri);
}
void sendWhatsapp(num){
  var url = Uri.parse("https://wa.me/$num");
  launchUrl(url);
}

textMe(String m) async {
  // Android
var uri = "sms:+$m?body=hello%20there";
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    // iOS
   var uri = 'sms:$m?body=hello%20there';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      mem_id=widget.mem_id;
print(mem_id);
      fut_inst=getPostApi(mem_id);
      print(postList2.length);

    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xffffcf01),
      appBar: AppBar(
        backgroundColor: Color(0Xff00529c),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
        title: Text('Member Details', style: TextStyle(color: Colors.white),),
        actions: [
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, Home.id);
              },
              child: Icon(Icons.home, color: Color(0XFFFFFFFF),)),
        ],
      ),
    body: FutureBuilder(
        future: fut_inst,
    builder: (context,snapshot) {


    if(!snapshot.hasData)
    {
    return SpinKitRotatingCircle(
    color: Colors.blueAccent,
    size: 50.0,
    );
    }
    else {
return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 2,
            child: Container(
              child: Row(
                children: [










                  Container(
                    margin: EdgeInsets.fromLTRB(10.0, 10.0, 3.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: postList[0].id.toString(),
                          child: Image.network(postList[0].imgUrl.toString(),
                            height: 150.0,
                          ),
                        ),
                        SizedBox(height: 2.0,),
                        Text('Membership No. :',style: TextStyle(fontSize: 12.0, color: Color(0Xff666666), fontWeight: FontWeight.bold),  ),
                        Text(postList[0].membershipNo.toString(),style: TextStyle(fontSize: 12.0, color: Color(0Xff666666)),  ),
                        Text('Joined Lionism :',style: TextStyle(fontSize: 12.0, color: Color(0Xff666666), fontWeight: FontWeight.bold),  ),
                        Text(postList[0].lionDate.toString(),style: TextStyle(fontSize: 12.0, color: Color(0Xff666666)),  ),
                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 0, 2.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width:140.0,
                         child: Text(postList[0].name.toString(),style: TextStyle(fontSize: 15.0, color: Color(0Xff00529c), fontWeight: FontWeight.bold),  )),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0Xff00529c),
                          ),
                          height: 33.0,
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0 ),
                          child: Text('Blood Gr : '+postList[0].bloodGroup.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xffffcf01), fontWeight: FontWeight.bold) ),
                        ),
                        Text('D.O.B. : '+postList[0].birthDate.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xff666666) )),
                        Text('D.O.M. : '+postList[0].marraigeDate.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xff666666) )),
                        Text('Spouse : ',style: TextStyle(fontSize: 15.0, color: Color(0Xffff0000), )),
                        Text(postList[0].spouseName.toString(),style: TextStyle(fontSize: 15.0, color: Color(0Xffff0000), )),

                        Text('Contact : '+postList[0].spouseMobile.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xff666666) )),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0Xff00529c),
                          ),
                          height: 26.0,
                          margin: EdgeInsets.symmetric(vertical: 2.0),
                          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0 ),
                          child: Text('Blood Gr : '+postList[0].spouseBloodGroup.toString(),style: TextStyle(fontSize: 13.0, color: Color(0Xffffcf01), fontWeight: FontWeight.bold) ),
                        ),
                        Text('D.O.B. : '+postList[0].spouseBirth.toString(),style: TextStyle(fontSize: 14.0, color: Color(0Xff666666) )),
                      ],
                    ),
                  )






                ],
              ),
            )),

        Expanded(

            child: Container(

                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.pin_drop, color: Color(0Xfff03a17),),
                                  SizedBox(width: 5.0,),
                                  Text('Office Address',style: TextStyle(fontSize: 14.0, color: Color(0Xffff0000), fontWeight: FontWeight.bold ))
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Text(postList[0].officeAddressCompany.toString(),style: TextStyle(fontSize: 12.0, color: Color(0Xff2b364a) )),
                              Text(postList[0].officeAddressDet.toString()
                                  +', '
                                  +postList[0].officeCity.toString()
                                  +' ,'
                                  +' Pin-'
                                  +postList[0].officePin.toString()

                                  ,style: TextStyle(fontSize: 12.0, color: Color(0Xff2b364a) )),
                            ],
                          ),
                        )
                    ),
                    Container(
                      width: 10.0,
                      color: Color(0Xffffcf01),
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.pin_drop, color: Color(0Xfff03a17),),
                                  SizedBox(width: 5.0,),
                                  Text('Residential Address',style: TextStyle(fontSize: 14.0, color: Color(0Xffff0000), fontWeight: FontWeight.bold ))
                                ],
                              ),
                              SizedBox(height: 5.0,),
                              Text(
                                  postList[0].residentAddress.toString(),
                                  style: TextStyle(fontSize: 12.0, color: Color(0Xff2b364a) )),
                            ],
                          ),
                        )
                    ),


                  ],
                )
            )),

        Expanded(

            child: Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 3.0, 10.0),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Icon(Icons.supervised_user_circle),
                        SizedBox(width: 5.0,),
                        Text(postList[0].occupation.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xff2b364a) )),
                      ],
                    ),
                    SizedBox(height: 8.0,),
                    GestureDetector(
                      onTap: (){







                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 200,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            makingPhoneCall(postList[0].mobile.toString());
                                          },
                                          child: Column(
                                            children: [
                                              Icon(FontAwesomeIcons.squarePhone, color: Colors.green, size: 50.0, ),
                                              Text('Call', style: TextStyle(fontSize: 14.0),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 15.0,),
                                        GestureDetector(
                                          onTap: (){
                                          sendWhatsapp(postList[0].mobile.toString());
                                          },
                                          child: Column(
                                            children: [
                                              Icon(FontAwesomeIcons.squareWhatsapp, color: Colors.green, size: 50.0,),
                                              Text('WhatsApp', style: TextStyle(fontSize: 14.0),)
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 15.0,),
                                        GestureDetector(
                                        onTap: (){
                                          textMe(postList[0].mobile.toString());
                                        },
                                            child: Column(
                                              children: [
                                                Icon(FontAwesomeIcons.commentDots, color: Colors.green, size: 50.0,),
                                                Text('SMS', style: TextStyle(fontSize: 14.0),)
                                              ],
                                            ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        );









                      },
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.green,),
                          SizedBox(width: 5.0,),
                          Text(postList[0].mobile.toString(),style: TextStyle(fontSize: 20.0, color: Color(0Xff150e9c),  )),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0,),
                    GestureDetector(
                      onTap: (){
                       // sendingMails(postList[0].email.toString());
                        sendEmail(postList[0].email.toString());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.email, color: Color(0Xff473ff2),),
                          SizedBox(width: 5.0,),
                          Text(postList[0].email.toString(),style: TextStyle(fontSize: 16.0, color: Color(0Xff150e9c),  )),
                        ],
                      ),
                    ),




                  ],
                )
            )),
        Container(
          height: 65.0,
          child: GestureDetector(
            onTap: (){
              if(postList[0].previous.toString()!='0')
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberDetails(mem_id: postList[0].previous.toString(),)),
                );
              }
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Container(
                  color: Color(0Xffff0000),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: Color(0Xffffcf01),),
                      Text('Previous',style: TextStyle(fontSize: 20.0, color: Colors.white,  )),
                    ],
                  ),
                )),
                SizedBox(width: 2.0,),
                Expanded(child: Container(
                  color: Color(0Xffff0000),
                  child: Center(child:
                  GestureDetector(
                    onTap: (){
                      if(postList[0].next.toString()!='0')
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MemberDetails(mem_id: postList[0].next.toString(),)),
                          );
                        }
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Next',style: TextStyle(fontSize: 20.0, color: Colors.white,  )),
                        Icon(Icons.arrow_forward, color: Color(0Xffffcf01),),
                      ],
                    ),
                  ),
                  ),
                )),


              ],
            ),
          ),
        )

      ],
    )
);
    }








    }
    )
    );
  }
}

