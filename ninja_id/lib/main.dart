import 'package:flutter/material.dart';
import 'Quotes1.dart';

void main() => runApp(MaterialApp(
  home:new1(),
));

class new1 extends StatefulWidget {
  @override
  _new1State createState() => _new1State();
}

class _new1State extends State<new1> {
  List<Quotes1> quotes = [
    Quotes1('Live a Simple LIfe','Buddha'),
  Quotes1('Dont mamke things Complicated','Chanakya'),
  Quotes1('Allow others to live','Uknown'),
  ];
  Widget qtemp(qt)
  {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(14.0, 14.0, 14.0,0.0),
        color: Colors.red[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "\n ${qt.text}\n",
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.red[900],
        ),
        ),
        SizedBox(height: 6.0),
        Text(
          "${qt.author}\n",
          style: TextStyle(
            fontSize: 14,
            //fontWeight: FontWeight.bold,
            color: Colors.red[700],
          ),

        ),

          SizedBox(height: 6.0,),
          FlatButton.icon(
            onPressed: () {
              setState(() {
              quotes.remove(qt) ;
              });
            },
            label: Text("Delete Quote"),
            icon:Icon(Icons.delete),
          ),
      ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((a) {
          return Center(child:qtemp(a));}).toList(),
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}
