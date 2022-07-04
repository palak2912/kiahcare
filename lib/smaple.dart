import 'package:flutter/material.dart';
import 'package:kiahcare/Widgets/Custom_TextFeild.dart';
import 'package:kiahcare/Widgets/custom_textfield.dart';


class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {

  TextEditingController _controller = TextEditingController(text: 'new');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 250,),

              //  Button
              Container(
                width: MediaQuery.of(context).size.width,
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:
                Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              //  Icon + Button
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
                      Icon(Icons.bubble_chart_outlined, color: Colors.lightBlueAccent, size: 30,),
                    ),
                  ),
                  Expanded(
                    flex: 3,
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
                      Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),

              //  Icon + textfield
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
                      Icon(Icons.bubble_chart_outlined, color: Colors.lightBlueAccent, size: 30,),
                    ),
                  ),
                  Expanded(
                    flex: 3,
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
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

