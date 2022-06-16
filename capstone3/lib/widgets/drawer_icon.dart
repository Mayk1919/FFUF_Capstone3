import 'package:async_redux/async_redux.dart';
import 'package:capstone3/state/actions/actions.dart';
import 'package:capstone3/state/app_state.dart';
import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerIcon extends StatefulWidget {
  final int? position;
  final String label;
  final String iconUrl;
  final String navigatorName;
  final Function? onChangeSelectedMenuDisplayAction;
  final int? selectedPosition;

  const DrawerIcon({
    Key? key,
    this.position,
    this.onChangeSelectedMenuDisplayAction,
    this.selectedPosition,
    required this.label,
    required this.iconUrl,
    required this.navigatorName,
  }) : super(key: key);

  @override
  State<DrawerIcon> createState() => _DrawerIconState();
}

class _DrawerIconState extends State<DrawerIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        setState(() {
          widget.onChangeSelectedMenuDisplayAction!(widget.position);
        });
        Navigator.of(context).pushNamed('/${widget.navigatorName}');
      }),
      child: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: SizedBox(
          width: kDrawerIconWidth,
          child: Column(
            children: [
              SvgPicture.asset(
                widget.iconUrl,
                color: widget.selectedPosition == widget.position
                    ? kFlutterBlack
                    : kFlutterGrey,
              ),
              SizedBox(
                height: kDrawerIconAndDrawerTextDistance,
              ),
              Text(
                widget.label,
                style: ktextTheme.bodyText1!.copyWith(color: kMirageTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
