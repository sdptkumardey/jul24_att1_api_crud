import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/SubBirthDayApi7.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/roll_menu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SubBirthday extends StatefulWidget {
  static String id='sub_birthday';

  @override
  State<SubBirthday> createState() => _SubBirthdayState();
}

class _SubBirthdayState extends State<SubBirthday> {
  late Future<List<SubBirthDayApi7>> fut_inst;
  List<SubBirthDayApi7> postList = [];
  String _selectedValue = '1';
  Future<List<SubBirthDayApi7>> getPostApi() async{
    postList = [];
    final response = await http.get(Uri.parse('https://morehost.co.in/app/native_app/sub_birthday.php'));
    var data = jsonDecode(response.body.toString());
    if(response.statusCode==200)
    {
      for(Map i in data)
      {
        postList.add(SubBirthDayApi7.fromJson(i));
      }
     // print(postList[0].imgArr?[0].name);
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

  int activeIndex = 0;
  final controller = CarouselSliderController();
  final urlImages = [
    'https://images.unsplash.com/photo-1612825173281-9a193378527e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=499&q=80',
    'https://images.unsplash.com/photo-1580654712603-eb43273aff33?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1627916607164-7b20241db935?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
    'https://images.unsplash.com/photo-1522037576655-7a93ce0f4d10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1570829053985-56e661df1ca2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
  ];

void selectAccr(int i,bool v)
{
setState(() {
  postList[0].data?[i].display = !v;
});


print('Calling selectAccr');
print(i);
//print(v);
print(postList[0].data?[i].display);

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
        title: Text('Birthday & Anniversary', style: TextStyle(color: Colors.white),),
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
  child: (postList[0].imgArr!.length>0) ?
  CarouselSlider.builder(
      carouselController: controller,
      itemCount: postList[0].imgArr?.length,
      itemBuilder: (context, index, realIndex) {
        final urlImage = 'https://morehost.co.in/app/upload_image/member/'+postList[0].imgArr![index].name!;
        return buildImage(urlImage!, index);
      },
      options: CarouselOptions(
height: 400.0,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: 2),
          enlargeCenterPage: true,
          onPageChanged: (index, reason) =>
              setState(() => activeIndex = index)))
      : SizedBox(height: 0,),

),


                      ListView.builder(itemBuilder: (context,index)
                      {

                      //print(disp);

                      return Container(
                      child: Column(
                      children: [
                        GestureDetector(
                          onTap : (){
                      selectAccr(index, postList[0].data![index].display!);
                      },
                        child: Container(
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                            postList[0].data?[index].monthName  as String,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),
                            textAlign: TextAlign.center,
                            ),
                            (postList[0].data?[index].display!  == true)?
                            Icon(Icons.arrow_circle_up, color: Colors.white,):Icon(Icons.expand_circle_down, color: Colors.white,)
                          ],
                        ),
                        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 7.0),
                        
                        decoration: BoxDecoration(
                        border: Border(
                        bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                        ),
                        color: Color(0XFFd7a533),
                        ),
                        ),
                      ),
















                        (postList[0].data?[index].display!  == true)?
                      ListView.builder(itemBuilder: (context,nindex)
                      {
                      String? d1 = postList[0].data![index].dayArr?[nindex].day.toString();
                      return Container(
                      child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Container(
                      child: Container(
                      color: Color(0XFFffcf01),
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                      child: Column(
                      children: [
                      Text(
                      d1!,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35.0),
                      textAlign: TextAlign.center,
                      ),
                      Text(postList[0].data?[index].monthName  as String,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                      textAlign: TextAlign.center,
                      ),
                      ],
                      ),
                      width: 70.0,
                      ),
                      ),

                      Expanded(
                      child: Container(
                      child: Column(
                      children: [

                        (postList[0].data![index].dayArr![nindex].numBirth!>0) ?
                        Container(
                      child: Row(
                      children: [
                      Icon(Icons.cake, color: Colors.white, size: 14.0,),
                      SizedBox(width: 7.0,),
                      Text('Birthday', style: TextStyle(fontSize: 14.0, color: Colors.white),  textAlign: TextAlign.center,),
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      color: Color(0XFFff5501),
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      ) : SizedBox(width: 0, height: 0,),
                         ListView.builder(itemBuilder: (context,oindex)
                      {
                      return
                        (postList[0].data![index].dayArr![nindex].birthArr?[oindex].type=='bday') ?
                        GestureDetector(
                          onTap: ()
                          {
                            num? numLink = postList[0].data![index].dayArr![nindex].birthArr![oindex].numLink;
                            if(numLink!>0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>
                                    MemberDetails(
                                      mem_id: postList[0].data![index].dayArr![nindex].birthArr![oindex]
                                          .member,)),
                              );
                            }
                          },
                          child: Container(
                                                child:  Text(postList[0].data![index].dayArr![nindex].birthArr![oindex].name!, style: TextStyle( fontSize: 12.0),),
                                                color: Colors.white,
                                                padding: EdgeInsets.only(left: 5.0),
                                                ),
                        ): SizedBox(width: 0, height: 0,);
                      },
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: postList[0].data![index].dayArr![nindex].birthArr?.length,
                      ),



                        (postList[0].data![index].dayArr![nindex].numMrr!>0) ?
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.cake, color: Colors.white, size: 14.0,),
                              SizedBox(width: 7.0,),
                              Text('Anniversary', style: TextStyle(fontSize: 14.0, color: Colors.white),  textAlign: TextAlign.center,),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),
                          color: Color(0XFFff5501),
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                        ) : SizedBox(width: 0, height: 0,),
                        ListView.builder(itemBuilder: (context,oindex)
                        {
                          return
                            (postList[0].data![index].dayArr![nindex].birthArr?[oindex].type=='aday') ?
                            GestureDetector(
                              onTap: ()
                              {
                                num? numLink = postList[0].data![index].dayArr![nindex].birthArr![oindex].numLink;
                                if(numLink!>0) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        MemberDetails(
                                          mem_id: postList[0].data![index].dayArr![nindex].birthArr![oindex]
                                              .member,)),
                                  );
                                }
                              },
                              child: Container(
                                child:  Text(postList[0].data![index].dayArr![nindex].birthArr![oindex].name!+' & '+postList[0].data![index].dayArr![nindex].birthArr![oindex].wifeName!, style: TextStyle( fontSize: 12.0),),
                                color: Colors.white,
                                padding: EdgeInsets.only(left: 5.0),
                              ),
                            ): SizedBox(width: 0, height: 0,);
                        },
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemCount: postList[0].data![index].dayArr![nindex].birthArr?.length,
                        ),






                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      ),
                      ),

                      ),


                      ],
                      ),
                      decoration: BoxDecoration(
                      border: Border(
                      bottom: BorderSide(color: Color(0XFFffcf01), width: 1.0),
                      ),
                      color: Color(0XFFffcf01),
                      ),
                        margin: EdgeInsets.only(bottom: 5.0),
                      );
                      },
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: postList[0].data?[index].dayArr?.length,
                      ):SizedBox(width: 0, height: 0,),




























                      ],
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      ),
                        margin: EdgeInsets.only(bottom: 1.0),
                      );
                      },
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: postList[0].data?.length,
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
                      itemCount: 1,
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
  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotWidth: 15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: urlImages.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}
Widget buildImage(String urlImage, int index) =>
    Container(child: Image.network(urlImage, fit: BoxFit.cover));

