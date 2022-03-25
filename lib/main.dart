import 'package:contacts/contact.dart';
import 'package:flutter/material.dart';

const darkBlueColor = Color(0xff486579);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emergency Contacts',
      theme: ThemeData(primaryColor: darkBlueColor),
      home: const MyHomePage(title: 'Emergency Contacts'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  Contact _contact = Contact();

  final _formKey = GlobalKey<FormState>();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              widget.title,
              style: TextStyle(color: darkBlueColor),
            ),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_form(), _list()],
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  _form() => Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Form(
          key: _formKey,
          child: Column(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Name of the contact'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Submit'),
                color: darkBlueColor,
                textColor: Colors.white,
              ),
            ),
          ])));

  _onSubmit() {
    print(_contact.name);
  }

  _list() => Container();
}
