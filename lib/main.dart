import 'package:flutter/material.dart';
import 'CompanyCode.dart';
import 'LoginPage.dart';
import 'SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMS',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({ Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final tabs = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Add")),
    Center(child: Text("Save")),
    Center(child: Text("Profile")),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              title: Text('Home')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black),
              title: Text('Search')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,color: Colors.black),
              title: Text('Add')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.save,color: Colors.black),
              title: Text('Save')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              title: Text('Person')
          )
        ],
        onTap:(index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }

}
