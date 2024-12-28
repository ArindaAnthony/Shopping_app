import 'package:block/Screens/home_screen.dart';
import 'package:block/widgets/user_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: const HomeScreen(), type: PageTransitionType.fade));
            },
            child: const Icon(Icons.arrow_back, color: Colors.pinkAccent,)),
        title: const Text("All Users", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index){
              return const UserWidget();
            },

      ),
    ));
  }
}
