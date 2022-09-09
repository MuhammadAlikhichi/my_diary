import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import 'cart-widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 40,
              color: Colors.grey.shade300,
              child: const Center(
                child: Text(
                  "My Dairy",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              height: 60,
              color: Colors.grey.shade300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mediterranean diet",
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Detail",
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //     //height: 1,
          //     ),
          Container(
            height: 523,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      height: 230,
                      width: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(70),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 70,
                                              child: VerticalDivider(
                                                width: 20,
                                                thickness: 3,
                                                indent: 20,
                                                endIndent: 0,
                                                color: Colors.blue,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 19,
                                                ),
                                                Text("Eaten"),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.eco_rounded,
                                                      color: Colors.blue,
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                      child: Text(
                                                        "1127",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text("kcal"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 70,
                                              child: VerticalDivider(
                                                width: 20,
                                                thickness: 3,
                                                indent: 20,
                                                endIndent: 0,
                                                color: Colors.pink,
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 19,
                                                ),
                                                Text("Burned"),
                                                SizedBox(
                                                  height: 8,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.eco_rounded,
                                                      color: Colors.pink,
                                                    ),
                                                    SizedBox(
                                                      width: 4,
                                                    ),
                                                    SizedBox(
                                                      width: 40,
                                                      child: Text(
                                                        "102",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Text("kcal"),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, right: 30),
                                child: Container(
                                  child: SleekCircularSlider(
                                    onChange: (double value) {
                                      // callback providing a value while its being changed (with a pan gesture)
                                    },
                                    onChangeStart: (double startValue) {
                                      // callback providing a starting value (when a pan gesture starts)
                                    },
                                    onChangeEnd: (double endValue) {
                                      // ucallback providing an ending value (when a pan gesture ends)
                                    },
                                    initialValue: 1503,
                                    max: 3000,
                                    appearance: CircularSliderAppearance(
                                      angleRange: 360,
                                      startAngle: 270,
                                      size: 120,
                                      customColors: CustomSliderColors(
                                        progressBarColor: Colors.blue,
                                        trackColor: Colors.grey.shade300,
                                        hideShadow: true,
                                        dotColor: Colors.white,
                                      ),
                                      customWidths: CustomSliderWidths(
                                        progressBarWidth: 10,
                                        trackWidth: 2,
                                      ),
                                      infoProperties: InfoProperties(
                                          bottomLabelText: "Kcal left",
                                          bottomLabelStyle: TextStyle(
                                              color: Colors.deepPurple),
                                          mainLabelStyle: TextStyle(
                                            color: Colors.blue.shade900,
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          modifier: (double value) {
                                            final roundedValue =
                                                value.ceil().toInt().toString();
                                            return '$roundedValue ';
                                          }),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 25.0, right: 25),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 100,
                                height: 55,
                                // color: Colors.yellow,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 100,
                                          child: Text(
                                            "Carbs",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                    SizedBox(
                                      height: 10,
                                      width: 100,
                                      child: SliderTheme(
                                        data: SliderTheme.of(context).copyWith(
                                            thumbColor: Colors.transparent,
                                            thumbShape: RoundSliderThumbShape(
                                                enabledThumbRadius: 0.0)),
                                        child: Slider(
                                          min: 0,
                                          max: 15,
                                          value: 10,
                                          activeColor: Colors.blue,
                                          inactiveColor: Colors.blue.shade100,
                                          onChanged: (value) {
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 100,
                                          child: Text(
                                            "12g left",
                                            style: TextStyle(
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 120,
                                height: 55,
                                // color: Colors.blue,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 35.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 100,
                                          child: Text(
                                            "Protein",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: SizedBox(
                                        height: 10,
                                        width: 100,
                                        child: SliderTheme(
                                          data: SliderTheme.of(context)
                                              .copyWith(
                                                  thumbColor: Colors
                                                      .transparent,
                                                  thumbShape:
                                                      RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              0.0)),
                                          child: Slider(
                                            min: 0,
                                            max: 20,
                                            value: 10,
                                            activeColor: Colors.pinkAccent,
                                            inactiveColor: Colors.pink.shade100,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 35.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 130,
                                          child: Text(
                                            "30g left",
                                            style: TextStyle(
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 55,
                                // color: Colors.pink,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 70,
                                          child: Text(
                                            "Fat",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 3.0),
                                      child: SizedBox(
                                        height: 10,
                                        width: 100,
                                        child: SliderTheme(
                                          data: SliderTheme.of(context)
                                              .copyWith(
                                                  thumbColor: Colors
                                                      .transparent,
                                                  thumbShape:
                                                      RoundSliderThumbShape(
                                                          enabledThumbRadius:
                                                              0.0)),
                                          child: Slider(
                                            min: 0,
                                            max: 15,
                                            value: 10,
                                            activeColor: Colors.yellow,
                                            inactiveColor:
                                                Colors.yellow.shade100,
                                            onChanged: (value) {
                                              setState(() {});
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 25.0),
                                      child: SizedBox(
                                          height: 20,
                                          width: 70,
                                          child: Text(
                                            "10g left",
                                            style: TextStyle(
                                                // fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Container(
                      height: 65,
                      color: Colors.grey.shade300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meals today",
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Customize",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CartWidget(
                          isEmpty: false,
                          image: 'images/breakfast.png',
                          heading: "Break Fast",
                          text1: "Bread",
                          text2: "Peanut butter",
                          text3: "Apple",
                          price: 525,
                          color: Colors.pink.shade200,
                        ),
                        CartWidget(
                          isEmpty: false,
                          image: 'images/lunnch.png',
                          heading: "Lunch",
                          text1: "Salmon,",
                          text2: "Mixed veggies,",
                          text3: "Avocado",
                          price: 602,
                          color: Colors.blue.shade800,
                        ),
                        CartWidget(
                          isEmpty: true,
                          image: 'images/snack.png',
                          heading: "Snack",
                          text1: "",
                          text2: "",
                          text3: "",
                          price: 0,
                          color: Colors.pink.shade300,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
