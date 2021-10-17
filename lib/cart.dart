import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 8,
                  offset: Offset(0, 15),
                  color: Colors.black.withOpacity(.3),
                  spreadRadius: -9),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                child: Image.network(
                  'https://media.wired.com/photos/60149f34056378f4af9cf9f1/1:1/w_1480,h_1480,c_limit/Gear-Topo-Athletic-Ultraventure-Pro.jpg',
                  width: 120,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Text(
                    "data",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text("data"),
                  Text(
                    "2000",
                    style: TextStyle(fontSize: 17),
                  ),
                  Text("data"),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
