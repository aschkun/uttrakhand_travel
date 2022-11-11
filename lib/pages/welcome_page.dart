import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_one/widgets/app_large_text.dart';
import 'package:travel_one/widgets/colors.dart';
import 'package:travel_one/widgets/responsive.dart';

import '../widgets/app_text.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["welcome-one.png","welcome-two.png","welcome-three.png","balloning.png","button-one.png",
    "hiking.png","kayaking.png","mountain.jpeg","snorkling.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "img/"+images[index]),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                margin: EdgeInsets.only(top: 150,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Explore',color: Colors.deepPurple),
                        AppText(text: 'Uttrakhand',size: 22,color: Colors.purple
                          ,),
                        SizedBox(height: 10),
                        Container(
                          width: 250,
                          child:

                            AppText(
                                text: "Book these experiences for a close-up look at Dehradun District.",
                                color:Colors.purpleAccent,
                        ),),
                        SizedBox(height: 10),

                      ],

                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                        List.generate(3, (index){
                          return Container(
                            width: 8,
                            height: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white
                            ),
                          );
                        })
                      ,
                    ),
                    ResponsiveButton(),
                  ],
                ),
              ),
            );
    },
    ));
  }
}
