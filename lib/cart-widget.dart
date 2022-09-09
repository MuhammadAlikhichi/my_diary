import 'package:flutter/material.dart';

class CartWidget extends StatelessWidget {
  String image;
  String heading;
  String text1;
  String text2;
  String text3;
  int price;
  Color color;
  bool isEmpty;
  CartWidget({
    Key? key,
    required this.image,
    required this.heading,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.price,
    required this.color,
    required this.isEmpty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      //color: Colors.white.withOpacity(0.4),
      child: Row(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 350,
                width: 195,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(100),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, top: 45),
                      child: Text(
                        heading,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    isEmpty == false
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 10),
                                child: Text(
                                  text1,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 5),
                                child: Text(
                                  text2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 5),
                                child: Text(
                                  text3,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                height: 40,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      price.toString(),
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.only(top: 18),
                                      child: Text(
                                        "kcal",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 10),
                                child: Text(
                                  "Recommend:",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 10),
                                child: Text(
                                  "800 kcal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40.0, top: 40),
                                child: Container(
                                  height: 50,
                                  child: FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.pink.shade300,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(140),
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(3.0)
                      // topRight: Radius.circular(25),
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
