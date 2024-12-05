import "package:block/Screens/home_screen.dart";
import "package:block/widgets/feeds_widget.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:iconly/iconly.dart";
import "package:page_transition/page_transition.dart";

class FeedsScreen extends StatelessWidget {
  const FeedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(context, PageTransition(
              type: PageTransitionType.fade,
              child: const HomeScreen(),
            ),);
          },
            child: const Icon(
          Icons.arrow_back,
          color: Colors.pinkAccent,
              size: 30,
        )),
        title:  const Text("All Products", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
                itemCount:6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  childAspectRatio: 0.7
                ),
                itemBuilder: (context, index){
                  return const FeedsWidget();
                }),
          )
        ],
      ),
    );
  }
}
