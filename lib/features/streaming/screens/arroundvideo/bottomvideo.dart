import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class BottomVideo extends StatelessWidget {
  const BottomVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40),
              child:const Text(
                  "lorem ipsum can vida loss canar con el mayor por el vider"),
            )
          ],
        ),
      ),
    );
  }
}
