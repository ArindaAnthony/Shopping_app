import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
class UserWidget extends StatelessWidget {
  const UserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  ListTile(
      leading: FancyShimmerImage(
        height: size.width*0.15,
        width: size.width*0.15,
        errorWidget: const Icon(
          IconlyBold.danger,
          color: Colors.red,
          size: 28,
        ),
        imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
      ),
      title: const Text("Arinda Anthony", style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: const Text("arindaanthony69@gmail.com"),
      trailing: const Text("User role", style: TextStyle(color: Colors.pinkAccent,fontWeight: FontWeight.bold),),
    );
  }
}
