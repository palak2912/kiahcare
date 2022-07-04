import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:image_picker/image_picker.dart';
import '../../Consts/colors.dart';
import '../../Widgets/Custom_Button.dart';
import '../../Widgets/Custom_TextFeild.dart';
import '../../Widgets/custom_Text.dart';
import 'dart:io' as io;


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  var ProfilePicpath;
  late PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  void _pickImagegallery() async {
    try {
      final pickedFile = await _picker.getImage(source: ImageSource.gallery, imageQuality: 100);
      ProfilePicpath = (pickedFile != null ? io.File(pickedFile.path) : null)!;
      setState(() {
        _imageFile = pickedFile!;
        ProfilePicpath = io.File(_imageFile.path);
      });
    } catch (e) {
      print("Image picker error " + e.toString());
    }
  }

  void _pickImagecamera() async {
    try {
      var pickedFile = await _picker.getImage(source: ImageSource.camera, imageQuality: 100);
      ProfilePicpath = (pickedFile != null ? io.File(pickedFile.path) : null)!;
      setState(() {
        _imageFile = pickedFile!;
        ProfilePicpath = io.File(_imageFile.path);
      });
    } catch (e) {
      print("Image picker error " + e.toString());
    }
  }

  void _remove() {
    setState(() {
      ProfilePicpath = io.File('');
    });
    Navigator.pop(context);
  }

  int index = 0;
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey.shade200,
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Txt(
                      text: 'Register',
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      textAlign: TextAlign.center,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                          child: CircleAvatar(
                            radius: 70,
                            backgroundColor: ColorsConsts.white,
                            backgroundImage: ProfilePicpath == null
                                ? null
                                : FileImage(ProfilePicpath),
                          ),
                        ),
                        Positioned(
                            top: 110,
                            left: 100,
                            child: RawMaterialButton(
                              elevation: 10,
                              fillColor: ColorsConsts.white,
                              child: Icon(Icons.edit),
                              padding: EdgeInsets.all(15.0),
                              shape: CircleBorder(),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          'Choose option',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: ColorsConsts.gradiendLStart),
                                        ),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: [
                                              InkWell(
                                                onTap:(){
                                                  _pickImagecamera();
                                                  Navigator.of(context).pop();
                                                },
                                                splashColor: Colors.purpleAccent,
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.all(8.0),
                                                      child: Icon(
                                                        Icons.camera,
                                                        color: Colors.purpleAccent,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Camera',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                          color: ColorsConsts.title),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  _pickImagegallery();
                                                  Navigator.of(context).pop();
                                                },
                                                splashColor: Colors.purpleAccent,
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.all(8.0),
                                                      child: Icon(
                                                        Icons.image,
                                                        color: Colors.purpleAccent,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Gallery',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                          color: ColorsConsts.title),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              InkWell(
                                                onTap: _remove,
                                                splashColor: Colors.purpleAccent,
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.all(8.0),
                                                      child: Icon(
                                                        Icons.remove_circle,
                                                        color: Colors.red,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Remove',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.red),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                            ))
                      ],
                    ),

                    SizedBox(height: 15,),

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: CustomButton(
                                  label: 'Male',
                                  onpressed: (){
                                    setState(() {
                                      index = 0;
                                      gender = 'Male';
                                    });
                                  },
                                  buttoncolor: index == 0 ?  Colors.grey.shade700 : Colors.white,
                                  txtcolor: index == 0 ?  Colors.white : Colors.grey,
                                  textsize: 20,
                                ),
                              ),
                              Expanded(
                                child: CustomButton(
                                  label: 'Female',
                                  onpressed: (){
                                    setState(() {
                                      index = 1;
                                      gender = 'Female';
                                    });
                                  },
                                  buttoncolor: index == 1 ?  Colors.grey.shade700 : Colors.white,
                                  txtcolor: index == 1 ?  Colors.white : Colors.grey,
                                  textsize: 20,
                                ),
                              ),
                              Expanded(
                                child: CustomButton(
                                  label: 'Other',
                                  onpressed: (){
                                    setState(() {
                                      index = 2;
                                      gender = 'Other';
                                    });
                                  },
                                  buttoncolor: index == 2 ?  Colors.grey.shade700 : Colors.white,
                                  txtcolor: index == 2 ?  Colors.white : Colors.grey,
                                  textsize: 20,
                                ),
                              ),
                            ],
                          ),
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
                                  Icon(Icons.person, color: Colors.red.shade400, size: 30,),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
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
                                  padding: EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
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
                                  Icon(Icons.mail, color: Colors.blue.shade400, size: 30,),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
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
                                  Icon(Icons.animation, color: Colors.teal.shade400, size: 30,),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 15, top: 5, bottom: 5),
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
                        ],
                      ),
                    ),

                    SizedBox(height: 25,),
                    CustomButton(
                      label: 'Submit',
                      onpressed: (){},
                      buttoncolor: Colors.white,
                      txtcolor: Colors.teal,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


