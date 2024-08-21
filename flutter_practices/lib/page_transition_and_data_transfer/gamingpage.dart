import 'package:flutter/material.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/person.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/resultpage.dart';

class Gamingpage extends StatefulWidget {
  Person p;
  Gamingpage({required this.p});

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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
              print("Appbar back button selected!");
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        backgroundColor: darkBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
                "${widget.p.name} - ${widget.p.age} - ${widget.p.height} - ${widget.p.isMarried}"),
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
