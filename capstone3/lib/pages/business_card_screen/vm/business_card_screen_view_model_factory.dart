import 'package:async_redux/async_redux.dart';
import 'package:capstone3/pages/business_card_screen/business_card_screen_connector.dart';
import 'package:capstone3/pages/business_card_screen/vm/business_card_screen_view_model.dart';
import 'package:capstone3/state/actions/actions.dart';
import 'package:capstone3/state/app_state.dart';

class BusinessCardScreenViewModelFactory
    extends VmFactory<AppState, BusinessCardScreenConnector> {
  BusinessCardScreenViewModelFactory(BusinessCardScreenConnector widget)
      : super(widget);

  @override
  Vm fromStore() {
    
    return BusinessCardScreenViewModel(
      isDisplayingMyBusinessCard: state.isDisplayingMyBusinessCard,
      employeeNumber:state.employeeNumber,
      onChangeMyBusinessCardDisplayAction: () => dispatch(ChangeMyBusinessCardDisplayAction()),
    );
  }
}
