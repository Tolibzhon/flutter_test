import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Button Screen",
                style: TextStyle(fontSize: 26),
              ),
            ),
            body: Container(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 1
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FlatButton",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlatButton(
                                color: Colors.grey[300],
                                child: Text("close",
                                    style: TextStyle(color: Colors.blue)),
                                onPressed: () {
                                  print("close");
                                }),
                            FlatButton(
                                child: Text(
                                  "ok",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                onPressed: () {
                                  print("ok");
                                }),
                            FlatButton(
                                textColor: Colors.red,
                                child: Text("yes"),
                                onPressed: () {
                                  print("yes");
                                }),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "RaisedButton", //Приподнятая кнопка
                          style: TextStyle(fontSize: 20),
                        ),
                        // 2
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RaisedButton(
                                child: Text("click"),
                                onPressed: () {
                                  print("click");
                                }),
                            RaisedButton(
                                color: Colors.blueAccent,
                                child: Text("ok"),
                                onPressed: () {
                                  print("ok");
                                }),
                            RaisedButton(
                                child: Text("yes"),
                                onPressed: () {
                                  print("yes");
                                }),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7),
                          child: Text(
                            "FloatingButton",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Row(
                          //3 плавающая кнопка
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FloatingActionButton(
                                child: Icon(Icons.access_alarms_sharp),
                                onPressed: () {
                                  print("off alarm clock");
                                }),
                            FloatingActionButton(
                                child: Icon(Icons.add_to_drive),
                                onPressed: () {
                                  print("frozen");
                                }),
                            FloatingActionButton(
                                child:
                                    Text("+", style: TextStyle(fontSize: 35)),
                                onPressed: () {
                                  print("+");
                                }),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "IconButton",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          // 4 значок кнопка
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                color: Colors.lightBlue,
                                icon: Icon(
                                  Icons.ac_unit,
                                  size: 40,
                                ),
                                onPressed: () {
                                  print("frozen");
                                }),
                            IconButton(
                                color: Colors.lightBlue,
                                icon: Icon(
                                  Icons.accessibility,
                                  size: 40,
                                ),
                                onPressed: () {
                                  print("man");
                                }),
                            IconButton(
                                color: Colors.lightBlue,
                                icon: Icon(
                                  Icons.accessible_forward,
                                  size: 40,
                                ),
                                onPressed: () {
                                  print("ok");
                                }),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "InkWellButton",
                          style: TextStyle(fontSize: 20),
                        ),
                        // 5 кнопка чернилица
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                print("Tommy");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.black,
                                height: 30,
                                width: 75,
                                child: Text("Tommy",
                                    style: TextStyle(
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("Iron");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.black,
                                height: 30,
                                width: 75,
                                child: Text("Iron",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("!!!");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                color: Colors.black,
                                height: 30,
                                width: 75,
                                child: Text("!!!",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "OutlineButton",
                          style: TextStyle(fontSize: 20),
                        ),
                        // 6
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlineButton(
                              onPressed: () {
                                print("revers");
                              },
                              child: Text("revers"),
                            ),
                            OutlineButton(
                              onPressed: () {
                                print("yourself");
                              },
                              child: Text("yourself"),
                            ),
                            OutlineButton(
                              onPressed: () {
                                print("who");
                              },
                              child: Text("who"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ))));
  }
}
