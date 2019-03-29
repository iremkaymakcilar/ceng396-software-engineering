import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  appState createState()=> new appState();

}

class appState extends State<MyApp> {
  String ttext='';
  @override
  void initState(){
    ttext='Sign in';
    super.initState();
  }
  void method1(){
    setState(() {
      ttext='You sign in succesfully';
    });
  }
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: 'sea',
      home:new Scaffold(
        body:new Center(
          child:new RaisedButton(onPressed: (){method1();}, child: new Text(ttext))
        )
      )
    );
  }

}
