import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/services/global_var.dart';
import 'package:jul24_att1_api_crud/style.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/scheduler.dart';
class SplashScreen extends StatefulWidget {
  static String id='splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      duration:  Duration(seconds: 3),
      vsync: this,
      upperBound: 250.0,
      lowerBound: 100.0
    );
controller.forward();
controller.addListener((){
 // print(controller.value);
setState(() {

});
});


      Future.delayed(Duration(seconds: 3),(){
        SchedulerBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamed(context, Home.id);
        });
        print('REDIRECTION DONE');
      });



  }





  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFF00529c),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/bg1.jpg"), fit: BoxFit.cover,),
            color: Color(0XFFf7ca65),

            gradient: LinearGradient(
                colors: [
                  const Color(0xFFb8923d),
                  const Color(0xFFf3e4c2),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // Image.network('https://morehost.co.in/app/images/LION-NEW-LOGO-24-25.png'),
              Image.asset('images/lion-icon-2024.png',
              width: controller.value,
              ),
              SizedBox(height: 40.0,),
              SpinKitThreeBounce(
                color: Colors.white,
                size: 50.0,
              )

            ],
          ),
        ),

      ),
    );
  }
}
