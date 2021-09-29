import 'package:flutter/material.dart';
class logged extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffa1887f),
        child: Center(
          child: Text("Successfullly Logged In!!", 
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
                  ),
        ),
      ),
    );
  }
}