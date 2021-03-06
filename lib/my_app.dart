import 'package:flutter/material.dart';
import 'package:learning_app/screens/course_details.dart';

import 'screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Learning App",
      initialRoute: "/home",
      routes: {
        "/home": (context) => const Home(),
        "/course_details": (context) => const CourseDetails(),
      },
    );
  }
}