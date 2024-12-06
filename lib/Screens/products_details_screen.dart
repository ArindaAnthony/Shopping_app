import 'package:block/Screens/home_screen.dart';
import 'package:block/widgets/Product_widget.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/salesWidget.dart';
class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              Navigator.push(context, PageTransition(child: const HomeScreen(), type:PageTransitionType.fade));
            },
            child: const Icon(Icons.arrow_back, size: 25,color: Colors.red,)),
      ),
      body:  SingleChildScrollView(
        child: Expanded(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Category", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),),
                  const SizedBox(height: 11,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Lorem Ipsum", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 29),),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(color: Colors.lightBlue, fontSize: 28,),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("304", style: TextStyle(fontSize: 28),),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: size.height * 0.25,
                    child: Swiper(
                      itemCount: 3,
                      pagination: const SwiperPagination(
                          alignment: Alignment.bottomCenter,
                          builder: DotSwiperPaginationBuilder(
                            color: Colors.white,
                            activeColor: Colors.red,
                          )),
                      itemBuilder: (context, index) {
                        return const ProductWidget();
                      },
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const Text("Description", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),),
                  const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 25),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
