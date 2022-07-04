import 'package:flutter/material.dart';
import '../Consts/constants.dart';
import 'custom_loader.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isLoading;
  final Function onpressed;
  final Color buttoncolor;
  final Color Iconcolor;

  CustomIconButton(
      {required this.icon,
      this.isLoading = false,
        required this.onpressed,
        required this.buttoncolor,
        required this.Iconcolor,
        required this.label});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          if (!isLoading) {
            onpressed();
          }
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white, width: 2),
              gradient: LinearGradient(colors: <Color>[
                Color.fromRGBO(68, 113, 143, 1),
                Color.fromRGBO(55, 113, 92, 1),
                // Colors.teal[600],
                // Colors.teal[500], // 68, 113, 143
                // Colors.teal[400], //55, 113, 92 rgb
                // Colors.teal[300],
              ]),
            ),
            height: 60,
            child: isLoading
                ? CustomLoader(
                    color: Colors.white,
                    size: 25.0,
                  )
                : Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          icon,
                          color: Iconcolor,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          label.toUpperCase(),
                          style: customButtonStyle,
                        ),
                      ],
                    ),
                  ),
          ),
        ));
  }
}
