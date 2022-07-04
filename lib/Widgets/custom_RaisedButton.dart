import 'package:flutter/material.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final Function onPressed;
  final Color borderColor;

  const RaisedGradientButton({
    Key? key,
    required this.child,
    required this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
    required this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // margin: EdgeInsets.symmetric(horizontal: 25, vertical: 22),
      height: 45.0,
      decoration: BoxDecoration(
          gradient: gradient,
        border: Border.all(color: borderColor),
        //   boxShadow: [
        // BoxShadow(
        //   color: Colors.grey.shade500,
        //   offset: Offset(0.0, 1.5),
        //   blurRadius: 1.5,
        // ),]
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed(),
            child: Center(
              child: child,
            )),
      ),
    );
  }
}