import 'package:flutter/material.dart';

import '../../Consts/colors.dart';
import '../../Widgets/Custom_Button.dart';
import '../../Widgets/Custom_Rich_Text.dart';
import '../../Widgets/appBar.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: appBar(
          icon1: false,
          backonpressed: () {},
          icon2: false,
          thirdonpressed: (){},
          icon3: true,
          title: 'Dashboard',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
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
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: ColorsConsts.backgroundColor,
                        // backgroundImage: ProfilePicpath == null
                        //     ? null
                        //     : FileImage(ProfilePicpath),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                             Text(
                                'Hello,Nitish Jha!',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
                                ),
                                textAlign: TextAlign.center,
                              ),
                             Spacer(),
                             Icon(Icons.medical_services_outlined),
                              SizedBox(width: 10,),
                              Icon(Icons.animation),
                          ],),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                                child: RichTxt(
                                  text: 'Age: ',
                                  text1: '35 year',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  color: Colors.black,
                                  color1: Colors.teal,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                                child: RichTxt(
                                  text: 'Blood Group: ',
                                  text1: 'A+',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  color: Colors.black,
                                  color1: Colors.teal,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w700,
                                ),
                              ),
                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                                child: RichTxt(
                                  text: 'Height: ',
                                  text1: '153.5 cm',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  color: Colors.black,
                                  color1: Colors.teal,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                                child: RichTxt(
                                  text: 'Weight: ',
                                  text1: '105 kg',
                                  text2: '',
                                  text3: '',
                                  fontSize: 16,
                                  fontSize1: 16,
                                  color: Colors.black,
                                  color1: Colors.teal,
                                  fontStyle: FontStyle.normal,
                                  underlined1: false,
                                  underlined3: false,
                                  fontWeight1: FontWeight.w700,
                                ),
                              ),
                            ],),
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              icon: Icons.animation,
              label: 'Clinical Services',
              onpressed: (){},
              buttoncolor: Colors.teal.shade400,
              txtcolor: Colors.white,
            ),
            SizedBox(height: 15,),
            CustomButton(
              icon: Icons.animation,
              label: 'Non Clinical Services',
              onpressed: (){},
              buttoncolor: Colors.teal.shade400,
              txtcolor: Colors.white,
            ),
            SizedBox(height: 15,),
            CustomButton(
              label: 'News',
              onpressed: (){},
              buttoncolor: Colors.teal.shade400,
              txtcolor: Colors.white,
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height/1.9,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index){
                  return Container(
                    height: 150,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15) //                 <--- border radius here
                              ),
                              color: Colors.grey.shade200,
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey.shade400,
                              //     blurRadius: 7,
                              //     offset: Offset(0,-2),
                              //   )
                              // ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hello,Nitish Jha!',
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



