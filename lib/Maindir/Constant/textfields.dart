import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';

class Textfields extends StatelessWidget {
  final String mobilenumber;
  final bool osbc;
  final TextInputType keyboardtype;

  Textfields(
      {required this.mobilenumber,
      required this.osbc,
      required this.keyboardtype});

  //const Textfields({Key? key,mobilenumber mobilenumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: keyboardtype,
        obscureText: osbc,
        decoration: InputDecoration(
        labelText: mobilenumber,
          hintText: mobilenumber,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: sbcolorMoodyBlue,
              width: 2.0,
            ),
          ),

        ),
      ),
    );
  }
}
