import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:kiahcare/Consts/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final VoidCallback? validator, onSaved, onChanged;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool enabled;
  final String? initialValue;
  final Icon? textfieldIcon;
  final bool icon;
  final bool validate;
  // final bool filter;
  final TextEditingController? editingController;


  CustomTextField(
      {this.hintText,
      this.keyboardType,
      required this.obscureText,
      this.validator,
      this.onSaved,
        required this.enabled,
      this.initialValue,
      this.onChanged,
      this.textfieldIcon,
        required this.icon,
      this.editingController,
        required this.validate,
      // this.onEditingComplete,
      // this.filter,
      });

  validatorfun(){}

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      // onEditingComplete: onEditingComplete,
      // inputFormatters: [
      //   filter ? null :  WhitelistingTextInputFormatter(RegExp("[a-z A-Z á-ú Á-Ú 0-9]"))
      // ],
      controller: editingController,
      decoration: InputDecoration(
        hintText: '\t $hintText',
        hintStyle: TextStyle(  fontFamily: 'Ubuntu',color: Colors.grey),
        contentPadding: EdgeInsets.all(20),

        prefix: Container(
            // padding: const EdgeInsets.only(top: 15, bottom: 15),
            margin: const EdgeInsets.only(right: 10, bottom: 4),
            child: textfieldIcon,
        ),
        suffixIcon:
        icon ? null : Icon(
            Icons.done_all,
            color: Colors.greenAccent,
              ),
        border: UnderlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
      enabled: enabled,
      initialValue: initialValue,
      validator: validate ? validator : validatorfun(),
      onSaved: (val) => onSaved,
      onChanged: (val) => onChanged,
      keyboardType: keyboardType ?? keyboardType,
      style: customTextFieldStyle,
      obscureText: obscureText == true? true : false,
    );
  }
}
