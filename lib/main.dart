import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.home),
        title: Center(child: Text("Tugas 4 Flutter")),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.alarm)],
      ),
      body: Column(children: <Widget>[
        Image(
          image: NetworkImage(
              "https://images.pexels.com/photos/2919720/pexels-photo-2919720.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
        ),
        ContainerCard(),
        Center(
          child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "View Image Mountain",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ],
              )),
        ),
        Container(
          color: Colors.blue,
          height: 37,
        )
      ]),
    );
  }
}

class ContainerCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 400.0,
      height: 200.0,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(5)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Image(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/371633/pexels-photo-371633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      width: 175,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Gambar 1",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Image(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      width: 165,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text(
                      "Gambar 2",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
