import 'package:flutter/material.dart';

import 'constants.dart';


class ReusableCard extends StatelessWidget {
  final Color? color ;
   ReusableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color ?? activeCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
