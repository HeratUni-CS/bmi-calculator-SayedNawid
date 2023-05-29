import 'package:flutter/material.dart';

import 'constants.dart';


class ReusableCard extends StatelessWidget {
  final Color? color ;
  final Widget? child ;
   ReusableCard({this.color , this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? activeCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
