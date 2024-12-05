import 'package:block/Screens/home_screen.dart';
import 'package:block/constants/consts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Store App',
      /*theme: ThemeData(
        scaffoldBackgroundColor: lightScaffoldColor,
        primaryColor: lightCardColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: lightTextColor,fontSize: 22,
            fontWeight: FontWeight.bold
          ),
          elevation: 0,
          iconTheme: IconThemeData(
            color: lightIconsColor
          ),
        )*/

      home: HomeScreen()
    );
  }
}


