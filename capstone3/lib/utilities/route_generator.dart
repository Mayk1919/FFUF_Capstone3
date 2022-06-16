import 'package:capstone3/pages/add_time_record_screen.dart';
import 'package:capstone3/pages/apply_vacation_leave_screen/apply_vacation_leave_screen_connector.dart';
import 'package:capstone3/pages/business_card_screen/business_card_screen_connector.dart';
import 'package:capstone3/pages/profile_screen.dart';
import 'package:capstone3/pages/time_tracking_screen.dart';
import 'package:capstone3/pages/welcome_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) =>  const WelcomeScreen());
      case '/profilePage':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
        case '/businessCardPage':
        return MaterialPageRoute(builder: (_) => const BusinessCardScreenConnector());
         case '/timeTrackingPage':
        return MaterialPageRoute(builder: (_) => const TimeTrackingScreen());
        case '/applyVacationLeavePage':
        return MaterialPageRoute(builder: (_) => const ApplyVacationLeaveScreenConnector());
       case '/addTimeTrackingRecordPage':
        return MaterialPageRoute(builder: (_) => const AddTimeRecordScreen());


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
        body: const Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
