import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReportTile extends StatelessWidget {
  final String? weekNow;
  final String? nextMonth;
  final String reportDisplay;
  const ReportTile({
    Key? key,
    required this.reportDisplay,
    this.nextMonth,
    this.weekNow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            reportDisplay == kMonthlyReport ? kMonthlyReport : kWeeklyReport,
            style: ktextTheme.headline2,
          ),
          Row(
            children: [
              Padding(
                padding: kProfileTileImagePadding,
                child: SvgPicture.asset(kCalendarIcon),
              ),
              Padding(
                padding: kProfileTileDetailsPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reportDisplay == kMonthlyReport ? nextMonth! : weekNow!,
                      style: ktextTheme.headline6,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(children: [
                        Text(
                          reportDisplay == kMonthlyReport
                              ? kCreateMonthlyReport
                              : kSendWeeklyReport,
                          style: ktextTheme.bodyText1!
                              .copyWith(color: Colors.white),
                        ),
                        const SizedBox(
                          width: kButtonLabelAndIconDistance,
                        ),
                        SvgPicture.asset(kSendIcon),
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
