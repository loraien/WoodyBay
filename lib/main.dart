import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown.shade200,
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
          leading: Image.asset("assets/pix/bar.jpeg"),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(8),
              child: Image.asset("assets/pix/search.jpeg"),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 135,
                ),
                Text(
                  "W",
                  style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "oody",
                  style: TextStyle(color: Colors.brown.shade900, fontSize: 25),
                ),
                Text(
                  "B",
                  style: TextStyle(
                      color: Colors.brown.shade900,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "ay",
                  style: TextStyle(color: Colors.brown.shade900, fontSize: 25),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                flatbutton("Living", isSelected: true),
                flatbutton("Bedroom"),
                flatbutton("Decor"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.brown.shade400,
                          spreadRadius: 3,
                          blurRadius: 22,
                        )
                      ]),
                  child: Column(children: [
                    Row(children: [
                      Column(
                        children: [
                          Text("Sofas"),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                                color: Colors.brown.shade500, shape: BoxShape.circle),
                          ),
                        ],
                      )
                    ])
                  ])),
            ),
          ],
        ),
      ),
    );
  }

  FlatButton flatbutton(String text, {bool isSelected = false}) {
    return FlatButton(
      onPressed: () {
        print("Button  pressed");
      },
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.brown.shade900,
            fontSize: 15),
      ),
      shape: StadiumBorder(),
      color: isSelected ? Colors.brown.shade400 : Colors.white54,
    );
  }
}
