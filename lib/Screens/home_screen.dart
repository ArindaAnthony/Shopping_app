import "package:block/Screens/test_screen.dart";
import "package:block/constants/consts.dart";
import "package:block/widgets/appBarWidget.dart";
import "package:block/widgets/feeds_widget.dart";
import "package:card_swiper/card_swiper.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:iconly/iconly.dart";

import "../widgets/salesWidget.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController? textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    textEditingController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          title: const Text("Home"),
          centerTitle: true,
          leading: AppBarIcons(
            function: () {},
            iconData: IconlyBold.category,
          ),
          actions: [AppBarIcons(iconData: IconlyBold.user_3, function: () {})],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                TextField(
                  controller: textEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.pink,
                        size: 25,
                      ),
                      hintText: "Search",
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: lightBackgroundColor, width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Colors.pinkAccent, width: 1),
                      )),
                ),
                const SizedBox(
                  height: 18,
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
                      return const SalesWidget();
                    },
                    control: const SwiperControl(),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Products",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    Icon(
                      Icons.arrow_right_rounded,
                      size: 60,
                      color: Colors.pinkAccent,
                    )
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                      itemCount: 5,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 0,
                              crossAxisSpacing: 0,
                              childAspectRatio: 0.6),
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: FeedsWidget(),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
