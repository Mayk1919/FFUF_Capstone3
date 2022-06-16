import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BusinessCardContactTile extends StatelessWidget {
  final String phone;
  final String fax;
  final String mobile;
  final String email;
  const BusinessCardContactTile({
    Key? key, 
    required this.phone, 
    required this.fax, 
    required this.mobile, 
    required this.email,
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
                child: SvgPicture.asset(kMyProfileBlackIcon),
              ),
              Padding(
                padding: kProfileTileDetailsPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'T: $phone',
                      style: ktextTheme.headline6,
                    ),
                    Text(
                      'F: $fax',
                      style: ktextTheme.headline6,
                    ),
                    Text(
                      'M: $mobile',
                      style: ktextTheme.headline6,
                    ),
                    Text(
                      'E: $email',
                      style: ktextTheme.headline6,
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
