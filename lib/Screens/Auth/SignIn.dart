import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kiahcare/Widgets/Custom_Rich_Text.dart';
import 'package:kiahcare/Widgets/Custom_TextFeild.dart';
import 'package:kiahcare/Widgets/custom_RaisedButton.dart';

import '../../Widgets/Custom_Button.dart';
import '../../Widgets/custom_Text.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static const routeName = '/SignIn';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.shade200,
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Txt(
                    text: 'Sign In',
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(15) //                 <--- border radius here
                            ),
                            color: Colors.white,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.shade400,
                            //     blurRadius: 7,
                            //     offset: Offset(0,-2),
                            //   )
                            // ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          child:
                          Icon(Icons.call, color: Colors.teal.shade400, size: 30,),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 15, top: 15, bottom: 15),
                          child: customvitalTextField(
                            label: false,
                            obscureText: false,
                            preicon: false,
                            enabled: true,
                            hintText: 'Phone',
                            suficon: false,
                            validate: false,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15,),
                  CustomButton(
                    label: 'Get OTP',
                    onpressed: (){},
                    buttoncolor: Colors.white,
                    txtcolor: Colors.teal,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
                    child: RichTxt(
                      text: 'You may received an SMS for verification. Don\'t have an account. Please ',
                      text1: 'Sign Up',
                      text2: '',
                      text3: '',
                      fontSize: 16,
                      fontSize1: 16,
                      fontSize2: 16,
                      fontSize3: 16,
                      color: Colors.white,
                      color1: Colors.white,
                      color2: Colors.white,
                      color3: Colors.white,
                      fontStyle: FontStyle.normal,
                      underlined1: false,
                      underlined3: false,
                      fontWeight1: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


