import 'package:flutter/material.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/resultpage.dart';

class Gamingpage extends StatefulWidget {
  const Gamingpage({super.key});

  @override
  State<Gamingpage> createState() => _GamingpageState();
}

class _GamingpageState extends State<Gamingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gaming Page",
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Resultpage()));
                },
                child: const Text("Continue")),
          ],
        ),
      ),
    );
  }
}
