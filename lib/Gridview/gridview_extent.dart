import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView_extent(),
  ));
}

class GridView_extent extends StatelessWidget {
  var img = [
    "assets/images/Apple.png",
    "assets/images/Banana.png",
    "assets/images/Blackberry.png",
    "assets/images/Blueberry.png",
    "assets/images/kiwi.png",
    "assets/images/Strawberry.png"
  ];
  var text = [
    "Apple",
    "Banana",
    "Blackberry",
    "Blueberry",
    "Kiwi",
    "Strawberry"
  ];
  var cash = [
    "120 \$",
    "100 \$",
    "150 \$",
    "220 \$",
    "250 \$",
    "180 \$",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.extent(
          maxCrossAxisExtent: 100,
          children: List.generate(
              6,
              (index) => Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        color:
                            Colors.primaries[index % Colors.primaries.length]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            img[index],
                            height: 50,
                            width: 50,
                          ),
                          Expanded(
                            child: Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(cash[index]),
                        ],
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
