import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String id = "second_page";
  final String? userId;


  const SecondPage( {super.key,  this.userId});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Second Page => ${widget.userId}");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Second Page"),
        titleTextStyle: TextStyle(fontSize: 25),
      ),
      body: ButtonBar(

      ),
    );
  }
}
