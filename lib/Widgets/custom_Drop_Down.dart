import 'package:flutter/material.dart';


class customDropDown extends StatelessWidget {

  final String valueChoose;
  final List itemlist;
  final Function onChange;

  customDropDown({Key? key, required this.valueChoose, required this.onChange, required this.itemlist}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6),
        child: Container(
          padding: const EdgeInsets.only(right: 12, left: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButton(
            hint: Text('${itemlist[0]}'),
            icon: Icon(Icons.arrow_circle_down),
            iconSize: 30,
            iconEnabledColor: Colors.indigo,
            isExpanded: true,
            underline: SizedBox(),
            focusColor: Colors.greenAccent,
            dropdownColor: Colors.white,
            style: TextStyle(
              fontFamily: 'Ubuntu',
              fontSize: 20,
              color: Colors.black54,
            ),
            value: valueChoose,
            onChanged: (val) => onChange,
            // items: itemlist?.map((valueitems) {
            //   return new DropdownMenuItem(
            //     child: new Text(valueitems['name']),
            //     value: valueitems.toString(),
            //   );
            // })?.toList() ??
            //     [],
            items: itemlist.map((valueitems){
              return DropdownMenuItem(
                value: valueitems,
                child: Text(valueitems),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
