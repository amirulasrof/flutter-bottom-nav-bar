// import 'package:flutter/material.dart';

// //import pages to display upon clicked tabs in form of eg: HomePage()
// import './pages/Home.dart';
// import './pages/Work.dart';
// import './pages/Landscape.dart';

// void main() => runApp(MyApp());

// //differences between stateful and stateless
// //https://flutterdoc.com/stateful-or-stateless-widgets-42a132e529ed

// class MyApp extends StatefulWidget {
  
//   @override
//   State<StatefulWidget> createState() {
//     return MyAppState();
//   }
// }
// class MyAppState extends State<MyApp> {
//   //set initial value
//   int _selectedPage = 0;

//   //workaround hack
//   var _selectedTitle = 'Home';

//   //set array that pass page that been imported
//   final _pageOptions = [
//     HomePage(),
//     WorkPage(),
//     LandscapePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(

//       title: 'Flutter',

//       //Theme
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),

//       //Scaffold
//       home: Scaffold(

//         //header
//         appBar: AppBar(
//           title: Text(_selectedTitle),
//         ),

//         //body -> content of page selected
//         //fired via sidemenu @ tabs (refer: onTap)
//         body: _pageOptions[ _selectedPage ],

//         bottomNavigationBar: BottomNavigationBar(

//           //currentIndex -> tab index value
//           currentIndex: _selectedPage,

//           //upon tap
//           onTap: (int index) {
//             setState(() {
//               _selectedPage = index;

//               if(index == 0){
//                 _selectedTitle = 'Home';
//               }

//               if(index == 1){
//                 _selectedTitle = 'Work';
//               }

//               if(index == 2){
//                 _selectedTitle = 'Landscape';
//               }
//             });
//           },

//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Home')
//             ),
            
//             BottomNavigationBarItem(
//               icon: Icon(Icons.work),
//               title: Text('Work')
//             ),
            
//             BottomNavigationBarItem(
//               icon: Icon(Icons.landscape),
//               title: Text('Landscape')
//             ),
//           ],
//         ),
//       ),
      
//     );
//   }
// }

import 'package:flutter/material.dart';

//Import pages as eg: HomePage()
import './pages/Home.dart';
import './pages/Work.dart';
import './pages/Landscape.dart';

//1
//Upon init run this
void main() => runApp(MyApp());

//Since materialApp is used once, declare it on StatelessWidget then 
//point the home into a StatefulWidget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code Sample for material.Scaffold',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
    );
  }
}

/*
  In flutter "_" means that 
  It's not just a naming convention. 
  Underscore fields, classes and methods will only be available in the .dart file where they are defined.
  It is common practice to make the State implementation of a widget private, 
  so that it can only be instantiated by the corresponding StatefulWidget:
*/ 

//2
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

//3
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  
  //set initial value
  int _selectedPage = 0;

  //workaround hack
  var _selectedTitle = 'Home';

  //set array that pass page that been imported
  final _pageOptions = [
    HomePage(),
    WorkPage(),
    LandscapePage(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(_selectedTitle),
      ),

      //body -> content of page selected
      //fired via sidemenu @ tabs (refer: onTap)
      body: _pageOptions[ _selectedPage ],
      
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,

          children: <Widget>[

            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),

            ListTile(
              title: Text('Home'),
              onTap: () {

                setState(() {
                  _selectedPage = 0;
                });
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Work'),
              onTap: () {

                setState(() {
                  _selectedPage = 1;
                });
                
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Landscape'),
              onTap: () {
                setState(() {
                  _selectedPage = 2;
                });
                
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        //currentIndex -> tab index value
        currentIndex: _selectedPage,

        //upon tap
        onTap: (int index) {
          setState(() {
            
            _selectedPage = index;

            if(index == 0){
              _selectedTitle = 'Home';
            }

            if(index == 1){
              _selectedTitle = 'Work';
            }

            if(index == 2){
              _selectedTitle = 'Landscape';
            }
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
    );
  }
}
