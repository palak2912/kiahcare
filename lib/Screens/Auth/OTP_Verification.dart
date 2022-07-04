import 'dart:ui';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:flutter/material.dart';
import '../../Widgets/Custom_Button.dart';
import '../../Widgets/custom_Text.dart';


class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);
  static const routeName = '/OtpVerification';

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                    text: 'Enter OTP',
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15,),

                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OTPTextField(
                        length: 4,
                        width: MediaQuery.of(context).size.width*0.6,
                        fieldWidth: 50,
                        style: TextStyle(
                            fontSize: 17
                        ),
                        textFieldAlignment: MainAxisAlignment.spaceBetween,
                        fieldStyle: FieldStyle.box,
                        otpFieldStyle: OtpFieldStyle(
                          backgroundColor: Colors.white,
                          borderColor: Colors.white,
                          enabledBorderColor: Colors.white,
                          focusBorderColor: Colors.white,
                        ),
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                        },
                      ),
                    ],
                  ),

                  SizedBox(height: 55,),
                  CustomButton(
                    label: 'Verified Number',
                    onpressed: (){},
                    buttoncolor: Colors.white,
                    txtcolor: Colors.teal,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Change Mobile Number?',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w300
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                        ),

                        InkWell(
                          onTap: (){},
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Resend OTP',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.w500
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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


