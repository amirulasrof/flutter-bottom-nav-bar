import 'package:flutter/material.dart';

//import pages to display upon clicked tabs
import './Home.dart';
import './Work.dart';
import './Landscape.dart';

void main() => runApp(MyApp());

//differences between stateful and stateless
//https://flutterdoc.com/stateful-or-stateless-widgets-42a132e529ed

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  //set initial value
  int _selectedPage = 0;

  //set array that pass page that been imported
  final _pageOptions = [
    HomePage(),
    WorkPage(),
    LandscapePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',

      //Theme
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(

        //header
        appBar: AppBar(
          title: Text('Bottom Navbar'),
        ),

        //body -> content of page selected
        body: _pageOptions[ _selectedPage ],

        bottomNavigationBar: BottomNavigationBar(

          //currentIndex -> tab index value
          currentIndex: _selectedPage,

          //upon tap
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
          
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              title: Text('Work')
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.landscape),
              title: Text('Landscape')
            ),
          ],
        ),
      ),
    );
  }
}
