import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/leave_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SickLeaveSection extends StatelessWidget {
  const SickLeaveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kLeaveSectionMargin,
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: kSickLeaveSectionPadding,
          child: Text(
            kSickLeave,
            style: ktextTheme.headline2,
          ),
        ),
        const LeaveTile(
          description: kTotalSickLeave,
          value: kTotalSickLeaveValue,
        ),
        Padding(
          padding: kLeaveSectionButtonPadding,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  kSickLeaveButton,
                ),
                const SizedBox(
                  width: kButtonLabelAndIconDistance,
                ),
                SvgPicture.asset(kAddWhiteIcon)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
