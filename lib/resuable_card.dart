import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  final Color? color ;
  final Widget? child ;
  final VoidCallback? onPress ;
   ReusableCard({this.color , this.child , this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin:const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color ?? activeCardColor,
          borderRadius: BorderRadius.circular(10), 
        ),
         child: child,
      ),
    );
  }
}
