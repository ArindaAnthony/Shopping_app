import 'package:block/Screens/products_details_screen.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

class FeedsWidget extends StatelessWidget {
  const FeedsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>const ProductsDetailsScreen()));
          },
          borderRadius: BorderRadius.circular(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text("304"),
                      ],
                    ),
                    Icon(
                      IconlyBold.heart,
                      color: Colors.pinkAccent,
                    )
                  ],
                ),
              ),
              // Image.network("https://i.ibb.co/vwB46Yq/shoes.png"),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FancyShimmerImage(
                  height: size.height * 0.2,
                  width: double.infinity,
                  errorWidget: const Icon(
                    IconlyBold.danger,
                    color: Colors.red,
                    size: 28,
                  ),
                  imageUrl: "https://i.ibb.co/vwB46Yq/shoes.png",
                  boxFit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Title",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
