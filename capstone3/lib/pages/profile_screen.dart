import 'package:capstone3/widgets/account_section.dart';
import 'package:capstone3/widgets/leave_section.dart';
import 'package:capstone3/widgets/profile_drawer.dart';
import 'package:capstone3/widgets/profile_section.dart';
import 'package:capstone3/widgets/sick_leave_section.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const String profilePage = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const ProfileDrawerConnector(),
      body: SingleChildScrollView(
        child: Column
        (mainAxisAlignment: MainAxisAlignment.center, 
        children: const [
          ProfileSection(),
          LeaveSection(),
          SickLeaveSection(),
          AccountSection(),
        ]),
      ),
    );
  }
}
