import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


final customTextFieldStyle =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);

const TextStyle appbarHeadingStyle =
    TextStyle(fontSize: 26, fontWeight: FontWeight.w800);

final customButtonStyle =
TextStyle(
  fontFamily: 'Ubuntu',
    color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16,);
    // TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);

final regularDarkText =
    TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black);

double getScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

double getStatusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;

Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;

final appbarIconSize = 30.0;

final placeholderLoadingImage = 'assets/images/loading.gif';

final screenMargin = 16.0;

final errorThemeColor = Colors.redAccent;

final primaryThemeColor = Colors.indigo;

final backgroundThemeColor = Colors.greenAccent.shade400;

final BrightnessTheme = Brightness.light;

final FontThemeFamily = TextStyle().fontFamily;

const API_URL = "http://10.0.2.2:3001";

TextStyle driverDetailsTextStyle =
    TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w700);

TextStyle driverTextStyle =
    TextStyle(fontSize: 14, color: Colors.black54, fontWeight: FontWeight.w700);

final f = new DateFormat('yyyy-MM-dd hh:mm a');

final f1 = new DateFormat('dd-MM-yyyy hh:mm a');

final times = new DateFormat('hh:mm a');

var newFormat = DateFormat("dd-MMM-yy");
var newFormatnew = DateFormat("yyyy-MM-dd");

var newFormat1 = DateFormat("dd-MM-yy");

var newFormat2 = DateFormat("dd-MM-yyyy");


String getInitials(String bankAccountName) => bankAccountName.isNotEmpty
    ? bankAccountName.trim().split(RegExp(' +')).map((s) => s[0]).take(2).join()
    : '';


String formatTimeOfDay(TimeOfDay tod) {
  final now = new DateTime.now();
  final dt = DateTime(now.year, now.month, now.day, tod.hour, tod.minute);
  DateFormat format = DateFormat("HH:mm:ss");
  return format.format(dt);
}










// String getInitials1({String string, int limitTo}) {
//   var buffer = StringBuffer();
//   var split = string.split(' ');
//   for (var i = 0 ; i < (limitTo ?? split.length); i ++) {
//     buffer.write(split[i][0]);
//   }
//
//   return buffer.toString();
// }








// for profile page

const kSpacingUnit = 10;

// const kDarkPrimaryColor = Color(0xFF212121);
// const kDarkSecondaryColor = Color(0xFF373737);
// const kLightPrimaryColor = Color(0xFFFFFFFF);
// const kLightSecondaryColor = Color(0xFFF3F7FB);
// const kAccentColor = Color(0xFFFFC107);

final kTitleTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);

final kCaptionTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w300,
);

final kButtonTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  // color: kDarkPrimaryColor,
);

// final kDarkTheme = ThemeData(
//   brightness: Brightness.dark,
//   fontFamily: 'SFProText',
//   primaryColor: kDarkPrimaryColor,
//   canvasColor: kDarkPrimaryColor,
//   backgroundColor: kDarkSecondaryColor,
//   accentColor: kAccentColor,
//   iconTheme: ThemeData.dark().iconTheme.copyWith(
//     color: kLightSecondaryColor,
//   ),
//   textTheme: ThemeData.dark().textTheme.apply(
//     fontFamily: 'SFProText',
//     bodyColor: kLightSecondaryColor,
//     displayColor: kLightSecondaryColor,
//   ),
// );

// final kLightTheme = ThemeData(
//   brightness: Brightness.light,
//   fontFamily: 'SFProText',
//   primaryColor: kLightPrimaryColor,
//   canvasColor: kLightPrimaryColor,
//   backgroundColor: kLightSecondaryColor,
//   accentColor: kAccentColor,
//   iconTheme: ThemeData.light().iconTheme.copyWith(
//     color: kDarkSecondaryColor,
//   ),
//   textTheme: ThemeData.light().textTheme.apply(
//     fontFamily: 'SFProText',
//     bodyColor: kDarkSecondaryColor,
//     displayColor: kDarkSecondaryColor,
//   ),
// );