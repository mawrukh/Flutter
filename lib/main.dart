import 'package:flutter/material.dart';
import 'SecondScreen.dart';

var assetImage= AssetImage('assets/img.jpg');
var image= Image(image: assetImage,);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Welcome'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            image,
            Text(
              'Connect With Your Collegues!\nExpand your Network! \nLearn Together!',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
             MaterialPageRoute(builder: (context)=> SecondScreen()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.arrow_forward_ios),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
