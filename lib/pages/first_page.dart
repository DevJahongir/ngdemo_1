import 'package:flutter/material.dart';
import 'package:ng_demo3/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  static const String id = "first_page";
  final String? userId;

  const FirstPage({super.key, this.userId});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  get userId => null;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("First Page => ${widget.userId}");
  }

  _backtoFinish(){
    Map map = {"data": "Work is fine"};
    Navigator.of(context).pop(map);
  }

  _secondPage(){
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
     return SecondPage(userId : this.userId);
    }));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("First Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          child: Text("Second Page ${widget.userId}"),
          onPressed: (){
            _secondPage();
          },
        ),
      ),
    );
  }
}
