import 'dart:ui';
import 'LoginScreen.dart'; 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:woodybay/LoginScreen.dart';
import 'ItemDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown.shade100,
        bottomNavigationBar: Container(
          color: Colors.white,
          height: 60,
          
          child: Container(
            decoration: BoxDecoration(
              boxShadow:[
                BoxShadow(blurRadius: 10,color: Colors.brown.shade300,spreadRadius:3,

              ),] ,
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              
            ),
            ),
          
            child: human()
          ),
        ),
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
              height: 2,
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
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(                    
                    color: Colors.grey.shade100,
                    borderRadius:  BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.brown.shade900,
                        spreadRadius: 5,
                        blurRadius: 20,
                      )
                    ]),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ColumnBuildTop("Sofas", isSelected: true),
                          ColumnBuildTop("Seating"),
                          ColumnBuildTop("Chairs"),
                          ColumnBuildTop("Tables"),
                          ColumnBuildTop("Cabinetry"),
                        ],
                      ),
                      SizedBox(height: 5),
                      deta(),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            Text(
                              "W",
                              style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "oody",
                              style: TextStyle(
                                color: Colors.brown.shade900,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              "B",
                              style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "ay",
                              style: TextStyle(
                                color: Colors.brown.shade900,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              " W",
                              style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("eekend",
                                style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                )),
                                Text(" B",
                                style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                )),
                                Text("onanza",
                                style: TextStyle(
                                  color: Colors.brown.shade900,
                                  fontSize: 17,
                                )),
                            Spacer(),
                            Text(" View All",
                                style: TextStyle(
                                  color: Colors.brown.shade300,
                                  fontSize: 15,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                            children: [
                            ContainerBuildBottom("assets/pix/offer1.png"),
                            ContainerBuildBottom("assets/pix/offer2.png"),
                            ContainerBuildBottom("assets/pix/offer3.jpeg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  

  Container ContainerBuildBottom(String img) {
    return Container(
      height: 150,
      width: 290,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(img, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }

  

  Column ColumnBuildTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.brown.shade900 : Colors.brown.shade300,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
                color: Colors.brown.shade900, shape: BoxShape.circle),
          ),
      ],
    );
  }

  TextButton flatbutton(String text, {bool isSelected = false}) {
    return TextButton(
        onPressed: () {
          print("Button  pressed");
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isSelected ? Colors.brown.shade900 : Colors.white,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.brown.shade900,
                fontSize: 16,
              ),
            ),
          ),
        ));
  }
}


class human extends StatelessWidget {
  const human({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ 
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (Context){
                      return LoginScreen();
                    }));
                  },
                  child: ContainerBuildNavBottom(Icons.person_add_alt_outlined)
                  ),
                ContainerBuildNavBottom(Icons.add_shopping_cart_outlined),
                ContainerBuildNavBottom(Icons.home_rounded,isSelected: true),
                ContainerBuildNavBottom(Icons.favorite_border_outlined),
                ContainerBuildNavBottom(Icons.settings),
              ],
            );
  }
  Container ContainerBuildNavBottom(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: isSelected?[
          BoxShadow(color: Colors.brown.shade200,blurRadius: 10,spreadRadius: 1)]
          : [],
        color: isSelected? Colors.brown.shade800 : Colors.grey.shade50,
        shape: BoxShape.circle,
      ),
      height: 50,
      width: 50,
      child: Icon(icon,color: isSelected? Colors.grey.shade50: Colors.brown.shade900,),
    );
  }
}
class deta extends StatelessWidget {
  const deta({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                              
                            ),
                            ColumnBuildRow("assets/pix/seater1.png","Kaylee 1 Seater Sofa", "₹ 59,999", context),
                            ColumnBuildRow("assets/pix/seater2.png","Hugo 2 Seater Sofa", "₹ 62,999", context),
                            ColumnBuildRow("assets/pix/seater3.png","Belem 3 Seater Sofa", "₹ 65,799", context),
                          ],
                        ),
                      );
  }
  GestureDetector ColumnBuildRow(
      String img, String title, String price, BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ItemDetails(img: img,title: title,price: price,context: context);
        }));
      },
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 180, 
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.brown.shade900,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(color: Colors.brown.shade900, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}