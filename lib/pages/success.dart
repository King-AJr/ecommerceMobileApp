import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Center(
                  child: Text("Success!",
                      style: TextStyle(
                          fontSize: 34, fontFamily: "Metropolis-bold")),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                      "Your order will be delivered soon\nThank you for choosing our app",
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Metropolis-semibold")),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    width: 250,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDB3022),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0))),
                      child: const Text('Continue Shopping',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Metropolis-regular")),
                    ),
                  ),
                ),
              ],
            )));
  }
}
