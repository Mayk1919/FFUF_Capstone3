import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThankYouModalBottomSheet extends StatelessWidget {
  const ThankYouModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kThankYouModalHeight,
      padding: kThankYouModalPadding,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context),
                child: SvgPicture.asset(kCLoseIcon),
              )
            ],
          ),
          SizedBox(
            height: kThankYouModalTimeIconDistanceToTop,
          ),
          SvgPicture.asset(kTimeBlackIcon, height: 42),
          SizedBox(
            height: kThankYouModalTimeIconDistanceToThankYouMessage,
          ),
          Text(
            'Vielen Dank.',
            style: ktextTheme.headline3,
          ),
          Text(
            kThankYouModalRecorderSuccesMessage,
            style: ktextTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
