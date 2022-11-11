import 'dart:math';
import 'dart:ui';
import 'package:bmi_calculator/bmi_result_screen.dart';


import 'package:flutter/material.dart';

class BmiModernScreen extends StatefulWidget {
  BmiModernScreen({Key? key}) : super(key: key);

  @override
  State<BmiModernScreen> createState() => _BmiModernScreenState();
}

class _BmiModernScreenState extends State<BmiModernScreen> {
  bool isMale = true;
  double height = 80.0;
  double newwieght = 60.0;
  double age = 10.0;

  final Color primaryColor = Color(0xffb2e2fc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb2e2fc),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          'حساب كتلة الجسم',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        )),
      ),
      
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xffb2e2fc),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          color: isMale
                              ? Color.fromARGB(-12, 178, 226, 252)
                                  .withOpacity(0.9)
                              : Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/male.png'),
                              width: 60,
                              height: 60,
                            ),
                            Text(
                              'ذكر',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 248, 137, 254),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          color: !isMale
                              ? Color.fromARGB(255, 248, 137, 254)
                              : Colors.white.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/woman.png'),
                              width: 60,
                              height: 60,
                            ),
                            Text(
                              'أنثى',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'أدخل الطول',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'سم',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Slider(
                        value: height,
                        max: 250,
                        min: 0.0,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        })
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'أدخل الوزن',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${newwieght.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    newwieght++;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight ++',
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    newwieght--;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight --',
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: primaryColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'أدخل العمر',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight ++',
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                mini: true,
                                heroTag: 'weight --',
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Color(0xffb2e2fc),
            child: MaterialButton(
              onPressed: () {
                double result = newwieght / pow(height / 100, 2);

                    Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => BmiResualtScreen(
                    is_gender: isMale? 'ذكر' : 'أنثى' ,
                    is_age: age,
                    is_result: result.roundToDouble(),
                  )
                  ));
              },
              height: 60,
              child: Text(
                'CALCULATE',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
