import 'package:flutter/material.dart';


void main() => runApp(new MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text("Multi-Page App"),backgroundColor: Colors.green[500]),
      body: new Center(
        child: FlatButton(
          onPressed: (){
            Navigator.push(context, SecondPage());
          },
          child: new Text("Tap Go to Second Page"),
        ),
      )

    );
  }
}

class SecondPage extends MaterialPageRoute{
  SecondPage() : super(builder: (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[700],
        elevation: 1.0,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            Navigator.push(context, ThirdPage());
          },
          child: new Text("Go to Next Page"),
        ),
      ),
    );
  });
}

class ThirdPage extends MaterialPageRoute{
  ThirdPage() : super(builder: (BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[900],
        elevation: 2.0,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home, color: Colors.black,),
            onPressed: (){
              Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
            },
          )
        ],
      ),
    );
  });
}

//fourth CompoundAnimation


