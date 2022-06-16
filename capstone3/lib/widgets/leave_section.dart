import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/leave_tile.dart';
import 'package:capstone3/widgets/remaining_budget_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaveSection extends StatelessWidget {
  const LeaveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: kLeaveSectionMargin,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: kLeaveSectionTitlePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  kLeaveSectionOverview,
                  style: ktextTheme.headline2,
                ),
                SvgPicture.asset(kTreeIcon)
              ],
            ),
          ),
          const LeaveTile(
            description: kLeaveSectionAnnualLeave,
            value: kLeaveSectionAnnualLeaveValue,
          ),
          const LeaveTile(
            description: kLeaveSectionRemainingVacation,
            value: kLeaveSectionRemainingVacationValue,
          ),
          const LeaveTile(
            description: kLeaveSectionRequested,
            value: kLeaveSectionRequestedValue,
          ),
          const LeaveTile(
            description: kLeaveSectionCarryoverFromPreviousYear,
            value: kLeaveSectionCarryoverFromPreviousYearValue,
          ),
          Padding(
            padding: kLeaveSectionButtonPadding,
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/applyVacationLeavePage'),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    kLeaveSectionButton,
                  ),
                  const SizedBox(
                            width: kButtonLabelAndIconDistance,
                          ),
                  SvgPicture.asset(kAddWhiteIcon)
                ],
              ),
            ),
          ),
          const RemainingBudgetTile(),
        ],
      ),
    );
  }
}
