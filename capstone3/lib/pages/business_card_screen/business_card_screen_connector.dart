import 'package:async_redux/async_redux.dart';
import 'package:capstone3/pages/business_card_screen/business_card_screen.dart';
import 'package:capstone3/pages/business_card_screen/vm/business_card_screen_view_model.dart';
import 'package:capstone3/pages/business_card_screen/vm/business_card_screen_view_model_factory.dart';
import 'package:capstone3/state/app_state.dart';
import 'package:flutter/material.dart';

class BusinessCardScreenConnector extends StatelessWidget {
  const BusinessCardScreenConnector({Key? key}) : super(key: key);
  static const String businessCardPage = '/businessCardPage';

  @override
  Widget build(BuildContext context) {
    
    return StoreConnector<AppState,BusinessCardScreenViewModel> (
        vm: () => BusinessCardScreenViewModelFactory(this),
        builder: (context, vm) {
          return BusinessCardScreen(
              isDisplayingMyBusinessCard: vm.isDisplayingMyBusinessCard,
              employeeNumber:vm.employeeNumber,
              onChangeMyBusinessCardDisplayAction: vm.onChangeMyBusinessCardDisplayAction,
              );
        });
  }
}
