import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

class LeaveTile extends StatelessWidget {
  final String description;
  final int value;
  const LeaveTile({
    Key? key, 
    required this.description, 
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kLeaveSectionTilePadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            description,
            style: ktextTheme.bodyText1!.copyWith(fontWeight: FontWeight.w400),
            ),
          Text(
            value.toString(),
             style: ktextTheme.headline6!.copyWith(fontWeight: FontWeight.w400),
             ),
        ],
      ),
    );
  }
}
