import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      home:test(),
    ));

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My First App")),
        backgroundColor: Colors.red[400],
      ),
      body: Row(
        children: <Widget>[
        Container(
          padding: EdgeInsets.all(30.0),
          color:Colors.amber,
          child:Text("First"),
        ),
        Container(
            padding: EdgeInsets.all(30.0),
            color:Colors.teal,
            child:Text("Two"),
        ),
        Container(
            padding: EdgeInsets.all(30.0),
            color:Colors.red,
            child:Text("Three"),
        ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Click"),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
