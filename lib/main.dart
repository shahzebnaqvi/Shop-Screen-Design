import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List image = [
      "https://media.wired.com/photos/60149f34056378f4af9cf9f1/1:1/w_1480,h_1480,c_limit/Gear-Topo-Athletic-Ultraventure-Pro.jpg",
      "https://cdn.shopify.com/s/files/1/0107/9820/2938/products/gmmobile1_800x800_crop_center.png?v=1629754332",
      "https://www.catfootwear.com/on/demandware.static/-/Sites-catfootwear_us-Library/default/dw38dae461/content/seasonal-content/homepage/2021/06/women-excavator-2.jpg"
    ];
    List text1 = ["Men's", "Men's", "Side Block"];
    List text2 = ["FuelCell Echo", "Rebell Echo", "1200"];
    List price = ["\$99.99", "\$139.99", "\$129.99"];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.ac_unit_sharp,
            color: Colors.black,
          ),
          title: Text(
            "MobiSport",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Running",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Text(
                    "15 results",
                    style: TextStyle(),
                  ),
                ],
              ),
              // Expanded(
              //     child: ListView.builder(
              //         itemCount: 3,
              //         itemBuilder: (context, index) {
              // return
              // con(
              //     '',
              //     " ",
              //     "",
              //     "");
              // con('',
              //     "Men's ", "", "\$139.99"),
              // con('',
              //     " ", "1200", "\$129.99"),
              // }))

              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.only(top: 0),
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Stack(alignment: Alignment.bottomRight, children: [
                    con(image[index], text1[index], text2[index], price[index]),
                    ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.yellow)),
                        onPressed: () {},
                        child: Icon(Icons.card_travel))
                  ]);
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.space_dashboard_outlined,
                color: Colors.red,
              ),
              label: 'Catlog',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.red,
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.red,
              ),
              label: 'More',
            ),
          ],
          selectedItemColor: Colors.amber[800],
        ),
      ),
    );
  }
}

Widget con(String img, text1, text2, price) {
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
            img,
            width: 100,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text2,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Men's",
              style: TextStyle(fontSize: 10),
            ),
            Row(
              children: [
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black),
                Icon(Icons.star, color: Colors.black)
              ],
            ),
            Text(
              price,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    ),
  );
}
