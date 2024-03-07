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
        title: const Text(
          "Filters",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Price range",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: 120,
            child: Card(
              elevation: 5,
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
                    //     // setState(() {
                    //     //   _startValue = values.start;
                    //     //   _endValue = values.end;
                    //     // });
                    //   },
                    //   activeColor: Color(0xFFDB3022),
                    //   inactiveColor: Colors.grey,
                    // ),
                  ],
                ),
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
          SizedBox(
              height: 120,
              width: double.infinity,
              child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange[700],
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(''),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
