import 'package:flutter/material.dart';

class LoginRegisterPage extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _LoginRegisterState();
  }
}

class _LoginRegisterState extends State<LoginRegisterPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Photo Blog App"),
      ),
      body: new Container(
        margin: EdgeInsets.all(15.0),
        child: new Form(
          child: new Column(
            children: createInputs() + createButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> createInputs() {
    return [
      SizedBox(
        height: 10.0,
      ),
      logo(),
      SizedBox(
        height: 20.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Email'),
      ),
      SizedBox(
        height: 10.0,
      ),
      new TextFormField(
        decoration: new InputDecoration(labelText: 'Password'),
      ),
      SizedBox(
        height: 20.0,
      ),
    ];
  }

  Widget logo() {
    return new Hero(
      tag: Hero,
      child: new CircleAvatar(
        backgroundColor: Colors.amber,
        radius: 110.0,
        child: Image.asset('images/logo.png'),
      ),
    );
  }

  List<Widget> createButtons() {
    return [
      new RaisedButton(
        child: new Text(
          'Login',
          style: new TextStyle(
            fontSize: 20.0,
          ),
        ),
        textColor: Colors.black,
        color: Colors.pink,
      ),
      new FlatButton(
        child: new Text(
          'Not Have an Account create an Account?',
          style: new TextStyle(
            fontSize: 14.0,
          ),
        ),
        textColor: Colors.black,
      )
    ];
  }
}
