import 'package:block/Screens/home_screen.dart';
import 'package:block/widgets/CategoriesWidget.dart';
import 'package:block/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:page_transition/page_transition.dart';

import '../widgets/feeds_widget.dart';
class Categories_Screen extends StatelessWidget {
  const Categories_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: const HomeScreen(), type: PageTransitionType.fade));
            },
            child: const Icon(Icons.arrow_back, color: Colors.pinkAccent,)),
        title: const Text("Categories", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.2,
                ),
                itemCount: 2,
                itemBuilder: (context,index){
                  return const CategoriesWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

