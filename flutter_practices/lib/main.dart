import 'package:flutter/material.dart';
import 'package:flutter_practices/bottom_nav_usage/bottom_navigation_page.dart';
import 'package:flutter_practices/page_transition_and_data_transfer/homepage.dart';
//import 'package:flutter_practices/bottom_nav_usage/bottom_navigation_page.dart';
import 'package:flutter_practices/user_interaction/user_interaction_page.dart';
import 'package:flutter_practices/widgets_usage/widgets_homepage.dart';
//import 'package:flutter_practices/page_transition_and_data_transfer/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
            const WidgetsHomepage() //UserInteractionPage(), //const BottomNavigationPage() //const Homepage(),
        );
  }
}
