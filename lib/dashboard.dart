import 'package:flutter/material.dart';
import 'package:stemcon/ProjectData.dart';
import 'package:stemcon/flotingbutton/AddProject.dart';

import 'class/LExpansionPanelList.dart';
import 'flotingbutton/AddProjectData.dart';




class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            Image.asset('assets/logo/roundlogo.jpg', height: 40,),
            SizedBox(width: 5,),
            Container(
                padding: const EdgeInsets.all(0.0), child: Text('STEMCON',style: TextStyle(color: Colors.black),))
          ],


        ),

        // Image.asset('assets/logo/roundlogo.jpg', height: 40,),
        backgroundColor: Colors.white,
        elevation: 0,

        // leading: Image.asset('assets/logo/roundlogo.jpg',),
        // title: Text('STEMCON',style: TextStyle(fontSize: 20,color: Colors.black),),
        actions: [
          IconButton(icon: Icon(Icons.notifications,color: Colors.black,),onPressed: (){ },
          ),
          IconButton(icon: Icon(Icons.search,color: Colors.black,), onPressed: () {  },
          ),
          PopupMenuButton(
              icon: new Icon(Icons.more_vert, color: Colors.black),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("First"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Second"),
                  value: 2,
                )
              ]
          ),
        ],
      ),
      body:
      LExpansionPanelList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          // Navigator.pop(context);
          Navigator.push(context,MaterialPageRoute(builder: (context) => AddProjectData()));
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => Dashboard()));
        },
        child: const Icon(Icons.add),
        backgroundColor: Color(0xfff116BA7),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerFloat,
    );
  }
}