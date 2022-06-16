import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    kScreenSizeHeight = MediaQuery.of(context).size.height;
    kScreenSizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: kScreenSizeHeight,
          width: kScreenSizeWidth,
          color: Colors.white,
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            SvgPicture.asset('assets/images/company_logo/logo.svg'),
            SizedBox(
              height: kCompanyLogoAndWelcomeMessageDistance,
            ),
            Text(
              kWelcomeMessage,
              style: ktextTheme.bodyText1,
            ),
            SizedBox(
              height: kWelcomeMessageAndSignInDistance,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/icons/microsoft.svg'),
                SizedBox(
                  width: kMicrosoftLogoAndSignInDistance,
                ),
                Text(
                  kMicrosoftSignIn,
                  style: ktextTheme.bodyText1!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: kSignInAndForwardArrowDistance,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/profilePage');
                    },
                    child: SvgPicture.asset(
                        'assets/images/icons/double_arrow.svg')),
              ],
            ),
            SizedBox(
              height: kSignInAndDividerDistance,
            ),
            Divider(
              color: kFlutterGrey,
              thickness: ksignInDividerHeight,
              indent: ksignInDividerIndent,
              endIndent: ksignInDividerIndent,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: kDividerToBottomDistance,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () { },
                    child: Text(
                      kImprint,
                      style: ktextTheme.subtitle1,
                    ),
                  ),
                  TextButton(
                    onPressed: () { },
                    child: Text(
                      kPrivacy,
                      style: ktextTheme.subtitle1,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
