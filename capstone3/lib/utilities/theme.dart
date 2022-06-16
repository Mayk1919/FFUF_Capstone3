

import 'package:capstone3/utilities/global_constants.dart';
import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
    brightness: Brightness.light,
  
    textTheme: const TextTheme(
 
      headline2: TextStyle(
        fontFamily: 'Roboto',
        color: kFlutterBlack,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      ),
      headline3: TextStyle(
        fontFamily: 'Allerta-Stencil',
        color: kFlutterBlack,
        fontWeight: FontWeight.w400,
        fontSize: 22.0,
      ),

      headline5: TextStyle(
        color: kFlutterBlack,
        fontWeight: FontWeight.w400,
        fontFamily: 'Allerta-Stencil',
        fontSize: 17.0,
      ),

      headline6: TextStyle(
        color: kFlutterBlack,
        fontWeight: FontWeight.w500,
        fontFamily: 'Roboto',
        fontSize: 16.0,
      ),
      bodyText1: TextStyle(
        color: kFlutterBlack,
        fontFamily: 'Roboto',
        fontSize: 14.0,
        fontWeight: FontWeight.w500
      ),
      

      subtitle1: 
      TextStyle(
        color: kMirageTextColor,
        fontFamily: 'Mulish',
        fontSize: 14.0,
        fontWeight: FontWeight.w600
      ),
      subtitle2: 
      TextStyle(
        color: kMirageTextColor,
        fontFamily: 'Roboto',
        fontSize: 12.0,
        fontWeight: FontWeight.w400
      ),
      caption: 
      TextStyle(
        color: kMirageTextColor,
        fontFamily: 'Mulish',
        fontSize: 10.0,
        fontWeight: FontWeight.w600
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: kFlutterBlack,
      ),
      iconTheme: IconThemeData(
        color: kFlutterBlack,
      )

    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(kFlutterBlack),
    ),
     ),
    scaffoldBackgroundColor: kScaffoldBackgroundColor,
    backgroundColor: Colors.white,
  );

  