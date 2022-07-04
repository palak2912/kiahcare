import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:kiahcare/Consts/constants.dart';


class customvitalTextField extends StatelessWidget {
  final String ?hintText;
  final String ?labelText;
  final bool label;
  final VoidCallback? sufixfunction;
  final VoidCallback? onSaved, onChanged; //, validator;
  final TextInputType ?keyboardType;
  final bool obscureText;
  final bool enabled;

  // final String initialValue;
  final IconData ?textfieldIcon;
  final bool preicon;
  final bool suficon;
  final IconData ?iconData;
  final IconData ?preiconData;
  final int ?maxlines;
  final int ?maxlength;
  final int ?limitvalue;
  final bool validate;
  final TextEditingController ?editingController;

  customvitalTextField({
    this.hintText,
    this.keyboardType,
    required this.obscureText,
    // this.validator,
    this.onSaved,
    required this.enabled,
    // this.initialValue = '',
    this.onChanged,
    this.textfieldIcon,
    required this.suficon,
    this.editingController,
    this.iconData,
    required this.preicon,
    this.maxlines,
    this.limitvalue,
    this.labelText,
    required this.label,
    this.preiconData,
    required this.validate,
    this.maxlength, this.sufixfunction,
    // this.onEditingComplete,
    // this.filter,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(width: 0, color: Colors.transparent),
            // boxShadow: [
            //   BoxShadow(
            //   color: Colors.grey.shade400,
            //   blurRadius: 8.0,
            //     spreadRadius: 1
            // ),]
        ),
        child: TextFormField(
          maxLines: maxlines,
          maxLength: maxlength,
          controller: editingController,
          // onEditingComplete: onEditingComplete,
          inputFormatters: [
            LengthLimitingTextInputFormatter(limitvalue),
            // filter ? null :  WhitelistingTextInputFormatter(RegExp("[a-z A-Z á-ú Á-Ú 0-9]"))
          ],
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20.0),
            suffixIcon: suficon
                ? InkWell(
                  onTap: sufixfunction,
                  child: Container(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, left: 10.0, right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              bottomLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0))),
                      child: Icon(
                        iconData,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                )
                : null,
            prefixIcon: preicon
                ? Container(
                    padding: const EdgeInsets.only(
                        top: 16.0, bottom: 16.0, left: 10.0, right: 10),
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.only(
                    //         topLeft: Radius.circular(30.0),
                    //         bottomLeft: Radius.circular(30.0),
                    //         topRight: Radius.circular(30.0),
                    //         bottomRight: Radius.circular(30.0))),
                    child: Icon(
                      preiconData,
                      // color: Theme.of(context).primaryColor,
                    ))
                : null,
            // Container(
            //     padding: const EdgeInsets.only(
            //         top: 16.0,
            //         bottom: 16.0,
            //         left: 10.0,
            //         right: 10),
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius
            //                 .circular(
            //                 30.0),
            //             bottomLeft: Radius
            //                 .circular(
            //                 30.0),
            //             topRight: Radius
            //                 .circular(
            //                 30.0),
            //             bottomRight:
            //             Radius.circular(
            //                 30.0))),
            //     child: suficon ? Icon(
            //       iconData,
            //       color: Theme.of(context)
            //           .primaryColor,
            //     ) : null
            // ),
            hintText: '\t $hintText',
            hintStyle: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w300,
            ),
            labelText: label ? '$labelText' : null,
            labelStyle: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(width: 0, color: Colors.transparent),
              // borderSide: BorderSide(color: Theme.of(context).backgroundColor),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15.0),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            filled: true,
            fillColor: Colors.white, //.withOpacity(0.1),
          ),
          enabled: enabled,
          // initialValue: initialValue,
          // validator: (val) => validator,
          onSaved: (val) => onSaved,
          onChanged: (val) => onChanged,
          keyboardType: keyboardType ?? keyboardType,
          style: customTextFieldStyle,
          obscureText: obscureText == true ? true : false,
          validator: validate ? MultiValidator([
            RequiredValidator(errorText: 'Required'),
          ]) : MultiValidator([
          ]),
        ),
      ),
    );
  }
}
