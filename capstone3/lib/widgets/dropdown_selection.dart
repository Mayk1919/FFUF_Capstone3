import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownSelection extends StatefulWidget {
  final List? itemStringList;
  final List? itemObjectList;
  final Function? dropDownValue;
  final String initialValue;
  const DropDownSelection({
    Key? key,
    this.itemStringList,
    this.itemObjectList,
    this.dropDownValue,
    required this.initialValue,
  }) : super(key: key);

  @override
  State<DropDownSelection> createState() => _DropDownSelectionState();
}

class _DropDownSelectionState extends State<DropDownSelection> {
  late String dropdownvalue = widget.initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kDropDownPadding,
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: kFlutterGrey,
          width: kDropdownUnderlineWidth,
        ),
      )),
      height: kDropdownUnderlineHeight,
      child: DropdownButton(
          underline: Container(),
          value: dropdownvalue,
          isExpanded: true,
          icon: SvgPicture.asset(kDoubleDownArrowIcon),
          style: ktextTheme.bodyText1,
          items: widget.itemStringList != null
              ? widget.itemStringList!.map((items) {
                  return DropdownMenuItem<String>(
                    value: items,
                    child: Text(items),
                  );
                }).toList()
              : widget.itemObjectList!.map((items) {
                  return DropdownMenuItem<String>(
                    value: items['name'],
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(items['imageUrl']),
                        ),
                        const SizedBox(
                          width: kDropdownProfileIconAndNameDistance,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items['name'],
                              style: ktextTheme.bodyText1,
                            ),
                            Text(
                              kRepresentative,
                              style: ktextTheme.caption,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
          onChanged: (newValue) {
            setState(() {
              if (newValue.toString() == widget.initialValue) {
                dropdownvalue = dropdownvalue;
                if (widget.dropDownValue != null) {
                  widget.dropDownValue!(dropdownvalue);
                }
              } else {
                dropdownvalue = newValue.toString();
              }
            });
          }),
    );
  }
}
