import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIcon extends StatelessWidget {
  final Color backgroundColor;
  final String iconUrl;
  final String? navigationUrlName;
  const CircleIcon({
    Key? key,
    required this.iconUrl,
    this.navigationUrlName,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (navigationUrlName != null) {
      return InkWell(
          onTap: () => Navigator.of(context).pushNamed('/$navigationUrlName'),
          child: Container(
            padding: kCircleIconPadding,
            margin: kCircleIconMargin,
            width: 42,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: backgroundColor == Colors.transparent
                  ? Border.all(width: 2, color: Colors.black)
                  : null,
            ),
            child: SvgPicture.asset(iconUrl),
          ));
    }
    else{
      return Container(
        padding: kCircleIconPadding,
        margin: kCircleIconMargin,
        width: 42,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: backgroundColor == Colors.transparent
              ? Border.all(width: 2, color: Colors.black)
              : null,
        ),
        child: SvgPicture.asset(iconUrl),
      );

    }
  }
}
