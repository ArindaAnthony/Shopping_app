import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Image.network("https://i.ibb.co/vwB46Yq/shoes.png",
                  fit: BoxFit.contain,)
            ),
          ),
        ],
      ),
    );
  }
}
