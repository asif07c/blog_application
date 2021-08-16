import 'package:blog_application/myHomePageWidget.dart';
import 'package:flutter/material.dart';
import 'auth.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Body());
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // FirebaseUser user; // 5

  // String name = ""; // 4
  // TextEditingController controller = new TextEditingController(); // 4

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Type Your Name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffixIcon: IconButton(
                  icon: Icon(Icons.done),
                  splashColor: Colors.blue,
                  tooltip: "Submit",
                  onPressed: this.click,
                )),
          ),
        ));
  }
}
