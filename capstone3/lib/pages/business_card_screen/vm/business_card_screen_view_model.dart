

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

class BusinessCardScreenViewModel extends Vm {
  final bool isDisplayingMyBusinessCard;
  final int employeeNumber;
  final VoidCallback onChangeMyBusinessCardDisplayAction;
  BusinessCardScreenViewModel({
    required this.onChangeMyBusinessCardDisplayAction,
    required this.employeeNumber,
    required this.isDisplayingMyBusinessCard,
  }) : super(equals: [isDisplayingMyBusinessCard]);
}
