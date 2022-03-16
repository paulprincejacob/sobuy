import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';

class Loginbutton extends StatelessWidget {
  final String btnTxt;
  final Color colorBtn;
   const Loginbutton({Key? key,required this.btnTxt,required this.colorBtn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBtn,
        borderRadius: const BorderRadius.all(Radius.circular(10))
      ),
      width: double.infinity,
      height: 50,
      child: Center(child: Text(btnTxt,
      style:const TextStyle(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600
      ),
      )),
    );
  }
}
