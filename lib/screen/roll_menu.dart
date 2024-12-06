import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/screen/roll-honour.dart';
import 'package:jul24_att1_api_crud/screen/roll-blood.dart';
import 'package:jul24_att1_api_crud/screen/roll-health.dart';
import 'package:jul24_att1_api_crud/screen/roll-annapurna.dart';
import 'package:jul24_att1_api_crud/screen/roll-diagnostic.dart';
import 'package:jul24_att1_api_crud/screen/roll-school.dart';
class CommotteeMenu extends StatefulWidget {

  @override
  State<CommotteeMenu> createState() => _CommotteeMenuState();
}

class _CommotteeMenuState extends State<CommotteeMenu> {
  String _selectedValue = '1';
  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton<String>(
      offset: Offset(0, 50),
      color: Colors.white,
      onSelected: (String value) {
        print(value);
        setState(() {
          _selectedValue = value;
          if(_selectedValue == 'Home')
          {
            Navigator.pushNamed(context, Home.id);
          }
          else if(_selectedValue == 'Roll Of Honour')
          {
            Navigator.pushNamed(context, RollHonour.id);
          }
          else if(_selectedValue == 'Blood Bank Chairperson')
          {
            Navigator.pushNamed(context, RollBlood.id);
          }
          else if(_selectedValue == 'Health Committee Chairperson')
          {
            Navigator.pushNamed(context, RollHealth.id);
          }
          else if(_selectedValue == 'Annapurna Rasoi Chairperson')
          {
            Navigator.pushNamed(context, RollAnnapurna.id);
          }
          else if(_selectedValue == 'Diagnostic Centre Chairperson')
          {
            Navigator.pushNamed(context, RollDiagnostic.id);
          }
          else if(_selectedValue == 'Sulochana Mansi Jajodia Terai Lions Public School')
          {
            Navigator.pushNamed(context, RollSchool.id);
          }

        });
      },
      icon: Icon(Icons.menu, color: Colors.white,),
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: 'Home',
          child: Text('Home'),
        ),
        PopupMenuItem(
          value: 'Roll Of Honour',
          child: Text('Roll Of Honour'),
        ),
        PopupMenuItem(
          value: 'Blood Bank Chairperson',
          child: Text('Blood Bank Chairperson'),
        ),
        PopupMenuItem(
          value: 'Health Committee Chairperson',
          child: Text('Health Committee Chairperson'),
        ),
        PopupMenuItem(
          value: 'Annapurna Rasoi Chairperson',
          child: Text('Annapurna Rasoi Chairperson'),
        ),
        PopupMenuItem(
          value: 'Diagnostic Centre Chairperson',
          child: Text('Diagnostic Centre Chairperson'),
        ),
        PopupMenuItem(
          value: 'Sulochana Mansi Jajodia Terai Lions Public School',
          child: Text('Sulochana Mansi Jajodia \n Terai Lions Public School'),
        ),
      ],
    );
  }
}

