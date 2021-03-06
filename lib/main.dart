import 'package:flutter/material.dart';
import 'package:sobuy/routeGenerator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'So Buy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'onboardscreen',
      onGenerateRoute:Routegenerator.generatorRoute,

    );
  }
}
