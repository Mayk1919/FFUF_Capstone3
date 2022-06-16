import 'package:capstone3/utilities/global_constants.dart';
import 'package:capstone3/widgets/circle_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmployeeSelector extends StatefulWidget {
  const EmployeeSelector({Key? key}) : super(key: key);

  @override
  State<EmployeeSelector> createState() => _EmployeeSelectorState();
}

class _EmployeeSelectorState extends State<EmployeeSelector> {
  List selectedEmployees = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: kEmployeeSelectorChipWidth,
        child: Wrap(
            children: selectedEmployees
                .map((e) => InputChip(
                      deleteIcon: SvgPicture.asset(
                        kCLoseIcon,
                        color: Colors.white,
                      ),
                      backgroundColor: kFlutterBlack,
                      onDeleted: () {
                        setState(() {
                          kEmployeeNames.add(e);
                          selectedEmployees.remove(e);
                        });
                      },
                      label: Text(
                        e,
                        style:
                            ktextTheme.bodyText1!.copyWith(color: Colors.white),
                      ),
                    ))
                .toList()),
      ),
      selectedEmployees.isNotEmpty
          ? SvgPicture.asset(kEditGreyIcon)
          : Container(),
      Container(
        width: 60,
        child: DropdownButton(
            isExpanded: true,
            underline: Container(),
            icon: const CircleIcon(
              iconUrl: kAddWhiteIcon,
              backgroundColor: kFlutterBlack,
            ),
            items: kEmployeeNames.map((items) {
              return DropdownMenuItem<String>(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                kEmployeeNames.remove(newValue);
                selectedEmployees.add(newValue);
              });
            }),
      )
    ]);
  }
}
