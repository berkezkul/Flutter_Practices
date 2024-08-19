import 'package:flutter/material.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';

class Resultpage extends StatefulWidget {
  const Resultpage({super.key});

  @override
  State<Resultpage> createState() => _ResultpageState();
}

class _ResultpageState extends State<Resultpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result Page",
          style: TextStyle(color: white),
        ),
        backgroundColor: darkBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                },
                child: const Text("Homepage")),
          ],
        ),
      ),
    );
  }
}
