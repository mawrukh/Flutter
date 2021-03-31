
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png'),
            TextFieldContainer(
              child: TextField(decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.purple,
                ),
                  hintText: "Your Email",
                  border: InputBorder.none,
              ),
              ),
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.lock,
                    color: Colors.purple,
                  ),
                      hintText: "Password",
                    border: InputBorder.none,
                ),
              ),
            ),
            Text(
              'Forgot Password?',
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
        "Second Screen",
      ),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width*0.8,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

