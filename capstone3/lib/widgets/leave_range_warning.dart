import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';


class LeaveRangeWarning extends StatelessWidget {
  const LeaveRangeWarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Please Enter Leave Dates',
        style: ktextTheme.headline6,
      ),
    );
  }
}