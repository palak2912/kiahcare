import 'dart:ui';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kiahcare/Widgets/custom_RaisedButton.dart';


class LoginOTP extends StatefulWidget {
  const LoginOTP({Key? key}) : super(key: key);
  static const routeName = '/LoginOTP';

  @override
  State<LoginOTP> createState() => _LoginOTPState();
}

class _LoginOTPState extends State<LoginOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              height: 35,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),

          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Please enter the OTP sent to \n',
                              style: TextStyle(  fontFamily: 'Ubuntu',
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                              text: '9994785412 or mymail@gmail.com',
                              style: TextStyle(  fontFamily: 'Ubuntu',
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {
                                // Navigator.of(context).pushReplacement(MaterialPageRoute(
                                //     builder: (context) => SignUpScreen()
                                // ));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Edit Mobile Number',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.pink.shade600,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w400
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        'OTP',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.pink.shade600,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.w700
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width*0.6,
                        // fieldWidth: 80,
                        style: TextStyle(
                            fontSize: 17
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                        otpFieldStyle: OtpFieldStyle(
                          borderColor: Colors.pink.shade600,
                          enabledBorderColor: Colors.pink.shade600,
                          focusBorderColor: Colors.pink.shade600,
                        ),
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Spacer(),
                      Text(
                        '0/6',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Text(
                    'Did not recieve OTP?',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                    ),
                  ),

                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'RESEND OTP',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.pink.shade600,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w700
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),

                  RaisedGradientButton(
                    child: Text(
                      'Log In',
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
          ),
        ],
      ),
    );
  }
}


