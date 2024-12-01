import 'package:block/constants/consts.dart';
import 'package:flutter/material.dart';
class AppBarIcons extends StatelessWidget {
  final IconData iconData;
  final Function function;
  const AppBarIcons({super.key, required this.iconData, required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: function(),
        child:  Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).cardColor
          ),
          child: Icon(iconData, color: Colors.pink,),
        ),
      ),
    );
  }
}

