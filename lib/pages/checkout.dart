import 'package:flutter/material.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Checkout',
              style:
                  TextStyle(fontFamily: "Metropolis-semibold", fontSize: 18))),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Shipping Address",
                  style: TextStyle(
                      fontFamily: "Metropolis-semibold", fontSize: 18)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: Card(
                      elevation: 0.2,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      "Change",
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
                          ],
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF222222),
                              fontFamily: "Metropolis-semibold"),
                        ),
                        TextButton(
                            onPressed: null,
                            child: Text(
                              "Change",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFDB3022),
                                  fontFamily: "Metropolis-regular"),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 60,
                            width: 75,
                            child: Card(
                                color: Colors.white,
                                elevation: 0.2,
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Mastercard-logo.png'),
                                          fit: BoxFit.contain)),
                                ))),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: Text(
                            "**** **** **** 3947",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF222222),
                                fontFamily: "Metropolis-regular"),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Delivery method",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF222222),
                          fontFamily: "Metropolis-semibold"),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: SizedBox(
                                height: 80,
                                width: 110,
                                child: Card(
                                    elevation: 0.1,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 20,
                                          margin: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/fedxlogo.png'),
                                                  fit: BoxFit.contain)),
                                        ),
                                        const Text(
                                          '2-3 days',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFF9B9B9B),
                                              fontFamily: "Metropolis-regular"),
                                        )
                                      ],
                                    ))),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: SizedBox(
                                height: 80,
                                width: 110,
                                child: Card(
                                    elevation: 0.1,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 20,
                                          margin: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/uspslogo.png'),
                                                  fit: BoxFit.cover)),
                                        ),
                                        const Text(
                                          '2-3 days',
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color(0xFF9B9B9B),
                                              fontFamily: "Metropolis-regular"),
                                        )
                                      ],
                                    ))),
                          ),
                          SizedBox(
                              height: 80,
                              width: 110,
                              child: Card(
                                  elevation: 0.1,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20,
                                        margin: const EdgeInsets.all(10),
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/dhllogo.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      const Text(
                                        '2-3 days',
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Color(0xFF9B9B9B),
                                            fontFamily: "Metropolis-regular"),
                                      )
                                    ],
                                  )))
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Order",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF9B9B9B),
                                fontFamily: "Metropolis-regular"),
                          ),
                          Text(
                            "112\$",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF222222),
                                fontFamily: "Metropolis-semibold"),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF9B9B9B),
                                fontFamily: "Metropolis-regular"),
                          ),
                          Text(
                            "15\$",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF222222),
                                fontFamily: "Metropolis-semibold"),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Summary",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF9B9B9B),
                                fontFamily: "Metropolis-semibold"),
                          ),
                          Text(
                            "127\$",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF222222),
                                fontFamily: "Metropolis-semibold"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFDB3022),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
            child: const Text('SUBMIT ORDER',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Metropolis-regular")),
          ),
        ),
      ),
    );
  }
}
