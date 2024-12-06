import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/Models/list-of-committee-api.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/committee_menu.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
class Pst extends StatefulWidget {
  static String id='pst';

  @override
  State<Pst> createState() => _PstState();
}

class _PstState extends State<Pst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Color(0Xff00529c),
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_outlined, color: Color(0XFFFFFFFF),)),
        title: Text('PST & Upcoming Leaders', style: TextStyle(color: Colors.white, fontSize: 16.0 ),),
      ),
      body: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.network('https://morehost.co.in/app/images/pst.jpg',),
            
                Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text('PRESIDENT', style: TextStyle(color: Color(0XFF0066ff), fontSize: 12.0,  fontWeight: FontWeight.bold), textAlign: TextAlign.start, ),
                          Text(' : ',),
                          Text('Lion Ajay Dhanotiwala', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('SECRETARY', style: TextStyle(color: Color(0XFF0066ff), fontWeight: FontWeight.bold, fontSize: 12.0, ), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Ajay Kumar Deora', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('TREASURER', style: TextStyle(color: Color(0XFF0066ff), fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Manoj Goyal', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                      ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                ),
            
            
                Image.network('https://morehost.co.in/app/images/pst1.jpg',),
            
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text('PRESIDENT', style: TextStyle(color: Color(0XFF0066ff), fontWeight: FontWeight.bold, fontSize: 12.0, ), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Ajay Dhanotiwala', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('IPP', style: TextStyle(color: Color(0XFF0066ff), fontWeight: FontWeight.bold, fontSize: 12.0, ), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Kamlesh Gilra', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('VICE PRESIDENT (1ST)', style: TextStyle(color: Color(0XFF0066ff), fontWeight: FontWeight.bold, fontSize: 12.0, ), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Manish Kr. Agarwal (RD)', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('VICE PRESIDENT (2ND)', style: TextStyle(color: Color(0XFF0066ff), fontSize: 12.0,  fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Shyam Agarwal', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                      Wrap(
                        children: [
                          Text('VICE PRESIDENT (3RD)', style: TextStyle(color: Color(0XFF0066ff),fontSize: 12.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,),
                          Text(' : ',),
                          Text('Lion Kamal Singh Kundalia', style: TextStyle(color: Colors.black, fontSize: 12.0, ),),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Color(0XFFdedcdc), width: 1.0)
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
                ),
            
            Container(
              color: Color(0XFF9e0c01),
            padding: EdgeInsets.all(10.0),
            child: Text('From the President Desk', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            ),
                Image.network('https://morehost.co.in/app/images/pst2.jpg',),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Wrap(
                    children: [
                      Text('Dear Members,'),
                      Text("It is with great honor and humility that I step into the role of President of our esteemed Lions Club of  Siliguri Terai . As I embark on this journey, I am filled with a sense of duty and responsibility to uphold the values and traditions that define our organization. \n First and foremost, I want to express my heartfelt gratitude to each and every one of you for entrusting me with the position of President. Your confidence in me is both humbling and inspiring, and I am committed to serving you and our community to the best of my abilities. \n As we look ahead to the year ahead, I am excited about the opportunities that lie before us. Together, we have the power to make a meaningful difference in the lives of those around us, whether it's through community service projects. The basic Humanitarian needs of Health ,Food & Education are all being catered by our organisation. I am really excited to bring in shape our dream project of a new diagnostic centre and a School. We as a team shall take all steps to complete these projects within the decided timelines. \n I believe that our strength as a club lies in our unity and our shared commitment to service. By working together, supporting one another, and harnessing our collective passion and dedication, there is no limit to what we can achieve. \n I am eager to collaborate with each of you, to listen to your ideas and insights, and to lead with integrity, transparency, and compassion. Together, let us continue to embody the spirit of Lionism and be a beacon of hope and positivity in our community. \n Thank you once again for this opportunity to serve as your President. I am excited about the journey ahead and confident that, together, we will make a lasting impact that will resonate for years to come. \n Warm regards, \n", textAlign: TextAlign.justify, ),
                    Text("Yours in service. \n Ajay Dhanotiwala \n President 2024-25 \n Lions Club Of Siliguri Terai \n", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],

                  )
                ),




                Container(
                  color: Color(0XFF9e0c01),
                  padding: EdgeInsets.all(10.0),
                  child: Text('From the Secretary Desk', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                Image.network('https://morehost.co.in/app/images/pst3.jpg',),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Wrap(
                      children: [
                        Text('Dear Members,'),
                        Text("It gives me a sense of immense pride and gratefulness that you all have elevated me to the coveted post of Secretary of Lions Club of SiliguriTerai. I have no words to express my feeling of gratitude. \n As I embark on this journey, I pledge before you that I shall discharge my duties to the best of my abilities. In this journey I would seek the support of all our leaders who have brought this organisation to such high pedestal, that the entire society looks upon us, when it comes to rendering of humanitarian services.  \n Lions Club of SiliguriTerai is not just a name, it’s a brand and it shall be my endeavour to add value to our brand and make it a super brand.  \n As I assume this office of the Secretary today, I plan to take our communications to a digital platform and the 1st step in this direction is the launch of our clubs own mobile app. \n To keep pace with the technology world and to keep our members abreast with the latest developments, projects and information, we now present this mobile app.  \n Download now and embark on this journey with us!  \n Wishing you exciting times ahead.", textAlign: TextAlign.justify, ),
                        Text(" Yours in service. \n Ajay Deora \n Secretary  \n Lions Club of Siliguri Terai \n (2024-25) \n", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],

                    )
                ),






                Container(
                  color: Color(0XFF9e0c01),
                  padding: EdgeInsets.all(10.0),
                  child: Text('From the Treasurer Desk', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                ),
                Image.network('https://morehost.co.in/app/images/pst4.jpg',),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                    child: Wrap(
                      children: [
                        Text('Treasurer \nLions Club of Siliguri Terai \n(2024-25)\n', style: TextStyle( fontWeight: FontWeight.bold),),
                        Text("साथियो नमस्कार\nआप लोगों ने आनेवाले कार्यकाल के लिये मुझ पर जो भरोसा जताया है में उसके लिये आप सभी साथियों का अभार व्यक्त करता\nजैसा आप सभी जानते है कि जीवन को सुचारू रूप से चलाने के लिये धन की भी आवश्यकता होती है उसी प्रकार संगठन के लिये भी धन रक्त प्रवाह का कार्य करता है। लिखनी है नई कहानी को सार्थक बनाने के लिये आप सभी साथियो का बिशेष सह‌योग की हम अपेक्षा करते है जैसा कि कालान्तर में मिलता रहा है।\n साथियो, मैं आप सभी को विश्वास दिलाना चाहता हूँ कि आपलोगो से संग्रहित किया गया धन का इस्तेमाल पूर्णरूपेन इच्छित कार्यों पर ही खर्च किया जायेगा आपका अपना\n", textAlign: TextAlign.justify, ),
                        Text("मनोज गोयल\nकोषाध्यक्ष ", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],

                    )
                ),





            
            
              ],
            ),
          )
      ),
    );
  }
}
