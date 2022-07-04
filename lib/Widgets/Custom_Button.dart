import 'package:flutter/material.dart';
import '../Consts/constants.dart';
import 'custom_loader.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final double? textsize;
  final Function onpressed;
  final Color buttoncolor;
  final Color txtcolor;
  final IconData? icon;

  CustomButton({required this.label, this.isLoading = false, required this.onpressed,
    required this.buttoncolor, required this.txtcolor, this.textsize, this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          if (!isLoading) {
            onpressed();
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttoncolor,
              borderRadius: BorderRadius.circular(15),
            // border: Border.all(color: Colors.white,width: 2)
          ),
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          // height: 55,
          child: isLoading
              ? CustomLoader(
                  color: Colors.indigo,
                  size: 25.0,
                )
              : Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      icon == null ? Container() : Icon(icon),
                      SizedBox(width: icon == null ? 0 : 10),
                      Text(
                        label, //.toUpperCase(),
                        style: TextStyle(
                          color: txtcolor, //Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: textsize == null ? 24 : textsize,
                        ),
                            textAlign: TextAlign.center,
                        // style: customButtonStyle,
                      ),
                    ],
                  ),
                ),
        ));
  }
}
