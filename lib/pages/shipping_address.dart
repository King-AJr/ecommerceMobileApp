import 'package:flutter/material.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Shipping Addresses",
                style: TextStyle(
                    fontFamily: "Metropolis-semibold", fontSize: 18))),
        body: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Card(
                          elevation: 0.2,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jane Doe",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFDB3022),
                                              fontFamily: "Metropolis-regular"),
                                        ))
                                  ],
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "3 Newbridge Court",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "Chino Hills, 91709, United States",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: null,
                                      activeColor: Color(0xFF222222),
                                    ),
                                    Text(
                                      "Use shipping address",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Card(
                          elevation: 0.2,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jane Doe",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFDB3022),
                                              fontFamily: "Metropolis-regular"),
                                        ))
                                  ],
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "3 Newbridge Court",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "Chino Hills, 91709, United States",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: null,
                                      activeColor: Color(0xFF222222),
                                    ),
                                    Text(
                                      "Use shipping address",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Card(
                          elevation: 0.2,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Jane Doe",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    ),
                                    TextButton(
                                        onPressed: null,
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFDB3022),
                                              fontFamily: "Metropolis-regular"),
                                        ))
                                  ],
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "3 Newbridge Court",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                Container(
                                  alignment: AlignmentDirectional.centerStart,
                                  child: const Text(
                                    "Chino Hills, 91709, United States",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF222222),
                                        fontFamily: "Metropolis-regular"),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Checkbox(
                                      value: true,
                                      onChanged: null,
                                      activeColor: Color(0xFF222222),
                                    ),
                                    Text(
                                      "Use shipping address",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF222222),
                                          fontFamily: "Metropolis-regular"),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.add,
                            color: Colors.white, size: 18), // Reduced icon size
                        label: const Text(''),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.fromLTRB(
                              12, 4, 4, 4), // Adjusted padding
                          shape: const CircleBorder(),
                          backgroundColor: Color(0xFF222222),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
