import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/circle_icon.dart';
import 'package:capstone3/widgets/profile_drawer.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimeTrackingScreen extends StatelessWidget {
  const TimeTrackingScreen({Key? key}) : super(key: key);
  static const String profilePage = '/timeTrackingPage';

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        actions: const [
          CircleIcon(
            iconUrl: kCalendarDottedIcon,
            navigationUrlName: 'profilePage',
          ),
          CircleIcon(
            iconUrl: kAddBlackIcon,
            navigationUrlName: 'addTimeTrackingRecordPage',
            backgroundColor: kFlutterGrey,
          ),
        ],
        title: Column(
          children: [
            Text(
              DateFormat('EEEE').format(date),
              style: ktextTheme.headline2,
            ),
            Text(
              DateFormat('d.M.y').format(date),
              style: ktextTheme.subtitle2!.copyWith(fontSize: 14),
            ),
          ],
        ),
      ),
      drawer: const ProfileDrawerConnector(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: kTimeTrackingMenuIconHeight,
              padding: kTimeTrackingMenuIconPadding,
              color: Colors.white,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kTimeTrackerMenuIcons.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return CircleIcon(
                      iconUrl: kTimeTrackerMenuIcons[index]['iconUrl'],
                      navigationUrlName: kTimeTrackerMenuIcons[index]
                          ['navigationUrlName'],
                      backgroundColor: kTimeTrackerMenuIcons[index]
                          ['backgroundColor'],
                    );
                  }),
            ),
            Container(
              height: kTimeTrackingCalendarHeight,
              child: SfCalendar(
                  view: CalendarView.day,
                  showNavigationArrow: true,
                  timeSlotViewSettings: const TimeSlotViewSettings(
                    timeIntervalHeight: 50,
                  ),
                  todayHighlightColor: Colors.red,
                  showCurrentTimeIndicator: true,
                  timeZone: 'Singapore Standard Time'),
            ),
          ],
        ),
      ),
    );
  }
}
