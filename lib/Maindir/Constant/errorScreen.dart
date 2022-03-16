import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';


class Errorscreen extends StatelessWidget {
  const Errorscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Colors.red,
      body:Center(
        child: Text("404 / Page Not Found",
        style: TextStyle(
          fontSize: 30,
          color: sbcolorCloudBurst
        ),
        ),
      ),
    );
  }
}
