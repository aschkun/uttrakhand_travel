import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_one/pages/mainpage.dart';
import 'package:travel_one/widgets/app_large_text.dart';
import 'package:travel_one/widgets/colors.dart';

import '../widgets/app_text.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    var images = {
      "balloning.png":"balloning",
      "hiking.png":"hiking",
      "kayaking.png":"kayaking",
      "snorkling.png":"snorkling"
    };
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 70,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.menu,size: 25,color: AppColors.green1Color,),
                  Expanded(child: Container()),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.green2Color,
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 0),
              child: AppLargeText(text: "DISCOVER"),
            ),
            SizedBox(height: 20),
            Container(
              //aligning the tabs along the center left
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                    labelPadding: const EdgeInsets.only(left: 20,right: 20),
                    labelColor: Colors.lightGreenAccent,
                    unselectedLabelColor: Colors.lightGreen,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: CircleTabIndicator(color: Colors.white,radius: 4),
                    tabs:[
                      Tab(text: "Experience", ),
                      Tab(text: "Inspire"),
                      Tab(text: "Explore"),
                    ]
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: _tabController,
                children: [
                ListView.builder(
                  itemCount : 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      margin: const EdgeInsets.only(right: 15,top: 10),
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage("img/timthumb.jpg"),
                            fit: BoxFit.cover,
                          )
                      ),
                    );
                  },
                ),

                  Tab(text: "Second Tab",),
                  Tab(text: "Third Tab",)
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(text: "Explore More",size: 20,),
                  SizedBox(width: 20,),
                  AppText(text: "See All",color: Colors.lightGreenAccent,)
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 100,
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 20),
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_,index){
                    return Container(
                      margin: const EdgeInsets.only(right: 50),
                      child: Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("img/"+images.keys.elementAt(index)),
                                  fit: BoxFit.cover,
                                )
                            ),

                      ),
                          Container(
                            child: AppText(
                              text: images.keys.elementAt(index),
                            ),
                          ),
                    ])

            );}

            ),)
          ],
        ),
      ),
    );;
  }
}

//in order to access the circle avatar we are extending decoration widget
class CircleTabIndicator extends Decoration {  @override
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color : color,radius: radius);

    throw UnimplementedError();
  }
}
class _CirclePainter extends BoxPainter {  @override
  final Color color;
  double radius;
  _CirclePainter({required this.color,required this.radius});
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    // TODO: implement paint
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    //creating x and y index for the circle pointer over the tabs for assigning its value in the mid
    final Offset circleOffset = Offset(configuration.size!.width/2 + radius/2, configuration.size!.height/2 + radius/2);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }
}


