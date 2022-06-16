import 'package:async_redux/async_redux.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/apply_vacation_leave_screen.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/vm/apply_vacation_leave_screen_view_model.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/vm/apply_vacation_leave_screen_view_model_factory.dart';
import 'package:capstone3/state/app_state.dart';
import 'package:flutter/material.dart';

class ApplyVacationLeaveScreenConnector extends StatelessWidget {
  const ApplyVacationLeaveScreenConnector({Key? key}) : super(key: key);
  static const String businessCardPage = '/applyVacationLeavePage';

  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState,ApplyVacationLeaveScreenViewModel> (
        vm: () => ApplyVacationLeaveScreenViewModelFactory(this),
        builder: (context, vm) {
          return ApplyVacationLeaveScreen(
              employeeNumber:vm.employeeNumber,
              );
        });
  }
}