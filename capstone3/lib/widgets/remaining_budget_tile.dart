import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

class RemainingBudgetTile extends StatelessWidget {
  const RemainingBudgetTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kRemainingBudgetHeight,
      color: kFlutterGrey,
      padding: kRemainingBudgetPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(kCurrentBudget),
          CircleAvatar(
            backgroundColor: kFlutterOrange,
            child: Text(
              kCurrentBudgetValue.toString(),
              style: ktextTheme.headline6!.copyWith(color: Colors.white),),
          )
        ],
      ),
    );
  }
}