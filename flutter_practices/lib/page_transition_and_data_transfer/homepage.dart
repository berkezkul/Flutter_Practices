import 'package:flutter/material.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/colors.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/gamingpage.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/person.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;
  bool check = false;

  //veritabanından veri alırken ara yüze veri aktarma kısmını future builder ile yapıyoruz.
  Future<int> sum(int num1, int num2) async {
    int result = num1 + num2;
    return result;
  }

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
                  var p = Person(
                      name: "Berke", age: 23, height: 1.75, isMarried: true);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Gamingpage(p: p)));
                },
                child: const Text("Start")),
            Visibility(visible: check, child: const Text("Hello")),
            Text(
              check ? "Hello" : "Good Bye",
              style: TextStyle(color: check ? Colors.green : Colors.red),
            ),
            (() {
              if (check) {
                return const Text("Hello",
                    style: TextStyle(color: Colors.green));
              } else {
                return const Text(
                  "Good Bye",
                  style: TextStyle(color: Colors.red),
                );
              }
            }()),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = true;
                  });
                },
                child: const Text("Check")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    check = false;
                  });
                },
                child: const Text("Uncheck")),
            FutureBuilder<int>(
                future: sum(15, 25),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("An error occured!");
                  }
                  if (snapshot.hasData) {
                    return Text("Result: ${snapshot.data}");
                  } else {
                    return const Text("No result");
                  }
                })
          ],
        ),
      ),
    );
  }
}
