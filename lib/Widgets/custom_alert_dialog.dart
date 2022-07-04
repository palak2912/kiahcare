import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title, message, label;
  final Function submit;

  CustomAlertDialog({required this.title, required this.message, required this.label, required this.submit});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title:
          Text(title, style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 20,
            fontWeight: FontWeight.w300,),
      textAlign: TextAlign.center,),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              message,
              style: TextStyle(  fontFamily: 'Ubuntu',
                  color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => submit,
              child: Container(
                height: 45,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(25)),
                alignment: Alignment.center,
                child: Text(label.toUpperCase(),
                    style: TextStyle(  fontFamily: 'Ubuntu',
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
