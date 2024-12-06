import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/screen/project-blood-bank.dart';
import 'package:jul24_att1_api_crud/screen/project-health.dart';
import 'package:jul24_att1_api_crud/screen/project-school.dart';
import 'package:jul24_att1_api_crud/screen/project-annapurna.dart';
import 'package:jul24_att1_api_crud/screen/project-diagnostic.dart';
import 'package:jul24_att1_api_crud/screen/project-upcoming.dart';
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
          else if(_selectedValue == 'Terai Blood Bank')
          {
            Navigator.pushNamed(context, ProjectBloodBank.id);
          }
          else if(_selectedValue == 'Terai Health Centre')
          {
            Navigator.pushNamed(context, ProjectHealth.id);
          }
          else if(_selectedValue == 'Sulochana Mansi Jajodia Terai Lions Public School')
          {
            Navigator.pushNamed(context, ProjectSchool.id);
          }
          else if(_selectedValue == 'Annapurna Rasoi')
          {
            Navigator.pushNamed(context, ProjectAnnapurna.id);
          }
          else if(_selectedValue == 'Diagnostic Centre')
          {
            Navigator.pushNamed(context, ProjectDiagnostic.id);
          }
          else if(_selectedValue == 'Upcoming Service Project')
          {
            Navigator.pushNamed(context, ProjectUpcoming.id);
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
          value: 'Terai Blood Bank',
          child: Text('Terai Blood Bank'),
        ),
        PopupMenuItem(
          value: 'Terai Health Centre',
          child: Text('Terai Health Centre'),
        ),
        PopupMenuItem(
          value: 'Sulochana Mansi Jajodia Terai Lions Public School',
          child: Text('Sulochana Mansi Jajodia \n Terai Lions Public School'),
        ),
        PopupMenuItem(
          value: 'Annapurna Rasoi',
          child: Text('Annapurna Rasoi'),
        ),
        PopupMenuItem(
          value: 'Diagnostic Centre',
          child: Text('Diagnostic Centre'),
        ),
        PopupMenuItem(
          value: 'Upcoming Service Project',
          child: Text('Upcoming Service Project'),
        ),
      ],
    );
  }
}