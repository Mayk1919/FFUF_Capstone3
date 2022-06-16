import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BusinessCardAddressTile extends StatelessWidget {
  final String location;
  final String locationAddress;
  const BusinessCardAddressTile({
    Key? key, 
    required this.location, 
    required this.locationAddress,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: kBusinessCardTilesPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            kBusinessCardAddressTileTitle,
            style: ktextTheme.headline2,
          ),
          Row(
            children: [
              Padding(
                padding: kProfileTileImagePadding,
                child: SvgPicture.asset(kLocationIcon),
              ),
              Padding(
                padding: kProfileTileDetailsPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      location,
                      style: ktextTheme.headline6,
                    ),
                    Text(
                      locationAddress,
                      style: ktextTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
