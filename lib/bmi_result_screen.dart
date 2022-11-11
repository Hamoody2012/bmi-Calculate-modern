import 'package:flutter/material.dart';

class BmiResualtScreen extends StatelessWidget {
  final double is_result;
  final double is_age;
  final String is_gender;

  BmiResualtScreen({
    required this.is_result,
    required this.is_age,
    required this.is_gender,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) => 
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            )

        ),
        backgroundColor: Color(0xffb2e2fc),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          'نتيجة الإختبار',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            // fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'الجنس : $is_gender',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'النتيجة : $is_result',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              'العمر : $is_age',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
