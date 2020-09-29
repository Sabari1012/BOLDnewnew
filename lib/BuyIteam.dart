

import 'package:boltappapp/AddCart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: IteamBuy(),
));

class IteamBuy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/Mask11.jpg'),
          AssetImage('assets/Mask22.jpg'),
          AssetImage('assets/Mask5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black),
          leading: IconButton(
              icon: Icon(Icons.keyboard_backspace), onPressed: () {
            Navigator.pop(context);
          }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {
                }),

          ],
        ),

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      image_carousel,
                      Row(children: [
                        Text(
                          'Black turtleneck top',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 2,
                      ),
                      Row(children: [
                        Column(children: [
                          Text(
                            '\$42',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ]),
                        SizedBox(
                          width: 18.0,
                        ),
                        Column(children: [
                          Text(
                            '\$62',
                          ),
                        ]),
                      ]),
                      SizedBox(height: 15),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3.0, vertical: 1.0),
                            child: RaisedButton(
                                child: Text(
                                  "4.5",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                color: Colors.blue,
                                onPressed: () {}),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 90),
                            child: Text(
                              'Very Good',
                              textAlign: TextAlign.right,
                            ),
                          ),

                          Text(
                            "49 Rewiews",
                            style:
                            TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(children: [
                            Text(
                              'Descriptions',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: [
                          Column(
                            children: [
                              Text(
                                'A wonderful sernity has taken possession of my ',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(children: [
                        Column(children: [
                          Text(
                            'A wonderful sernity has taken possession of my ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      ]),
                      Row(children: [
                        Column(children: [
                          Text(
                            'A wonderful sernity has taken possession of my ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      ]),
                      Row(children: [
                        Column(children: [
                          Text(
                            'A wonderful sernity has taken possession of my ',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ]),
                      ]),
                    ]),
                    Column(children: [
                      Row(
                        children: [
                          SizedBox(height: 70, width: 50),
                          RaisedButton(
                            child: Text('Select Size',
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                            color: Colors.white,
                            elevation: 0,
                            onPressed: () {},
                          ),
                          Column(children: [
                            SizedBox(width: 140),
                            RaisedButton(
                                child: Text('Select Color',
                                    style: TextStyle(fontSize: 20)),
                                color: Colors.white,
                                elevation: 0,
                                onPressed: () {}),
                          ]),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                RaisedButton(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 2.0),
                                    child: Text(
                                      "S",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    color: Colors.white,
                                    onPressed: () {}),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                RaisedButton(
                                    child: Text(
                                      "M",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    color: Colors.blue,
                                    onPressed: () {}),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                RaisedButton(
                                    child: Text(
                                      "XL",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    color: Colors.white,
                                    onPressed: () {}),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                RaisedButton(
                                    child: Text(
                                      "XXl",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 20),
                                    ),
                                    color: Colors.white,
                                    onPressed: () {}),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      width:340,
                      height: 50,
                      child: RaisedButton(
                        elevation: 10.0,
                        textColor: Colors.white,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCart()));

                        },

                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5)
                            ]),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: const Text("Buy Now",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
                          ),
                        ),),

                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
