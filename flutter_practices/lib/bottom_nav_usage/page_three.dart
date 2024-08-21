import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Page 3",
        style: TextStyle(fontSize: 30, color: Colors.black45),
      ),
    );
  }
}
