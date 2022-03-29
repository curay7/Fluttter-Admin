import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.amber,
              child: Text(
                "2",
              ),
            ),
          )
        ],
      ),
    );
  }
}
