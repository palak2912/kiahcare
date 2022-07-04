import 'package:flutter/material.dart';


class appBar extends StatelessWidget {
  final IconData? icon;
  final IconData? secondicon;
  final IconData? thirdicon;
  final bool icon1;
  final bool icon2;
  final bool icon3;
  final String title;
  final Function? backonpressed;
  final Function? secondonpressed;
  final Function? thirdonpressed;

  const appBar({this.icon,required this.icon1, required this.title,  this.backonpressed,  this.secondonpressed,
      this.thirdonpressed, this.secondicon, this.thirdicon,required this.icon2, required this.icon3});


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
        child: icon1 ? Icon(
          icon,
          color: Colors.indigo,
        ) : Container(),
        onTap: backonpressed!(),
      ),
      actions: [
        icon2 ? InkWell(
          onTap: secondonpressed!(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(secondicon, color: Colors.indigo, size: 30,),
          ),
        ) : Container(),
        icon3 ? InkWell(
          onTap: thirdonpressed!(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              // height: 50,
              // width: 60,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                // border: Border.all(color: Colors.white,width: 2)
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('SOS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
            ),
          ),
        ) : Container(),
      ],
      centerTitle: true,
      title: Text(
        '$title',
        style: TextStyle(  fontFamily: 'Ubuntu',
          fontSize: 25,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Colors.teal.shade400,
      elevation: 1,
    );
  }
}
