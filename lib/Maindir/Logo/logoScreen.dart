import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';
import 'package:sobuy/routeGenerator.dart';


class Logoscreen extends StatefulWidget {
  const Logoscreen({Key? key}) : super(key: key);

  @override
  State<Logoscreen> createState() => _LogoscreenState();
}

class _LogoscreenState extends State<Logoscreen> {

  @override
  void initState() {
       super.initState();
    _redirectpage();
  }

  _redirectpage() async{

    Future.delayed(const Duration(milliseconds: 5500),(){
    Navigator.popAndPushNamed(context,'homescreen');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("SoBuy",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w800
              ),
              ),
              Container(
                width: 25,
                height: 25,
                decoration:const BoxDecoration(
                  color: sblogogreencolor,
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
