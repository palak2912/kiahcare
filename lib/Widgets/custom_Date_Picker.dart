import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CupertinoDateTextBox extends StatefulWidget {
  /// A text box widget which displays a cupertino picker to select a date if clicked
  CupertinoDateTextBox(
      {required this.initialValue,
        required this.onDateChange,
        required this.hintText,
        this.color = CupertinoColors.label,
        this.hintColor = CupertinoColors.inactiveGray,
        this.pickerBackgroundColor = CupertinoColors.systemBackground,
        this.fontSize = 20.0,
        this.textfieldPadding = 15.0,
        this.enabled = true,
        required this.maximumDdate,
        required this.icon,
        this.iconColor = Colors.black,
        // this.minimumDdate
      });

  /// The initial value which shall be displayed in the text box
  final DateTime initialValue;

  /// The maximum date value which shall be used
  final DateTime maximumDdate;

  /// The function to be called if the selected date changes
  final Function onDateChange;

  /// The text to be displayed if no initial value is given
  final String hintText;

  /// The color of the text within the text box
  final Color color;

  /// The color of the hint text within the text box
  final Color hintColor;

  /// The background color of the cupertino picker
  final Color pickerBackgroundColor;

  /// The size of the font within the text box
  final double fontSize;

  /// The inner padding within the text box
  final double textfieldPadding;

  /// Specifies if the text box can be modified
  final bool enabled;

  final IconData icon;

  final Color iconColor;

  @override
  _CupertinoDateTextBoxState createState() => new _CupertinoDateTextBoxState();
}

class _CupertinoDateTextBoxState extends State<CupertinoDateTextBox> {
  final double _kPickerSheetHeight = 250.0;

  late DateTime _currentDate;

  // DateTime _minimumDdate;
  late DateTime _maximumDdate;


  @override
  void initState() {
    super.initState();
    _currentDate = widget.initialValue;
    // _minimumDdate = widget.minimumDdate;
    _maximumDdate = widget.maximumDdate;
  }

  void callCallback() {
    widget.onDateChange(_currentDate);
  }

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: _kPickerSheetHeight,
      color: CupertinoColors.white,
      child: DefaultTextStyle(
        style: TextStyle(
          color: widget.color,
          fontSize: 22.0,
        ),
        child: GestureDetector(
          // Blocks taps from propagating to the modal sheet and popping.
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );
  }

  void onSelectedDate(DateTime date) {
    setState(() {
      _currentDate = date;
    });
  }

  Widget _buildTextField(String hintText, Function onSelectedFunction) {
    String fieldText;
    Color textColor;
    if (_currentDate != null) {
      final formatter = new DateFormat.yMd();
      fieldText = formatter.format(_currentDate);
      textColor = widget.color;
    } else {
      fieldText = hintText;
      textColor = widget.hintColor;
    }

    return Expanded(
      child: GestureDetector(
        onTap: !widget.enabled
            ? null
            : () async {
          if (_currentDate == null) {
            setState(() {
              _currentDate = DateTime(1992, 1, 1, 1, 1);
            });
          }
          await showCupertinoModalPopup<void>(
            context: context,
            builder: (BuildContext context) {
              return _buildBottomPicker(CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  backgroundColor: widget.pickerBackgroundColor,
                  initialDateTime: _currentDate,
                  maximumDate: _maximumDdate, //DateTime.now(),
                  // minimumDate: _minimumDdate,
                  onDateTimeChanged: (DateTime newDateTime) {
                    onSelectedFunction(newDateTime);
                  }));
            },
          );
          callCallback();
        },
        child: InputDecorator(
          decoration: InputDecoration(
            isDense: true,
            hintText: hintText,
            hintStyle: TextStyle(
                color: CupertinoColors.inactiveGray, fontSize: widget.fontSize),
            contentPadding: EdgeInsets.all(widget.textfieldPadding),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide:
                BorderSide(color: CupertinoColors.white, width: 0.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide:
                BorderSide(color: CupertinoColors.white, width: 0.0)),
          ),
          child: Center(
            child:
            Icon(widget.icon, color: Colors.black,),
            // Text(
            //   '',//fieldText,
            //   style: TextStyle(
            //     color: textColor,
            //     fontSize: widget.fontSize,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildTextField(widget.hintText, onSelectedDate),
          // Padding(
          //   padding: const EdgeInsets.only(right: 14),
          //   child: Icon(Icons.calendar_today_outlined, color: Colors.indigo,),
          // ),
        ]);
  }
}
