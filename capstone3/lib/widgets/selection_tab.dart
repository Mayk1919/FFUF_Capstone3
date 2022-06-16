import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

class SelectionTab extends StatefulWidget {
  final VoidCallback? onChangeMyBusinessCardDisplayAction;
  List tabNames;
  SelectionTab({
    Key? key,
    required this.tabNames,
    this.onChangeMyBusinessCardDisplayAction,
  }) : super(key: key);

  @override
  State<SelectionTab> createState() => _SelectionTab();
}

class _SelectionTab extends State<SelectionTab> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    void updateSelectedIndex(index) {
      if (index != selectedIndex) {
        if (widget.onChangeMyBusinessCardDisplayAction != null) {
          widget.onChangeMyBusinessCardDisplayAction!();
        }

        setState(() {
          selectedIndex = index;
        });
      }
    }

    return SizedBox(
      height: kSelectionTabHeight,
      child: ListView.builder(
          itemCount: widget.tabNames.length,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext ctx, index) {
            return InkWell(
              onTap: () => updateSelectedIndex(index),
              child: Container(
                alignment: Alignment.center,
                width: kbusinessScreenSelectionWidth,
                decoration: selectedIndex == index
                    ? const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: kBusinessSelectionUnderlineColor,
                            width: kBusinessSelectionUnderlineWidth,
                          ),
                        ),
                        image: DecorationImage(
                          image: AssetImage(kStripeBackground),
                        ),
                      )
                    : null,
                child: Text(
                  widget.tabNames[index],
                  style: ktextTheme.headline5,
                ),
              ),
            );
          }),
    );
  }
}
