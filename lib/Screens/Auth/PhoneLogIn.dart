import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kiahcare/Widgets/Custom_TextFeild.dart';
import 'package:kiahcare/Widgets/custom_RaisedButton.dart';

class phoneverify extends StatefulWidget {
  const phoneverify({Key? key}) : super(key: key);
  static const routeName = '/phoneverify';

  @override
  State<phoneverify> createState() => _phoneverifyState();
}

class _phoneverifyState extends State<phoneverify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(),
          ),

          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Verify Your Phone \nNumber',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'India +91',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          letterSpacing: 0.5,
                          // fontWeight: FontWeight.w800
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.pinkAccent,)
                    ],
                  ),
                ),

                customvitalTextField(
                  label: false,
                  obscureText: false,
                  preicon: false,
                  enabled: true,
                  hintText: 'Mobile Number:',
                  suficon: false,
                  validate: false,
                ),

                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'We will sent you a One Time Password on this \nnumber for verification.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                    ),
                  ),
                ),

                RaisedGradientButton(
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.blueAccent,
                      Colors.pinkAccent
                    ],
                  ),
                  onPressed: (){
                    print('button clicked');
                  },
                  borderColor: Colors.transparent,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


