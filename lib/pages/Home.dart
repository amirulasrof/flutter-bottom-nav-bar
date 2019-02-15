import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    //return 'n' -> body:, then followed by child
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // https://github.com/flutter/flutter/issues/17459
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: "Track",
                    //icon: Icon(Icons.directions_car)
                  ),
                  Tab(
                    text: "History",
                    //icon: Icon(Icons.directions_car)
                  ),
                ],
              ),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Track(),
            History(),
          ],
        ),
      ),
    );
  }
}

//Track TabBarView
class Track extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('Track Page', style: TextStyle(fontSize: 36.0),),
    );
  }
}

//Histrory TabBarView
class History extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text('History Page', style: TextStyle(fontSize: 36.0),),
    );
  }
}