import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';



class Onboardscreen extends StatefulWidget {
  const Onboardscreen({Key? key}) : super(key: key);

  @override
  State<Onboardscreen> createState() => _OnboardscreenState();
}

class _OnboardscreenState extends State<Onboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Create your profile',
              body: 'Help to get BG-Passport'
            ),

            PageViewModel(
                title: 'Add Your Product',
                body: 'Help to get BG-Passport'
            ),

            PageViewModel(
                title: 'Sell Your Product',
                body: 'Maintain the inventory'
            ),
          ],

          done: const Text('Start',style: TextStyle(fontWeight: FontWeight.w600),),
          onDone: (){
            Navigator.pushReplacementNamed(context, 'credential');
          },
          showSkipButton: true,
          skip: const Text('Skip'),
          next: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
