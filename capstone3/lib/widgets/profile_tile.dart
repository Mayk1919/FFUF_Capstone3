import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  final String name;
  final String email;
  final String position;
  final String? mobileNumber;
  final String imageUrl;
  final String? profileDisplayed;
  const ProfileTile({
    Key? key,
    required this.name,
    required this.email,
    required this.position,
   this.mobileNumber,
    required this.imageUrl,
     this.profileDisplayed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kBusinessCardTilesPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          profileDisplayed != null 
          ? Text(
            profileDisplayed!,
            style: ktextTheme.headline2,
          )
          : 
          Container(),
          Row(
            children: [
              Padding(
                padding: kProfileTileImagePadding,
                child: CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  radius: kProfileIconRadius,
                ),
              ),
              Padding(
                padding: kProfileTileDetailsPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: ktextTheme.headline6,
                    ),
                    Text(
                      email,
                      style: ktextTheme.subtitle2,
                    ),
                    Text(
                      position,
                      style: ktextTheme.subtitle2,
                    ),
                    mobileNumber != null
                    ? CustomPaint(
                      painter: MobileBackgroundCustomPainter(),
                      child: Padding(
                        padding: kProfileTileMobileNumberPadding,
                        child: Text(
                          mobileNumber!,
                          style: ktextTheme.subtitle2!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    )
                    :
                    Container(),
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

class MobileBackgroundCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width * 0.8750000, 0);
    path0.lineTo(0, 0);
    path0.lineTo(size.width * 0.8800000, size.height * 0.1300000);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
