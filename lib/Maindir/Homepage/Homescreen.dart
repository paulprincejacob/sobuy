import 'package:flutter/material.dart';
import 'package:sobuy/Maindir/Constant/sobuyColor.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String texts = "LETS SEE";
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: homescreenPhase1(),
    ));
  }


  homescreenPhase1(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomScrollView(
        slivers: [
            SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context,index){
              return _buildListItem(index);
              // return Card(
              //   margin: const EdgeInsets.all(15),
              //   child: Container(
              //     color: Colors.blue[100 * (index % 9 + 1)],
              //     height: 80,
              //     alignment: Alignment.center,
              //     child: Text(
              //       "Item $index",
              //       style: const TextStyle(fontSize: 30),
              //     ),
              //   ),
              // );
            },childCount: 4
            ),
          ),
        ],
      ),


    );
  }

  _buildListItem(index) {
    switch (index){
      case 0:
        return Card(
          child: Image.asset('image/shampoo.jpeg'),
        );

      case 1:
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Mock Shampoo 500ml",
          style: TextStyle(
            fontSize: 25.0,
            color: sbgrey1color,
            fontWeight: FontWeight.w600,
            fontFamily: 'Roboto'
          ),
          ),
        );
      case 2:
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text("The International Nomenclature of Cosmetic Ingredients (INCI) is the list that breaks down all the ingredients in a product. It's the first place you want to check before you buy anything to see what it contains. The FDA requires that manufacturers identify the elements they use in making shampoos with standard names across the industry. You don’t have to understand everything on the list, but this is what you’ll find included in most shampoos.",
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w300
          ),
            strutStyle: StrutStyle(
              height: 1.5
            ),
          ),
        );
      case 3:
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Card(
            child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Mock Shampoo",style: TextStyle(
                        fontSize: 15
                      ),),
                    ),
                    Center(
                      child: Center(
                        child: Center(
                          child: Text ("\u20B9 900",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        );
    }

  }
}
