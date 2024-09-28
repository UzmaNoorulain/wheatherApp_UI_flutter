import 'package:flutter/material.dart';

class slider extends StatelessWidget {
   bool isActive;
   slider(bool bool, {super.key,this.isActive=false});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 5,
        width: isActive ? 12 : 5,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white54,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
    ;
  }
}
