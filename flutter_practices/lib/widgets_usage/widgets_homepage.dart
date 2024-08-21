import 'package:flutter/material.dart';

class WidgetsHomepage extends StatefulWidget {
  const WidgetsHomepage({super.key});

  @override
  State<WidgetsHomepage> createState() => _WidgetsHomepageState();
}

class _WidgetsHomepageState extends State<WidgetsHomepage> {
  var tfController = TextEditingController();
  String receivedData = "";
  String imageName = "happy.png";
  bool switchControl = false;
  bool checkboxControl = false;
  int radioValue = 0;
  bool progressControl = false;
  double sliderValue = 20.0;
  var tfHour = TextEditingController();
  var tfDate = TextEditingController();
  var countryLists = <String>[];
  var selectedCountry = "Türkiye";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryLists.add("Türkiye");
    countryLists.add("Germany");
    countryLists.add("Spain");
    countryLists.add("Italy");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Widgets",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 158, 39, 180),
      ),
      body: Center(
        child: Column(
          children: [
            Text(receivedData),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: tfController,
                decoration: const InputDecoration(hintText: "Password"),
                keyboardType: TextInputType
                    .number, //kullanıcıya keyboardında direkt sayıları/texti/emaili vs açmak
                obscureText: true, //şifre gibi yazdığını gizlemek için
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    receivedData = tfController.text;
                  });
                },
                child: const Text("Login")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          imageName = "happy.png";
                        });
                      },
                      child: const Text("Happy")),
                  Expanded(
                    child: Image.asset(
                      "images/$imageName",
                      width: 50, // istediğiniz genişlik
                      height: 50, // istediğiniz yükseklik
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          imageName = "sad.png";
                        });
                      },
                      child: const Text("Sad")),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: SwitchListTile(
                      title: const Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: switchControl,
                      onChanged: (data) {
                        setState(() {
                          switchControl = data;
                        });
                      }),
                ),
                SizedBox(
                  width: 150,
                  child: CheckboxListTile(
                      title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxControl,
                      onChanged: (data) {
                        setState(() {
                          checkboxControl = data!;
                        });
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  child: RadioListTile(
                      title: const Text(
                        "Meet",
                        style: TextStyle(fontSize: 16),
                      ),
                      value: 1,
                      groupValue: radioValue,
                      onChanged: (data) {
                        setState(() {
                          radioValue = data!;
                        });
                      }),
                ),
                SizedBox(
                  width: 150,
                  child: RadioListTile(
                      title: const Text(
                        "Doner",
                        style: TextStyle(fontSize: 16),
                      ),
                      value: 2,
                      groupValue: radioValue,
                      onChanged: (data) {
                        setState(() {
                          radioValue = data!;
                        });
                      }),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          progressControl = true;
                        });
                      },
                      child: const Text("Start")),
                  Visibility(
                      visible: progressControl,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          progressControl = false;
                        });
                      },
                      child: const Text("Stop")),
                ],
              ),
            ),
            Text(sliderValue.toString()),
            Slider(
                max: 100.0,
                min: 0.0,
                value: sliderValue,
                onChanged: (data) {
                  setState(() {
                    sliderValue = data;
                  });
                }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfHour,
                      decoration: const InputDecoration(hintText: "Hour"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                                context: context,
                                initialTime:
                                    TimeOfDay.fromDateTime(DateTime.now()))
                            .then((value) {
                          tfHour.text = "${value!.hour}: ${value.minute}";
                        });
                      },
                      icon: const Icon(Icons.access_time)),
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfDate,
                      decoration: const InputDecoration(hintText: "Date"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2030))
                            .then((value) {
                          tfDate.text =
                              "${value!.day}.${value.month}.${value.year}";
                        });
                      },
                      icon: const Icon(Icons.date_range)),
                ],
              ),
            ),
            DropdownButton(
                value: selectedCountry,
                icon: const Icon(Icons.arrow_drop_down),
                onChanged: (data) {
                  setState(() {
                    selectedCountry = data!;
                  });
                },
                items: countryLists.map((country) {
                  return DropdownMenuItem(value: country, child: Text(country));
                }).toList()),
            ElevatedButton(
                onPressed: () {
                  print("Switch state: $switchControl");
                  print("Checkbox state: $checkboxControl");
                  print("Radio state: $radioValue");
                  print("Slider state: $sliderValue");
                  print("Selected country: $selectedCountry");
                },
                child: const Text("Show")),
          ],
        ),
      ),
    );
  }
}
