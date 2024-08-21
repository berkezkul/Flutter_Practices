import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Page 2",
        style: TextStyle(fontSize: 30, color: Colors.black45),
      ),
    );
  }
}
