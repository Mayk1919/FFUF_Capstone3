import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/add_leave_modal_bottom_sheet.dart';
import 'package:capstone3/widgets/leave_range_warning.dart';
import 'package:capstone3/widgets/selection_tab.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class ApplyVacationLeaveScreen extends StatelessWidget {
  final int employeeNumber;
  const ApplyVacationLeaveScreen({
    Key? key, 
    required this.employeeNumber,
    })
      : super(key: key);
  static DateTime? startDate;
  static DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kMyAccount,
          style: ktextTheme.headline3,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: kBusinessCardPadding,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectionTab(tabNames: kApplyVacationLeaveSelection),
              Container(
                height: kApplyVacationCalendarHeight,
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  selectionMode: DateRangePickerSelectionMode.range,
                  navigationDirection:
                      DateRangePickerNavigationDirection.horizontal,
                  navigationMode: DateRangePickerNavigationMode.scroll,
                  showActionButtons: true,
                  showTodayButton: true,
                  onSelectionChanged:
                      (DateRangePickerSelectionChangedArgs args) {
                    if (args.value.startDate != null) {
                      startDate = args.value.startDate;
                    }
                    if (args.value.endDate != null) {
                      endDate = args.value.endDate;
                    }
                  },
                  onSubmit: (value) {
                    if (startDate != null && endDate != null) {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return AddLeaveModalBottomSheet(
                                startDate: startDate!,
                                endDate: endDate!,
                                employeeNumber: employeeNumber);
                          });
                    } else {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return LeaveRangeWarning();
                          });
                    }
                  },
                  onCancel: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        'Selection Cancelled',
                      ),
                      duration: Duration(milliseconds: 500),
                    ));
                  },
                  monthViewSettings: const DateRangePickerMonthViewSettings(
                    showWeekNumber: true,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
