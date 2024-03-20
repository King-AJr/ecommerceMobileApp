// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  double _startValue = 0.0;
  double _endValue = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Colors.white,
          title: const Text(
            "Filters",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Price range",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              Card(
                elevation: 0.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('\$${_startValue.toStringAsFixed(1)}'),
                          Text('\$${_endValue.toStringAsFixed(1)}'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // RangeSlider(
                      //   min: 0,
                      //   max: 100,
                      //   divisions: 100,
                      //   values: RangeValues(_startValue, _endValue),
                      //   onChanged: (RangeValues values) {
                      //     //     // setState(() {
                      //     //     //   _startValue = values.start;
                      //     //     //   _endValue = values.end;
                      //     //     // });
                      //   },
                      //   activeColor: const Color(0xFFDB3022),
                      //   inactiveColor: Colors.grey,
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Colors",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.red,
                            )),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color(0xFFF6F6F6),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFB82222),
                        //BEA9A9
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xFFBEA9A9),
                        //BEA9A9
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              width: 1,
                              color: Colors.red,
                            )),
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFFE2BB8D),
                          //151867
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xFF151867),
                        //151867
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Sizes",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0)),
                    child: Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB3022),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("S",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13))),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDB3022),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("M",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13))),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "L",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.all(16),
                child: const Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                ),
              ),
              Card(
                  elevation: 0.7,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  color: Colors.white,
                  child: GridView.count(
                      crossAxisCount: 3,
                      childAspectRatio: 1 / 0.6,
                      shrinkWrap: true,
                      padding: EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                        Container(
                          height: 43,
                          width: 43,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "XL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 13),
                              )),
                        ),
                      ])),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 20, 20, 10),
                    margin: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('Brand',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                          Text("You've never seen it before!",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.5)))
                        ]),
                  ),
                  const Text('View all',
                      style: TextStyle(
                        fontSize: 15,
                      )),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Card(
          color: Colors.white,
          elevation: 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF9B9B9B),
                        width: 0.5,
                      ),
                    ),
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text('Discard',
                          style: TextStyle(color: Colors.black, fontSize: 15)),
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFF9B9B9B),
                        width: 0.5,
                      ),
                    ),
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDB3022),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text('Apply',
                          style: TextStyle(color: Colors.white, fontSize: 15)),
                    ),
                  )),
            ],
          ),
        ));
  }
}
