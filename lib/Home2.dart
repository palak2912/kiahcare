import 'package:flutter/material.dart';
import 'package:kiahcare/secondcustomappbar.dart';

import 'Widgets/Custom_Rich_Text.dart';


class secondHome extends StatefulWidget {
  const secondHome({Key? key}) : super(key: key);

  @override
  State<secondHome> createState() => _secondHomeState();
}

class _secondHomeState extends State<secondHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size(80, 100),
      //   child: Container(
      //     padding: EdgeInsets.symmetric(vertical: 15),
      //     child: AppBar(
      //       backgroundColor: Color(0xff00C1A6),
      //       // backgroundColor: Colors.white,
      //       elevation: 0,
      //       title: Text(
      //         'Good Morning, Nitish',
      //         style: TextStyle(
      //           color: Colors.black,
      //         ),
      //       ),
      //       actions: [
      //         InkWell(
      //           onTap: (){},
      //           // onTap: thirdonpressed!(),
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      //             child: Container(
      //               decoration: BoxDecoration(
      //                 color: Color(0xff00C1A6),
      //                 borderRadius: BorderRadius.circular(25),
      //                 // border: Border.all(color: Colors.white,width: 2)
      //               ),
      //               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //               margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      //               child: Text('SOS',
      //                 style: TextStyle(
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.bold,
      //                 ),),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      backgroundColor: Color(0xff00C1A6),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            sliver: SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(top: 0),
                color: Color(0xff00C1A6),
                // color: Colors.grey.shade50,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Good Morning, Nitish',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          // onTap: thirdonpressed!(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red,  //Color(0xff00C1A6),
                                borderRadius: BorderRadius.circular(25),
                                // border: Border.all(color: Colors.white,width: 2)
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                              child: Text('SOS',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ),
                        )
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.person_outline, color: Colors.black, size: 100,),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Nitish Jha',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('51 Years',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),),
                      ],
                    ),
                    SizedBox(height: 15,),

                    Container(
                      height: MediaQuery.of(context).size.height/1.62,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        // border: Border.all(color: Colors.white,width: 2)

                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15) //                 <--- border radius here
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              blurRadius: 7,
                                              offset: Offset(0,-2),
                                            )
                                          ],
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.red.shade50,
                                              child: Icon(Icons.bloodtype_outlined, color: Colors.red, size: 35,),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('A+',
                                              style: TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.bold,
                                              ),),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15) //                 <--- border radius here
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              blurRadius: 7,
                                              offset: Offset(0,-2),
                                            )
                                          ],
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.deepPurple.shade50,
                                              child: Icon(Icons.height, color: Colors.deepPurple, size: 35,),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('183 cm',
                                              style: TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.bold,
                                              ),),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                        height: 120,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15) //                 <--- border radius here
                                          ),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.shade300,
                                              blurRadius: 7,
                                              offset: Offset(0,-2),
                                            )
                                          ],
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundColor: Colors.teal.shade50,
                                              child: Icon(Icons.monitor_weight_outlined, color: Colors.teal, size: 35,),
                                            ),
                                            SizedBox(height: 5,),
                                            Text('60 kg',
                                              style: TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 1.5,
                                                // fontWeight: FontWeight.bold,
                                              ),),
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Divider(color: Colors.grey.shade300, thickness: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: RichTxt(
                                  text: 'Allergy Name: ',
                                  text1: 'Spices, Pollen',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  fontSize2: 16,
                                  fontSize3: 16,
                                  color: Color(0xff00C1A6),
                                  color1: Colors.black,
                                  color2: Colors.white,
                                  color3: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Divider(color: Colors.grey.shade300, thickness: 1,),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: RichTxt(
                                  text: 'Medical Issue: ',
                                  text1: 'IICH, METAL aluminium',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  fontSize2: 16,
                                  fontSize3: 16,
                                  color: Color(0xff00C1A6),
                                  color1: Colors.black,
                                  color2: Colors.white,
                                  color3: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Divider(color: Colors.grey.shade300, thickness: 1,),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      height: 150,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        ),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: 7,
                                            offset: Offset(0,-2),
                                          )
                                        ],
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                      child: Icon(Icons.baby_changing_station, color: Colors.red, size: 65,),
                                  ),
                                  Text('Clinical',
                                    style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 1.5,
                                      color: Color(0xff00C1A6),
                                      // fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      height: 150,
                                      width: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        ),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.shade300,
                                            blurRadius: 7,
                                            offset: Offset(0,-2),
                                          )
                                        ],
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                                      child: Icon(Icons.baby_changing_station, color: Colors.red, size: 65,),
                                  ),
                                  Text('Non Clinical',
                                    style: TextStyle(
                                      fontSize: 25,
                                      letterSpacing: 1.5,
                                      color: Color(0xff00C1A6),
                                      // fontWeight: FontWeight.bold,
                                    ),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


