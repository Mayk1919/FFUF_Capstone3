import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/profile_tile.dart';
import 'package:capstone3/widgets/report_tile.dart';
import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kProfileSectionMargin,
      padding: kProfileTilePadding,
      color: Colors.white,
      child: Column(
        children: const [
          ProfileTile(
            name: kMyAccountName,
            email: kMyAccountEmail,
            position: kMyAccountPosition,
            mobileNumber: kMyAccountPhone,
            imageUrl: kMyAccountImageUrl,
            profileDisplayed: kMyAccount,
          ),
          ProfileTile(
            name: kSuperiorName,
            email: kSuperiorEmail,
            position: kSuperiorPosition,
            mobileNumber: kSuperiorPhone,
            imageUrl: kSuperiorImageUrl,
            profileDisplayed: kSuperior,
          ),
          ReportTile(
            reportDisplay: kWeeklyReport,
            weekNow: kThisWeek,
          ),
          ReportTile(
            reportDisplay: kMonthlyReport,
            nextMonth: kNextMonth,
          ),
        ],
      ),
    );
  }
}
