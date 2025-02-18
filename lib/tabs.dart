import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(Tabs());
}

class Tabs extends StatefulWidget{
  const Tabs({super.key});

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;

  String imgBunker = 'assets/images/bunker.svg';
  String imgCastillo = 'assets/images/castillo.svg';

  void _onTabTapped (int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 3) {
        imgBunker = 'assets/images/bunker-selec.svg';
      } else {
        imgBunker = 'assets/images/bunker.svg';
      }
      if (_selectedIndex == 4) {
        imgCastillo = 'assets/images/castillo-selec.svg';
      } else {
        imgCastillo = 'assets/images/castillo.svg';
      }
    });
  }
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6, 
        child: Scaffold(
        appBar: AppBar(
          
          title: const Text('Tabs main'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.location_on_rounded),
            Icon(Icons.image_rounded),
            SvgPicture.asset(imgBunker, width: 24, height: 24,),
            SvgPicture.asset(imgCastillo, width: 24, height: 24,),
            Icon(Icons.panorama_photosphere_outlined),
          ],
          ),
          bottomNavigationBar: Material(
            color: Colors.black,
            child: TabBar(
              onTap: _onTabTapped,
              labelColor: Color(0xffd6a469),
              indicator: null,
              tabs: [
                Tab(icon: Icon(Icons.home_outlined)),
                Tab(icon: Icon(Icons.location_on_rounded)),
                Tab(icon: Icon(Icons.image_rounded)),
                Tab(icon: SvgPicture.asset(imgBunker, width: 24, height: 24,)),
                Tab(icon: SvgPicture.asset(imgCastillo, width: 24, height: 24,)),
                Tab(icon: Icon(Icons.panorama_photosphere_outlined)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}