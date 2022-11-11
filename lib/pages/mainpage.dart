import 'package:flutter/material.dart';
import 'package:travel_one/bar_item.dart';
import 'package:travel_one/pages/homepage.dart';
import 'package:travel_one/pages/mypage.dart';
import 'package:travel_one/pages/search.dart';
import 'package:travel_one/widgets/colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    MyPage(),
    SearchPage(),
    BarItem(),


  ];
  int currentSelectedIndex = 0;
  void onTap(int index){
    setState(() {
      currentSelectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green1Color,
      body: pages[currentSelectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentSelectedIndex,
        selectedItemColor: Colors.black38,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps,color: AppColors.green3Color,)),
          BottomNavigationBarItem(label: "Bar",icon:Icon(Icons.bar_chart_sharp,color: AppColors.green3Color)),
          BottomNavigationBarItem(label:"Search",icon: Icon(Icons.search,color: AppColors.green3Color)),
          BottomNavigationBarItem(label:"My",icon: Icon(Icons.person,color: AppColors.green3Color))
        ],

      ),
    );
  }
}
