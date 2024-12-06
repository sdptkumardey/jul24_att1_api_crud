import 'package:flutter/material.dart';
import 'package:jul24_att1_api_crud/screen/home.dart';
import 'package:jul24_att1_api_crud/screen/board_directors.dart';
import 'package:jul24_att1_api_crud/screen/members_directory.dart';
import 'package:jul24_att1_api_crud/screen/member_details.dart';
import 'package:jul24_att1_api_crud/screen/honorary-members.dart';
import 'package:jul24_att1_api_crud/screen/event.dart';
import 'package:jul24_att1_api_crud/screen/list-of-committee.dart';
import 'package:jul24_att1_api_crud/screen/blood-bank-committee.dart';
import 'package:jul24_att1_api_crud/screen/school-committee.dart';
import 'package:jul24_att1_api_crud/screen/annapurna-committee.dart';
import 'package:jul24_att1_api_crud/screen/diagnostic-committee.dart';
import 'package:jul24_att1_api_crud/screen/health-committee.dart';
import 'package:jul24_att1_api_crud/screen/roll-honour.dart';
import 'package:jul24_att1_api_crud/screen/roll-blood.dart';
import 'package:jul24_att1_api_crud/screen/roll-health.dart';
import 'package:jul24_att1_api_crud/screen/roll-annapurna.dart';
import 'package:jul24_att1_api_crud/screen/roll-diagnostic.dart';
import 'package:jul24_att1_api_crud/screen/roll-school.dart';
import 'package:jul24_att1_api_crud/screen/charter-member.dart';
import 'package:jul24_att1_api_crud/screen/pst.dart';
import 'package:jul24_att1_api_crud/screen/global-leader.dart';
import 'package:jul24_att1_api_crud/screen/project-blood-bank.dart';
import 'package:jul24_att1_api_crud/screen/project-health.dart';
import 'package:jul24_att1_api_crud/screen/project-school.dart';
import 'package:jul24_att1_api_crud/screen/project-annapurna.dart';
import 'package:jul24_att1_api_crud/screen/project-diagnostic.dart';
import 'package:jul24_att1_api_crud/screen/project-upcoming.dart';
import 'package:jul24_att1_api_crud/screen/splash-screen.dart';
import 'package:jul24_att1_api_crud/screen/sub-club-info.dart';
import 'package:jul24_att1_api_crud/screen/sub_invocation.dart';
import 'package:jul24_att1_api_crud/screen/sub_peace_prayer.dart';
import 'package:jul24_att1_api_crud/screen/sub_flag_salutation.dart';
import 'package:jul24_att1_api_crud/screen/sub_birthday.dart';
import 'package:jul24_att1_api_crud/screen/sub_pmjf.dart';
import 'package:jul24_att1_api_crud/screen/sub_dff.dart';
import 'package:jul24_att1_api_crud/screen/sub_blood_group.dart';
import 'package:jul24_att1_api_crud/screen/sub_slogan.dart';
import 'package:flutter/services.dart';
void main() {
  // We need to call it manually,
  // because we going to call setPreferredOrientations()
  // before the runApp() call
  WidgetsFlutterBinding.ensureInitialized();

  // Than we setup preferred orientations,
  // and only after it finished we run our app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CRUD API',
      initialRoute: Home.id,
      routes: {
        Home.id: (context) =>  Home(),
        SplashScreen.id: (context) => SplashScreen(),
        BoardDirectors.id: (context) =>  BoardDirectors(),
        MembersDirectory.id: (context) =>  MembersDirectory(),
        HonoraryMembers.id: (context) =>  HonoraryMembers(),
        Event.id: (context) =>  Event(),
        ListOfCommittee.id : (context) =>  ListOfCommittee(),
        BloodBankCommittee.id : (context) =>  BloodBankCommittee(),
        SchoolCommittee.id : (context) => SchoolCommittee(),
        AnnapurnaCommittee.id : (context) => AnnapurnaCommittee(),
        DiagnosticCommittee.id : (context) => DiagnosticCommittee(),
        HealthCommittee.id : (context) => HealthCommittee(),
        RollHonour.id : (context) => RollHonour(),
        RollBlood.id : (context) => RollBlood(),
        RollHealth.id : (context) => RollHealth(),
        RollAnnapurna.id : (context) => RollAnnapurna(),
        RollDiagnostic.id : (context) => RollDiagnostic(),
        RollSchool.id : (context) => RollSchool(),
        CharterMember.id : (context) => CharterMember(),
        Pst.id : (context) => Pst(),
        GlobalLeader.id : (context) => GlobalLeader(),
        ProjectBloodBank.id : (context) => ProjectBloodBank(),
        ProjectHealth.id: (context) => ProjectHealth(),
        ProjectSchool.id:(context) => ProjectSchool(),
        ProjectAnnapurna.id:(context) => ProjectAnnapurna(),
        ProjectDiagnostic.id:(context) => ProjectDiagnostic(),
        ProjectUpcoming.id:(context) => ProjectUpcoming(),
        SubClubInfo.id:(context) => SubClubInfo(),
        SubInvocation.id:(context) => SubInvocation(),
        SubPeacePrayer.id:(context) => SubPeacePrayer(),
        SubFlagSalutation.id:(context) => SubFlagSalutation(),
        SubBirthday.id:(context) => SubBirthday(),
        SubPmjf.id:(context) => SubPmjf(),
        SubDff.id:(context) => SubDff(),
        SubBloodGroup.id:(context) => SubBloodGroup(),
        SubSlogan.id:(context) => SubSlogan()
        },
    );
  }
}

