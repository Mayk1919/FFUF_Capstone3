import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/dropdown_selection.dart';
import 'package:capstone3/widgets/leave_tile.dart';
import 'package:capstone3/widgets/message_tile.dart';
import 'package:capstone3/widgets/thank_you_modal_bottom_sheet.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class AddLeaveModalBottomSheet extends StatelessWidget {
  final int employeeNumber;
  final DateTime startDate;
  final DateTime endDate;
  const AddLeaveModalBottomSheet({
    Key? key,
    required this.startDate,
    required this.endDate,
    required this.employeeNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CollectionReference _employees =
        FirebaseFirestore.instance.collection('employees');

    var formatter = DateFormat('dd-MM-yyyy');
    String formattedStartDate = formatter.format(startDate);
    String formattedEndDate = formatter.format(endDate);
    final int totalLeaveDays = endDate.difference(startDate).inDays + 1;
    String vacationLeaveType;
    String vacationLeaveLength;
    void vacationLeaveTypeFunction(value) {
      vacationLeaveType = value;
    }

    void vacationLeaveLengthFunction(value) {
      vacationLeaveLength = value;
    }

    return StreamBuilder(
      stream: _employees.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.hasData) {
          DocumentSnapshot? documentSnapshot;
          streamSnapshot.data!.docs.forEach((employee) {
            if (employee['id'] == employeeNumber) {
              documentSnapshot = employee;
            }
          });

          return SingleChildScrollView(
            child: Padding(
              padding: kAddLeaveModalBottomSheetPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kAddLeaveModalTimePeriod,
                        style: ktextTheme.headline3,
                      ),
                      InkWell(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset(kCLoseIcon)),
                    ],
                  ),
                  Padding(
                    padding: kAddLeaveModalBottomSheetDateRangePadding,
                    child: Text(
                      '$formattedStartDate - $formattedEndDate',
                      style: ktextTheme.bodyText1!
                          .copyWith(fontFamily: 'Allerta-Stencil'),
                    ),
                  ),
                  const LeaveTile(
                    description: kAddLeaveModalTotalDays,
                    value: kAddLeaveModalTotalDaysValue,
                  ),
                  const LeaveTile(
                    description: kAddLeaveModalCurrentVacationLeave,
                    value: kAddLeaveModalCurrentVacationLeaveValue,
                  ),
                  LeaveTile(
                    description: kAddLeaveModalRequestedVacationDays,
                    value: totalLeaveDays,
                  ),
                  const MessageTile(),
                  DropDownSelection(
                    itemStringList: kTypeOfCompanyLeaves,
                    initialValue: 'Urlaub',
                    dropDownValue: vacationLeaveTypeFunction,
                  ),
                  SizedBox(
                    height: kAddLeaveModalBottomSheetDropDownDistance,
                  ),
                  DropDownSelection(
                    itemStringList: kCompanyLeaveDuration,
                    initialValue: 'Wie angegeben',
                    dropDownValue: vacationLeaveLengthFunction,
                  ),
                  SizedBox(
                    height: kAddLeaveModalBottomSheetDropDownDistance,
                  ),
                  DropDownSelection(
                    itemObjectList: kCompanyLeaveRepresentative,
                    initialValue: 'Representative',
                  ),
                  SizedBox(
                    height: kAddLeaveModalBottomSheetDropDownDistance,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 140,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: kFlutterOrange,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(100, 42),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return const ThankYouModalBottomSheet();
                                });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Abschicken'),
                              SvgPicture.asset(kSendIcon),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
