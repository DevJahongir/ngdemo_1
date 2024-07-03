import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  static const String id = "details_page";
  final String? userId;

  const DetailsPage({super.key, this.userId});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details Page"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.orange,
          onPressed: () {},
          child: Text(
            "Go Back",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
