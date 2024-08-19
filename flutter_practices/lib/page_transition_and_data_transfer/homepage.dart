import 'package:flutter/material.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/gamingpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter Homepage",
          style: TextStyle(color: white),
        ),
        backgroundColor: darkBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Result: $counter"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: const Text("Push")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Gamingpage()));
                },
                child: const Text("Start"))
          ],
        ),
      ),
    );
  }
}
