import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/dropdown_selection.dart';
import 'package:capstone3/widgets/employee_selector.dart';
import 'package:capstone3/widgets/message_tile.dart';
import 'package:capstone3/widgets/selection_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class AddTimeRecordScreen extends StatefulWidget {
  const AddTimeRecordScreen({Key? key}) : super(key: key);
  static const String profilePage = '/addTimeTrackingRecordPage';

  @override
  State<AddTimeRecordScreen> createState() => _AddTimeRecordScreenState();
}

class _AddTimeRecordScreenState extends State<AddTimeRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leadingWidth: 50,
          leading: Padding(
            padding: kAddTimeRecordAppbarPadding,
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: SvgPicture.asset(
                kCLoseIcon,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: kAddTimeRecordAppbarPadding,
              child: SvgPicture.asset(
                kCompanyLogoIcon,
                width: 25,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: kAddTimeRecordScreenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectionTab(
                  tabNames: kAddTimeRecordSelection,
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Text(
                  'Kategorie',
                  style: ktextTheme.headline3,
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                DropDownSelection(
                  itemStringList: kAddTimeRecordCategory,
                  initialValue: 'Wahlen Sie bitte Kategorie aus',
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Text(
                  'Projektnummer',
                  style: ktextTheme.headline3,
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                DropDownSelection(
                  itemStringList: kAddTimeRecordProjectNumber,
                  initialValue: 'Projektnummer hinzufügen',
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Text(
                  'Mitarbeiter',
                  style: ktextTheme.headline3,
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                EmployeeSelector(),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Text(
                  'Arbeitszeit',
                  style: ktextTheme.headline3,
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(kBeginIcon),
                        Text(
                          'Beginn',
                          style: ktextTheme.subtitle2,
                        )
                      ],
                    ),
                    TimePickerSpinner(
                      is24HourMode: false,
                      normalTextStyle:
                          ktextTheme.bodyText1!.copyWith(color: kFlutterGrey),
                      highlightedTextStyle: ktextTheme.headline6,
                      spacing: 0,
                      itemHeight: 50,
                      itemWidth: 40,
                      isForce2Digits: true,
                      onTimeChange: (time) {
                        // setState(() {
                        //   _dateTime = time;
                        // });
                      },
                    ),
                    const SizedBox(
                      width: kAddTimeRecordOptionsDistances,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(kEndIcon),
                        Text(
                          'Ende',
                          style: ktextTheme.subtitle2,
                        )
                      ],
                    ),
                    TimePickerSpinner(
                      is24HourMode: false,
                      normalTextStyle:
                          ktextTheme.bodyText1!.copyWith(color: kFlutterGrey),
                      highlightedTextStyle: ktextTheme.headline6,
                      spacing: 0,
                      itemHeight: 50,
                      itemWidth: 40,
                      isForce2Digits: true,
                      onTimeChange: (time) {
                        // setState(() {
                        //   _dateTime = time;
                        // });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: kTimePickerSliderUnderlineHeight,
                      width: kTimePickerSliderUnderlineWidth,
                      color: kFlutterBlue,
                    ),
                    Container(
                      height: kTimePickerSliderUnderlineHeight,
                      width: kTimePickerSliderUnderlineWidth,
                      color: kFlutterBlue,
                    )
                  ],
                ),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                const MessageTile(),
                const SizedBox(
                  height: kAddTimeRecordOptionsDistances,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Abbrechen',
                        style: ktextTheme.bodyText1,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Text('Speichern'),
                            SizedBox(
                              width: 20,
                            ),
                            SvgPicture.asset(kSendIcon),
                          ],
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
