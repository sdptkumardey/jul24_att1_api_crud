import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/screen/annapurna-committee.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/screen/list-of-committee.dart';
import 'package:jul24_att1_api_crud/screen/blood-bank-committee.dart';
import 'package:jul24_att1_api_crud/screen/school-committee.dart';
import 'package:jul24_att1_api_crud/screen/diagnostic-committee.dart';
import 'package:jul24_att1_api_crud/screen/health-committee.dart';
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
          else if(_selectedValue == 'Home')
          {

          }
          else if(_selectedValue == 'Committee')
          {
            Navigator.pushNamed(context, ListOfCommittee.id);
          }
          else if(_selectedValue == 'Blood Bank Committee')
          {
            Navigator.pushNamed(context, BloodBankCommittee.id);
          }
          else if(_selectedValue == 'Sulochana Mansi Jajodia Terai Lions Public School')
          {
            Navigator.pushNamed(context, SchoolCommittee.id);
          }
          else if(_selectedValue == 'Terai Annapurna Rasoi')
          {
            Navigator.pushNamed(context, AnnapurnaCommittee.id);
          }
          else if(_selectedValue == 'Terai Diagnostic Centre')
          {
           // print('Terai Diagnostic Centre');
           // print(DiagnosticCommittee.id);
            Navigator.pushNamed(context, DiagnosticCommittee.id);
          }
          else if(_selectedValue == 'Terai Health Committee')
          {
            Navigator.pushNamed(context, HealthCommittee.id);
          }
          else if(_selectedValue == 'Upcoming Service Project')
          {

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
          value: 'Committee',
          child: Text('Committee'),
        ),
        PopupMenuItem(
          value: 'Blood Bank Committee',
          child: Text('Blood Bank Committee'),
        ),
        PopupMenuItem(
          value: 'Sulochana Mansi Jajodia Terai Lions Public School',
          child: Text('Sulochana Mansi Jajodia Terai Lions Public School'),
        ),
        PopupMenuItem(
          value: 'Terai Annapurna Rasoi',
          child: Text('Terai Annapurna Rasoi'),
        ),
        PopupMenuItem(
          value: 'Terai Diagnostic Centre',
          child: Text('Terai Diagnostic Centre'),
        ),
        PopupMenuItem(
          value: 'Terai Health Committee',
          child: Text('Terai Health Committee'),
        ),
        PopupMenuItem(
          value: 'Upcoming Service Project',
          child: Text('Upcoming Service Project'),
        ),
      ],
    );
  }
}

