import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/Models/EventDetApi.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/committee_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
class EventDet extends StatefulWidget {
  const EventDet(
      { Key? key, required this.event_id})
      : super(key: key); //super is used to call the constructor of the base class which is the StatefulWidget here
  final  event_id;

  @override
  State<EventDet> createState() => _EventDetState();
}

class _EventDetState extends State<EventDet> {
  var event_id;
  List<EventDetApi> postList = [];
  List<EventDetApi> postList2 = [];
  late Future<List<EventDetApi>> fut_inst;

  Future<List<EventDetApi>> getPostApi(event_id) async{
   // print('RECEIVE VALUE FROM ROUTE : '+event_id.toString());
    var url = 'https://morehost.co.in/app/native_app/event_det.php?id=$event_id';
    print(url);
    final response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(EventDetApi.fromJson(i));
      }
      print(postList);
      return postList;
    }
    else
    {
      return postList;
    }
  }
  int activeIndex = 0;
  final controller = CarouselSliderController();
  final urlImages = [
    'https://images.unsplash.com/photo-1612825173281-9a193378527e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80',
    'https://images.unsplash.com/photo-1580654712603-eb43273aff33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];

  @override
  void initState() {
    event_id=widget.event_id;
   // print(event_id);
    // TODO: implement initState
    super.initState();
    fut_inst=getPostApi(event_id);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
          title: Text('Event Gallery', style: TextStyle(color: Colors.white),),

        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 0,horizontal: 0.0),
          color: Colors.black,
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



                      return  CarouselSlider.builder(
                            carouselController: controller,
                            itemCount: postList.length,
                            itemBuilder: (context, index, realIndex) {
                              final urlImage = "https://morehost.co.in/app/upload_image/activity/"+postList[index].imgUrl.toString();
                              return buildImage(urlImage!, index);
                            },
                            options: CarouselOptions(
                                viewportFraction: 1.0,
                                height: 400.0,
                                autoPlay: true,
                                enableInfiniteScroll: true,
                                enlargeCenterPage: true,
                                autoPlayInterval: Duration(seconds: 8),
                                onPageChanged: (index, reason) =>
                                    setState(() => activeIndex = index)));



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
Widget buildImage(String urlImage, int index) =>
    Container(child: Image.network(urlImage, fit: BoxFit.cover));

