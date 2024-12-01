import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SalesWidget extends StatelessWidget {
  const SalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        gradient: const LinearGradient(
            colors: [Color(0xFF7A60A5), Color(0XFF82C3DF)],
            begin: FractionalOffset(0, 0),
            end: FractionalOffset(1.0, 0),
            stops: [0, 1],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:  const EdgeInsets.only(left: 12.0),
            child: Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
          color: const Color(0xFF9689CE),),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8),
                    child: Text(
                      "Get the Special discount",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    "50% off",
                    style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Image.network("https://i.ibb.co/vwB46Yq/shoes.png",
                  fit: BoxFit.scaleDown,)
            ),
          ),

        ],
      ),
    );
  }
}
