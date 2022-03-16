import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/button.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';
import 'package:sobuy/Maindir/Constant/textfields.dart';


class Signupscreen extends StatefulWidget {
  const Signupscreen({Key? key}) : super(key: key);

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 0,
                right: 0,
                child: _imageContainer(),
              ),
              Positioned(
                top:210,
                  left: 0,
                  right: 0,
                  child: _mainContainer()),
              Positioned(

                bottom: 20,
                  left: 0,
                  right: 0,
                  child: _loginContainer())

            ],
          )),
    );
  }

  _imageContainer() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child:const Center(
        child:Icon(Icons.account_circle_outlined,
        size: 140,
        ),
      ),
    );
  }

  _mainContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Textfields(mobilenumber: "Mobile Number",
                          osbc: false,
                          keyboardtype: TextInputType.phone),
                     const SizedBox(height: 20,),
                      const Text("You may recieve SMS updates from SoBuy and can opt out at anytime.",
                      style: TextStyle(
                        color: sbcolorCadetBlue,
                        fontSize: 12
                      ),
                      ),
                      const SizedBox(height: 20,),
                     const Loginbutton(btnTxt: "Next", colorBtn: sbcolorBlue)
                    ],
                  ),
                );
              }, childCount: 1),
            ),
          ],
        ),
      ),
    );
  }

  _loginContainer() {
    return  Container(
      height: 30,
        decoration: const BoxDecoration(
          border:Border(top:BorderSide(color: sbgreycolor))
        ),
        child: InkWell(
          onTap: (){
            Navigator.pushReplacementNamed(context, "credential");
          },
          child: Center(
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account ? ',
                      style: TextStyle(
                        fontSize: 15,
                          color: sbgrey1color
                      )
                  ),
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                        fontSize: 15,
                      color: sbcolorMoodyBlue
                    )
                  )
                ]
              ),
            ),
          ),
        ),

    );
  }
}
