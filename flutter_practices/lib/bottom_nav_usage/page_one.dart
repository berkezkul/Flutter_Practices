import 'package:flutter/material.dart';
//import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Page 1",
        style: TextStyle(fontSize: 30, color: Colors.black45),
      ),
    );
  }
}
