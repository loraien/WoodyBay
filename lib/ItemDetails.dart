import 'package:flutter/material.dart';


class ItemDetails extends StatelessWidget {
  final String? img;
  final String? title;
  final String? price;
  final BuildContext? context;
  
  ItemDetails({@required this.img,@required this.title,@required this.price,@required this.context});
  @override
  Widget build(BuildContext context) {
    String? title2 = title;
    title2= "Detail";

    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "$img",
        height: MediaQuery.of(context).size.height/2.7,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      
        ),
        IconButton(
          padding: EdgeInsets.only(left: 20, top: 40),
          icon: Icon(
            Icons.close,color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height/1.6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
              Expanded(
                child:SingleChildScrollView(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("LIFESTYLE"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$title",
                          style: TextStyle(
                          fontSize: 22,
                          ),
                        ),
                        Text("$price",
                            style:TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                     height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Category"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Sofa",
                                  style: TextStyle(
                                    fontSize: 21,
                                  )),
                             ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("QTY"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("1",
                                  style: TextStyle(
                                  fontSize: 22,
                                  ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 1.5,
                    ),
                    ListTile(
                      leading: Text(
                        "Details",
                        style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  ListTile(
                    leading: Text(
                      "Reviews",
                       style: TextStyle(fontSize: 18),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                ],
              ),
            ),),
          Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50, 
                      width: 50, 
                      child: Icon(Icons.favorite_border_outlined), 
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.brown), 
                        shape: BoxShape.circle),
                    ),
                    FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.shopping_cart_outlined,color:Colors.white),
                      label: Text("Add to cart",style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1)),
                      color: Colors.brown,
                      shape: StadiumBorder(),
                      padding: 
                        EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/4, vertical:2),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ]),
  );
}
}