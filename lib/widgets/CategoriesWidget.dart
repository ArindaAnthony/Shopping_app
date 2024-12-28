import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.3,
      width: 20,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.lightBlueAccent
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
        const Positioned(child: Align(alignment: Alignment.center,)),
        Image.network("https://i.ibb.co/vwB46Yq/shoes.png", fit: BoxFit.contain, height: size.width*0.45, width: size.width*0.45,),
         const Padding(
          padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("hei there", style: TextStyle(backgroundColor: Colors.white38),),
          ),
        )
      ],),
    );
  }
}
