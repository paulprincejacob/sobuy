import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/button.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';
import 'package:sobuy/Maindir/Constant/textfields.dart';


class Credentialscreen extends StatefulWidget {
  const Credentialscreen({Key? key}) : super(key: key);

  @override
  State<Credentialscreen> createState() => _CredentialscreenState();
}

class _CredentialscreenState extends State<Credentialscreen> {


  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:SafeArea(
        child:Stack(
          children: [
            Positioned(
              left: 0,
                right: 0,
                top: 0,
                child: _topContainer(context,screenheight)),
            Positioned(
              left: 0,
                right: 0,
                bottom: 0,
                child: _bottomContainer(context,screenheight))
          ],
        )
      )
    );
  }
 _topContainer(BuildContext context,double screenheight){
    return Container(
      height: screenheight/2,
      decoration:const  BoxDecoration(
        color: Colors.white
      ),
      child:RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'SoBuy',
              style: TextStyle(
                color: sbcolorMariner,
                fontWeight: FontWeight.w600,
                fontSize: 40
              )
            ),
            TextSpan(
                text: '.',
                style: TextStyle(
                    color: sbcolorCadetBlue,
                    fontWeight: FontWeight.w600,
                    fontSize: 50
                )
            )
          ]
        )
      )
    );
 }

  _bottomContainer(BuildContext context,double screenheight){
    return Container(
      decoration:const BoxDecoration(
        color: Colors.white
      ),
      width: double.infinity,
      height: screenheight/2,
      child: CustomScrollView(
         slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate((context,index){
            return Padding(
              padding:const EdgeInsets.symmetric(horizontal: 10),
              child: _containerPhase(context,index));
          },childCount:2)
        )],
      ),
    );
  }


  _containerPhase(context,index){
    switch(index){
      case 0:
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const Text('Login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
              ),
              const SizedBox(
                height: 20,
              ),
              Textfields(mobilenumber: 'Enter Mobile Number',osbc: false,keyboardtype: TextInputType.phone,),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        );
      case 1:
        return Container(
          child:Column(
            children:  [
              InkWell(
                onTap: ()  {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Login Success"),
                      duration: Duration(microseconds: 10000),
                      ));
                },
                  child:const Loginbutton(btnTxt: "Login",colorBtn: sbcolorBlue,)),
              const SizedBox(height: 15,),
            const Center(child: Text("or"),),
              const SizedBox(height: 15,),
             const Loginbutton(btnTxt: "Don't Have an Account ?",colorBtn: sbgreycolor,),

             const SizedBox(height: 15,),
              const Text('Powered by ADPA',
              style: TextStyle(
                fontSize: 12,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w400,
                color: sbgreycolor
              ),
              )
            ],
          ),
        );
      default:
        return Container();
    }
  }






}
