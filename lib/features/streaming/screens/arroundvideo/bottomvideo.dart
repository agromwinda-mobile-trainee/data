import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomVideo extends StatelessWidget {
  const BottomVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 30),
        child: Row(
          children:const [
            InkWell(
              child:Icon(Icons.done),
              
            )
          ],
        ),
      ),
    );
  }
}
