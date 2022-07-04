import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:kiahcare/Consts/constants.dart';


class Utils {

  bool passvalidateStructure(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  // bool emailvalidateStructure(String value){
  //   String emailValid = (r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  //   RegExp regExp = new RegExp(emailValid);
  //   return regExp.hasMatch(value);
  // }

  /// check if the string contains only numbers
  bool isNumeric(String str) {
    RegExp _numeric = RegExp(r'^-?[0-9]+$');
    return _numeric.hasMatch(str);
  }

  String convertDateTimeDisplay(String date) {
    final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
    final DateFormat serverFormater = DateFormat('dd-MM-yyyy');
    final DateTime displayDate = displayFormater.parse(date);
    final String formatted = serverFormater.format(displayDate);
    return formatted;
  }

  //^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$

  double getnumberfromString(dynamic text){
    double number = double.parse(text.replaceAll(new RegExp(r'[^0-9.]'),''));
    return number;
  }

  String getSubString(String value) {
    if (value.length == 1) {
      return value.substring(0, 1);
    } else {
      return value.substring(0, 2);
    }
  }

  int getCurrentStatusHours(String dateTime) {
    if (dateTime == null) return 0;
    List<String> dateTimeParts = dateTime.split(".");
    int hours = 0;
    if (dateTimeParts[0] != null) {
      hours = int.parse(dateTimeParts[0].trim().split(' ')[0]);
    }
    return hours;
  }

  String getStatusHours(String dateTime) {
    if (dateTime == null) return '';
    List<String> dateTimeParts = dateTime.split(".");
    String formatedDateTime = '${dateTimeParts[0]} ${dateTimeParts[1]}';
    return formatedDateTime;
  }

  String getFormatedTime(String dateTime) {
    if (dateTime == null) return '';
    List<String> dateTimeParts = dateTime.split(".");
    print('date parts $dateTimeParts');
    String hours = '';
    String minute = '';
    if (dateTimeParts[0] != null) {
      hours = dateTimeParts[0].split(' ')[0];
    }
    if (dateTimeParts[1] != null) {
      minute = dateTimeParts[1].trim().split(' ')[0];
    }
    print('minute value ${dateTimeParts[1]}');
    print('minute value ${dateTimeParts[1].trim().split(' ')[0]}');
    String formatedDateTime = '$hours:$minute';
    return formatedDateTime;
  }

  Future<Uint8List> getBytesFromAsset(
      String path, int width, int height) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width, targetHeight: height);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }





















  
  List<dynamic> getStausColor(int status) {
    switch (status) {
      case 0:
        return [Color(0xFFD7CCC8), Color(0xFF5D4037), 'OFF'];
      case 1:
        return [Color(0xFFFFECB3), Color(0xFFFFA000), 'SB'];
      case 2:
        return [Color(0xFFB3E5FC), primaryThemeColor, 'ON'];
      case 3:
        return [Color(0xFFC8E6C9), Color(0xFF388E3C), 'DR'];
      default:
        return [Color(0xFFD7CCC8), Color(0xFF5D4037), 'OFF'];
    }
  }

  String getDriverStatus(int status) {
    if (status == null) return '';
    switch (status) {
      case 0:
        return 'Stop';
      case 1:
        return 'Moving';
      case 2:
        return 'Idle';
      default:
        return '';
    }
  }

  String getMarkerImagePath(int status) {
    if (status == null) return 'assets/images/stop-marker.png';
    switch (status) {
      case 0:
        return 'assets/images/stop-marker.png';
      case 1:
        return 'assets/images/moving-marker.png';
      case 2:
        return 'assets/images/idle-marker.png';
      default:
        return 'assets/images/stop-marker.png';
    }
  }

  String getDateTimeFormat(DateTime dateTime) {
    if (dateTime == null) return '';
    return DateFormat.yMd().add_jm().format(dateTime.toLocal());
  }

  bool isCurrentDate(DateTime today, DateTime pickerDate) {
    return today.difference(pickerDate).inDays == 0;
  }

  String getLatLong(double lat, double long) {
    if (lat == null || long == null) return '';
    return '${lat.toString()}, ${long.toString()}';
  }

  bool containStatus(List<String> val, int i) {
    return (val.sublist(i, 23).contains('ON') ||
        val.sublist(i, 23).contains('OFF') ||
        val.sublist(i, 23).contains('DR') ||
        val.sublist(i, 23).contains('SB'));
  }

  bool notContainFutureStatus(List<String> val, int i) {
    return (!val.sublist(i, 23).contains('ON') &&
        !val.sublist(i, 23).contains('OFF') &&
        !val.sublist(i, 23).contains('DR') &&
        !val.sublist(i, 23).contains('SB'));
  }

}
