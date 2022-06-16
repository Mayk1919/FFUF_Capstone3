import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/leave_tile.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kLeaveSectionMargin,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
        Padding(
          padding: kSickLeaveSectionPadding,
          child: Text(
            kAccount,
            style: ktextTheme.headline2,
          ),
        ),
        const LeaveTile(
          description: kAccountHours,
          value: kAccountHoursValue,
        ),
        SizedBox(
          height: kAccountButtomSpacing,
        )
      ]),
    );
  }
}
