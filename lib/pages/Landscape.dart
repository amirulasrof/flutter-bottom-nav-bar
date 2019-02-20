import 'package:flutter/material.dart';

class LandscapePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    // return Container(
    //   padding: EdgeInsets.all(25.0),
    //   child: Text('Landscape Page', style: TextStyle(fontSize: 36.0),),
    // );
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(widget.title),
      //   actions: <Widget>[
      //     new IconButton(icon: const Icon(Icons.save), onPressed: () {})
      //   ],
      // ),

      //https://stackoverflow.com/questions/51972371/bottom-overflow-by-30px
      resizeToAvoidBottomPadding: false,

      body: new Column(
        children: <Widget>[
          new ListTile(
            leading: const Icon(Icons.person),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Name",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.phone),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Phone",
              ),
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.email),
            title: new TextField(
              decoration: new InputDecoration(
                hintText: "Email",
              ),
            ),
          ),
          const Divider(
            height: 1.0,
          ),
          new ListTile(
            leading: const Icon(Icons.label),
            title: const Text('Nick'),
            subtitle: const Text('None'),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Birthday'),
            subtitle: const Text('February 20, 1980'),
          ),
          new ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Contact group'),
            subtitle: const Text('Not specified'),
          )
        ],
      ),
    );
  }
}