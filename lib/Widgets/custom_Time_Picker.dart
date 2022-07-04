import 'package:flutter/material.dart';


class customTimePicker extends StatefulWidget {
  @override
  _customTimePickerState createState() => _customTimePickerState();
}

class _customTimePickerState extends State<customTimePicker> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

   _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _selectTime(),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ElevatedButton(
        //       onPressed: _selectTime,
        //       child: Text('SELECT TIME'),
        //     ),
        //     SizedBox(height: 8),
        //     // Text(
        //     //   'Selected time: ${_time.format(context)}',
        //     // ),
        //   ],
        // ),
      ),
    );
  }
}

