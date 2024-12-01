import 'package:block/widgets/feeds_widget.dart';
import 'package:flutter/material.dart';
class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FeedsWidget(),
      ),
    );
  }
}
