import 'package:flutter/material.dart';

class UserInteractionPage extends StatefulWidget {
  const UserInteractionPage({super.key});

  @override
  State<UserInteractionPage> createState() => _UserInteractionPageState();
}

class _UserInteractionPageState extends State<UserInteractionPage> {
  var teControl =
      TextEditingController(); //herhangi bir yerden gelen veriyi okumayı sağlıyor.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "User Interaction Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Are you sure you want to delete?"),
                    action: SnackBarAction(
                        label: "Yes",
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text("Deleted"),
                          ));
                        }),
                  ));
                },
                child: const Text("Snackbar")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: const Color.fromARGB(255, 248, 224, 244),
                    content: const Text(
                      "Are you sure you want to delete?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    ),
                    action: SnackBarAction(
                        label: "Yes",
                        textColor: Colors.green,
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              "Deleted",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                            backgroundColor:
                                const Color.fromARGB(255, 248, 224, 244),
                          ));
                        }),
                  ));
                },
                child: const Text("Snackbar (Customized)")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Alert Title"),
                          content: const Text("Alert Content"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print("Selected cancel button.");
                                  Navigator.pop(context);
                                },
                                child: const Text("Cancel")),
                            TextButton(
                                onPressed: () {
                                  print("Selected continue button.");
                                },
                                child: const Text("Continue")),
                          ],
                        );
                      });
                },
                child: const Text("Alert")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Registeration"),
                          content: TextField(
                            controller: teControl,
                            decoration: InputDecoration(hintText: "Data"),
                          ),
                          backgroundColor: Colors.grey,
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print("Selected cancel button.");
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(color: Colors.black54),
                                )),
                            TextButton(
                                onPressed: () {
                                  print("Data: ${teControl.text}");
                                  Navigator.pop(context);
                                  teControl.text = "";
                                },
                                child: const Text("Save",
                                    style: TextStyle(color: Colors.black54))),
                          ],
                        );
                      });
                },
                child: const Text("Alert (Specialized)")),
          ],
        ),
      ),
    );
  }
}
