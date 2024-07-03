import 'package:flutter/material.dart';
import 'package:ng_demo3/pages/first_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Future _openFirstPage() async {
    String userId = "2024";
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
      return FirstPage(userId: userId);
    }));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(fontSize: 25),
        title: Text("Navigator"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () {
            _openFirstPage();
          },
          child: Text("Open", style: TextStyle(color: Colors.white, fontSize: 20),),


        ),
      ),
    );
  }
}
