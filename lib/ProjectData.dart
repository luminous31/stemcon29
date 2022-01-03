import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stemcon/Nav/NavDPR.dart';

import 'Nav/NavAdd.dart';
import 'Nav/NavHome.dart';

class ProjectData extends StatefulWidget {
  const ProjectData({Key? key}) : super(key: key);

  @override
  _ProjectDataState createState() => _ProjectDataState();
}

class _ProjectDataState extends State<ProjectData> {

  int _currentIndex = 0;

  final tabs = [
    Center(child: NavHome()),
    Center(child: NavAdd()),
    Center(child: NavDPR()),


  ];


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          iconTheme: IconThemeData(
            color: Colors.black,
            //change your color here
          ),
          title: Text('GOKUL MATHURA',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

          // Image.asset('assets/logo/roundlogo.jpg', height: 40,),
          backgroundColor: Colors.white,
          elevation: 0,

          // leading: Image.asset('assets/logo/roundlogo.jpg',),
          // title: Text('STEMCON',style: TextStyle(fontSize: 20,color: Colors.black),),
          actions: [
            IconButton(icon: Icon(Icons.chat_bubble_outline,color: Colors.black,),onPressed: (){ },
            ),

          ],
        ),

        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.tasks,color: Colors.grey,),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add,color: Colors.grey),
                title: Text('')
            ),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.clipboardList,color: Colors.grey,),
                title: Text('')
            ),

          ],
          onTap:(index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),

      );  }
}
