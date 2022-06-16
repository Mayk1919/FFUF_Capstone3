import 'package:async_redux/async_redux.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/apply_vacation_leave_screen_connector.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/vm/apply_vacation_leave_screen_view_model.dart';
import 'package:capstone3/state/app_state.dart';

class ApplyVacationLeaveScreenViewModelFactory
    extends VmFactory<AppState, ApplyVacationLeaveScreenConnector> {
  ApplyVacationLeaveScreenViewModelFactory(
      ApplyVacationLeaveScreenConnector widget)
      : super(widget);

  @override
  Vm fromStore() {
    return ApplyVacationLeaveScreenViewModel(
      employeeNumber: state.employeeNumber
    );
  }
}
