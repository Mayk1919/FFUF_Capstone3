import 'package:capstone3/utilities/theme.dart';
import 'package:flutter/material.dart';

//
const int kLoggedInUserId = 1;

//Images Url
const String kCLoseIcon = 'assets/images/icons/close.svg';
const String kCompanyLogoIcon = 'assets/images/company_logo/logo.svg';
const String kMyProfileIcon = 'assets/images/icons/user_grey.svg';
const String kMyProfileBlackIcon = 'assets/images/icons/user_black.svg';
const String kBusinessCardGreyIcon = 'assets/images/icons/business_card.svg';
const String kTimeGreyIcon = 'assets/images/icons/time_grey.svg';
const String kMyOperationsGreyIcon = 'assets/images/icons/bet.svg';
const String kCalendarIcon = 'assets/images/icons/calendar.svg';
const String kSendIcon = 'assets/images/icons/paper_plane_white.svg';
const String kTreeIcon = 'assets/images/icons/tree.svg';
const String kAddWhiteIcon = 'assets/images/icons/add_white.svg';
const String kQRCode = 'assets/images/qr_codes/qr_code1.JPG';
const String kStripeBackground =
    'assets/images/background/stripe_background.png';
const String kLocationIcon = 'assets/images/icons/location.svg';
const String kTimeBlackIcon = 'assets/images/icons/time.svg';
const String kAddBlackIcon = 'assets/images/icons/add_black.svg';
const String kCalendarDottedIcon = 'assets/images/icons/calendar_dotted.svg';
const String kCheckBlackIcon = 'assets/images/icons/check_black.svg';
const String kEditWhiteIcon = 'assets/images/icons/edit_white.svg';
const String kDoubleDownArrowIcon = 'assets/images/icons/double_down_arrow.svg';
const String kBeginIcon = 'assets/images/icons/begin.svg';
const String kEndIcon = 'assets/images/icons/end.svg';
const String kEditGreyIcon = 'assets/images/icons/edit_grey.svg';

//Screen Size Constants

double? kScreenSizeHeight;
double? kScreenSizeWidth;

//Theme Constants

TextTheme ktextTheme = themeData.textTheme;

//Distances and Spaces Constants

final double kCompanyLogoAndWelcomeMessageDistance = kScreenSizeHeight! * 0.06;
final double kWelcomeMessageAndSignInDistance = kScreenSizeHeight! * 0.07;
final double kMicrosoftLogoAndSignInDistance = kScreenSizeWidth! * 0.035;
final double kSignInAndForwardArrowDistance = kScreenSizeWidth! * 0.203;
final double kSignInAndDividerDistance = kScreenSizeHeight! * 0.016;
final double kDividerToBottomDistance = kScreenSizeHeight! * 0.45;

const double ksignInDividerHeight = 3.0;
final double ksignInDividerIndent = kScreenSizeWidth! * 0.096;

final double kDrawerHeaderHeight = kScreenSizeHeight! * 0.16;
final double kDrawerIconAndDrawerTextDistance = kScreenSizeHeight! * 0.02;
final double kDrawerIconWidgetToDrawerIconWidgetDistance =
    kScreenSizeHeight! * 0.03;
final double kDrawerIconWidth = kScreenSizeWidth! * 0.30;
final EdgeInsets kDrawerPadding = EdgeInsets.symmetric(
  horizontal: (kScreenSizeWidth! * 0.03),
);
final EdgeInsets kProfileSectionMargin = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeWidth! * 0.04),
);
final EdgeInsets kProfileTilePadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  bottom: (kScreenSizeHeight! * 0.017),
);
final EdgeInsets kProfileTileImagePadding = EdgeInsets.only(
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.011),
  bottom: (kScreenSizeHeight! * 0.011),
);
const EdgeInsets kProfileTileMobileNumberPadding = EdgeInsets.only(
  top: 3.0,
  bottom: 3.0,
  left: 5.0,
  right: 20.0,
);
final EdgeInsets kProfileTileDetailsPadding =
    EdgeInsets.only(top: (kScreenSizeHeight! * 0.028));

final EdgeInsets kLeaveSectionMargin = EdgeInsets.all(kScreenSizeWidth! * 0.04);
final EdgeInsets kLeaveSectionButtonPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
  bottom: (kScreenSizeHeight! * 0.017),
);
final EdgeInsets kLeaveSectionTitlePadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  bottom: (kScreenSizeHeight! * 0.017),
  top: (kScreenSizeHeight! * 0.017),
);
final EdgeInsets kLeaveSectionTilePadding = EdgeInsets.only(
  right: (kScreenSizeWidth! * 0.075),
  left: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.004),
  bottom: (kScreenSizeHeight! * 0.004),
);

final double kRemainingBudgetHeight = kScreenSizeHeight! * 0.117;
final EdgeInsets kRemainingBudgetPadding =
    EdgeInsets.symmetric(horizontal: kScreenSizeWidth! * 0.045);

final EdgeInsets kBusinessCardPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
);

final EdgeInsets kSickLeaveSectionPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
  bottom: (kScreenSizeHeight! * 0.017),
);

final EdgeInsets kBusinessCardSectionMargin = EdgeInsets.only(
  top: kScreenSizeHeight! * 0.02,
  bottom: kScreenSizeHeight! * 0.02,
);
final EdgeInsets kBusinessCardSectionPadding = EdgeInsets.only(
  left: kScreenSizeWidth! * 0.043,
  right: kScreenSizeWidth! * 0.043,
  top: (kScreenSizeHeight! * 0.033),
  bottom: (kScreenSizeHeight! * 0.033),
);
final EdgeInsets kBusinessCardTilesPadding = EdgeInsets.only(
  top: (kScreenSizeHeight! * 0.033),
  bottom: (kScreenSizeHeight! * 0.033),
);

final double kAccountButtomSpacing = kScreenSizeHeight! * 0.062;

final double kbusinessScreenSelectionWidth = kScreenSizeWidth! * 0.46;
final double kSelectionTabHeight = kScreenSizeHeight! * 0.074;
final EdgeInsets kbusinessScreenSelectionPadding =
    EdgeInsets.symmetric(vertical: kScreenSizeHeight! * 0.027);
final EdgeInsets kBusinessCardSelectionPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
);

const EdgeInsets kCircleIconPadding = EdgeInsets.all(8.0);
const EdgeInsets kCircleIconMargin = EdgeInsets.symmetric(horizontal: 5.0);

final double kTimeTrackingMenuIconHeight = kScreenSizeHeight! * 0.079;
final EdgeInsets kTimeTrackingMenuIconPadding = EdgeInsets.symmetric(
  horizontal: kScreenSizeWidth! * 0.04,
);

final double kTimeTrackingCalendarHeight = kScreenSizeHeight! * 0.6;
final double kApplyVacationCalendarHeight = kScreenSizeHeight! * 0.5;

final EdgeInsets kAddLeaveModalBottomSheetPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
  bottom: (kScreenSizeHeight! * 0.017),
);
final EdgeInsets kAddLeaveModalBottomSheetDateRangePadding = EdgeInsets.only(
  top: (kScreenSizeHeight! * 0.017),
  bottom: (kScreenSizeHeight! * 0.017),
);
final EdgeInsets kAddLeaveModalBottomSheetMessageTilePadding = EdgeInsets.only(
  top: (kScreenSizeHeight! * 0.043),
  bottom: (kScreenSizeHeight! * 0.043),
);
final double kAddLeaveModalBottomSheetMessageTileWidth =
    kScreenSizeWidth! * 0.73;
final double kAddLeaveModalBottomSheetIconAndTextFieldDistance =
    kScreenSizeWidth! * 0.037;
final double kAddLeaveModalBottomSheetDropDownDistance =
    kScreenSizeHeight! * 0.02;

const EdgeInsets kDropDownPadding = EdgeInsets.symmetric(horizontal: 20.0);
const double kDropdownUnderlineWidth = 3.0;
const double kDropdownUnderlineHeight = 50.0;
const double kDropdownProfileIconAndNameDistance = 15.0;

const double kProfileIconRadius = 32.0;
const double kButtonLabelAndIconDistance = 10.0;
const double kBusinessSelectionUnderlineWidth = 3.0;

final double kThankYouModalHeight = kScreenSizeHeight! * 0.43;
final double kThankYouModalTimeIconDistanceToTop = kScreenSizeHeight! * 0.111;
final double kThankYouModalTimeIconDistanceToThankYouMessage =
    kScreenSizeHeight! * 0.04;
const EdgeInsets kThankYouModalPadding = EdgeInsets.all(10.0);

final EdgeInsets kAddTimeRecordAppbarPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
);
final EdgeInsets kAddTimeRecordScreenPadding = EdgeInsets.only(
  left: (kScreenSizeWidth! * 0.04),
  right: (kScreenSizeWidth! * 0.04),
  top: (kScreenSizeHeight! * 0.017),
  bottom: (kScreenSizeHeight! * 0.017),
);

final double kTimePickerSliderUnderlineWidth = kScreenSizeWidth! * 0.44;
const double kTimePickerSliderUnderlineHeight = 4.0;
const double kAddTimeRecordOptionsDistances = 20.0;

final double kEmployeeSelectorChipWidth = kScreenSizeWidth! * 0.72;

//String Constants

const String kWelcomeMessage = 'Flutter FieldPass';
const String kMicrosoftSignIn = 'Sign in with Microsoft';
const String kImprint = 'Impressum ';
const String kPrivacy = 'Datenschutz';
const String kMyAccount = 'Mein Konto';
const String kBusinessCard = 'Visitenkarte';
const String kTimeTracking = 'Zeiterfassung';
const String kMyOperations = 'Meine Einsätze';

const String kMyAccountName = 'Greg Neu';
const String kMyAccountEmail = 'max.mustermann@bkl.dee';
const String kMyAccountPosition = 'Monteur';
const String kMyAccountPhone = '0160 - 123456789';
const String kMyAccountFax = '+49 1234 56 789 01-2';
const String kMyAccountMobile = '+49 1234 56';
const String kMyAccountImageUrl = 'assets/images/profile_pic/person1.jpeg';
const String kMyAccountLocation = 'Flutter Bootcamp';
const String kMyAccountLocationAddress = '6783 Ayala Ave 1200 Metro Manila';

const String kSuperior = 'Vorgesetzte(r)';
const String kSuperiorName = 'Ingo Flamingo';
const String kSuperiorEmail = 'ingo.flamingo@f-bootcamp.com';
const String kSuperiorPosition = 'Abteilungsleiter';
const String kSuperiorPhone = '0160 - 987654321';
const String kSuperiorMobile = '0160 - 987654321';
const String kSuperiorFax = '0160 - 987654321';
const String kSuperiorImageUrl = 'assets/images/profile_pic/person2.png';
const String kSuperiorLocation = 'Flutter Bootcamp';
const String kSuperiorLocationAddress = '6783 Ayala Ave 1200 Metro Manila';

const String kMonthlyReport = 'Monatsbericht';
const String kWeeklyReport = 'Wochenbericht';
const String kCreateMonthlyReport = 'Monatsbericht erstellen';
const String kSendWeeklyReport = 'Wochenbericht zuschicken';
const String kThisWeek = '12.03 - 19.03.2021';
const String kNextMonth = 'April 2020';

const String kLeaveSectionOverview = 'Übersicht';
const String kLeaveSectionAnnualLeave = 'Jahresurlaub ';
const int kLeaveSectionAnnualLeaveValue = 25;
const String kLeaveSectionRemainingVacation = 'Resturlaub EPOS';
const int kLeaveSectionRemainingVacationValue = 10;
const String kLeaveSectionRequested = 'Beantragt';
const int kLeaveSectionRequestedValue = 08;
const String kLeaveSectionCarryoverFromPreviousYear = 'Übertrag Vorjahr';
const int kLeaveSectionCarryoverFromPreviousYearValue = 01;
const String kLeaveSectionButton = 'Urlaub beantragen';

const String kCurrentBudget = 'Aktuelles Budget';
const int kCurrentBudgetValue = 7;

const String kSickLeave = 'Krankheitstage';
const String kTotalSickLeave = 'Insgesamt';
const String kSickLeaveButton = 'Krankheit einreichen';
const int kTotalSickLeaveValue = 3;

const String kAccount = 'AZ Konto';
const String kAccountHours = 'Stunden';
const int kAccountHoursValue = 100;

const String kBusinessCardAddressTileTitle = 'Adresse';

const String kAddLeaveModalTimePeriod = 'Zeitraum';
const String kAddLeaveModalDateRange = '27.04.21 - 05.05.21';
const String kAddLeaveModalTotalDays = 'Tage insgesamt';
const int kAddLeaveModalTotalDaysValue = 7;
const String kAddLeaveModalCurrentVacationLeave = 'Aktuelles Urlaubsbudget';
const int kAddLeaveModalCurrentVacationLeaveValue = 30;
const String kAddLeaveModalRequestedVacationDays = 'Beantragte Urlaubstage';
const int kAddLeaveModalRequestedVacationDaysValue = 8;

const String kMessageHint = 'Bemerkung hinzufügen';

const String kRepresentative = 'Vertretung durch';

const String kThankYouModalMessage = 'Vielen Dank.';
const String kThankYouModalRecorderSuccesMessage =
    'Wir haben Ihren Antrag erfasst.';

//List Constants
const List businessScreenSelection = ['Meine Visitenkarte', 'Vorgesetzte'];
const List kApplyVacationLeaveSelection = ['Monat', 'Jahr'];
const List kAddTimeRecordSelection = ['Arbeitszeit', 'Pause'];
const List kAddTimeRecordCategory = [
  'Wahlen Sie bitte Kategorie aus',
  'Web Development',
  'Mobile Development',
  'Testing',
  'QA',
  'Deployment',
];

const List kAddTimeRecordProjectNumber = [
  'Projektnummer hinzufügen',
  '111111',
  '2222222',
  '3333333',
  '4444444',
  '5555555',
];

List kEmployeeNames = [
  'Greg Neu',
  'Ingo Flamingo',
  'Andero Mustermann',
  'John Doe',
];

const List kTimeTrackerMenuIcons = [
  {
    'iconUrl': kCheckBlackIcon,
    'navigationUrlName': 'profilePage',
    'backgroundColor': kTimeTrackerDeleteButton,
  },
  {
    'iconUrl': kCheckBlackIcon,
    'navigationUrlName': 'profilePage',
    'backgroundColor': kFlutterOrange,
  },
  {
    'iconUrl': kSendIcon,
    'navigationUrlName': 'profilePage',
    'backgroundColor': kTimeTrackerSendButton,
  },
  {
    'iconUrl': kEditWhiteIcon,
    'navigationUrlName': 'profilePage',
    'backgroundColor': kTimeTrackerEditButton,
  },
];

const List kTypeOfCompanyLeaves = [
  'Urlaub',
  'Sick leave',
  'Vacation leave',
  'Bereavement',
  'Maternity/paternity leave',
  'Emergency Leave',
];

const List kCompanyLeaveDuration = [
  'Wie angegeben',
  'Full Day',
  'Half Day',
];

const List kCompanyLeaveRepresentative = [
  {
    'name': 'Representative',
    'imageUrl': kMyAccountImageUrl,
  },
  {'name': 'Greg neu', 'imageUrl': kMyAccountImageUrl},
  {'name': 'Ingo Flamingo', 'imageUrl': kSuperiorImageUrl},
];

//Color Constants

const Color kMirageTextColor = Color(0XFF191D26);
const Color kFlutterBlack = Colors.black;
const Color kScaffoldBackgroundColor = Color(0XFFF5F5F5);
const Color kFlutterOrange = Color(0XFFFFB72B);
const Color kBusinessSelectionUnderlineColor = Color(0XFF8465FF);
const Color kTimeTrackerDeleteButton = Color(0XFFE14141);
const Color kTimeTrackerSendButton = Color(0XFF6788FF);
const Color kTimeTrackerEditButton = Color(0XFF8465FF);
const Color kMessageTextFieldBackgroundColor = Color(0XFFF5F5F5);
const Color kFlutterGrey = Color(0XFFE0E0E0);
const Color kFlutterBlue = Color(0XFF4CB7E6);
