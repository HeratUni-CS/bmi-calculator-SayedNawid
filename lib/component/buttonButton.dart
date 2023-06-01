import 'package:bmi_starting/screens/result_page.dart';
import 'package:flutter/material.dart';

import '../constants.dart';



class ButtonButton extends StatelessWidget {
 final String? title ;
 final VoidCallback? onTap ;

   ButtonButton({required this.title ,required this.onTap}) ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        child: Center(
            child: Text(
          title!,
          style: kLargButtonTextStyle,
        )),
        color: buttomCardColor,
        margin: const EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomHeight,
      ),
    );
  }
}