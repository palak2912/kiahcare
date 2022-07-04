import 'package:flutter/material.dart';


class CustomLargeDropDown extends StatelessWidget {

  final String classname;
  final String valueChoose;
  final List itemlist;
  final Function onChange;

  CustomLargeDropDown({Key? key, required this.valueChoose, required this.onChange, required this.itemlist, required this.classname}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            border: Border.all(color: Colors.grey),
          ),
          // child: DropdownButtonHideUnderline(
          //   child: DropdownButton<CountryModal>(
          //     hint: Text('Select Country'),
          //     value: _selectedCountryModal,
          //     isExpanded: true,
          //     icon: Icon(Icons.arrow_circle_down),
          //     iconSize: 30,
          //     iconEnabledColor: Colors.indigo,
          //     items: _countrylist.map((CountryModal item) {
          //       return DropdownMenuItem<CountryModal>(
          //         value: item,
          //         child: Text(item.countryName),
          //       );
          //     }).toList(),
          //     onChanged: (CountryModal newvalue) {
          //       setState(() {
          //         _selectedCountryModal = newvalue;
          //       });
          //     },
          //   ),
          // ),
        ),
      ),
    );
  }
}
