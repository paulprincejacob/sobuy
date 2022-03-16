

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Credential/Credentialscreen.dart';
import 'package:sobuy/Maindir/Homepage/Homescreen.dart';
import 'package:sobuy/Maindir/Logo/logoScreen.dart';

class Routegenerator{



  static Route<dynamic> generatorRoute(RouteSettings routeSettings){
    final args = routeSettings.arguments;

    switch(routeSettings.name){
      case '/logoscreen':
        return MaterialPageRoute(builder: (_)=>const Logoscreen(),settings:routeSettings );
      case '/homescreen':
        return MaterialPageRoute(builder: (_)=>const Homescreen(),settings:routeSettings );
      case '/credential':
        return MaterialPageRoute(builder: (_)=>const Credentialscreen(),settings: routeSettings);

    }
    return MaterialPageRoute(builder: (_)=>const Homescreen(),settings: routeSettings);
  }
}