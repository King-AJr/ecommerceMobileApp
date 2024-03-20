import 'package:flutter/material.dart';

class BrandList extends StatefulWidget {
  const BrandList({super.key});

  @override
  State<BrandList> createState() => _BrandListState();
}

class _BrandListState extends State<BrandList> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Colors.white,
          title: const Text(
            "Brands",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Card(
                elevation: 0.2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("adidas",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("adidas Originals",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xFFDB3022,
                            ),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: true,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Blend",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Boutique Moschino",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xFFDB3022,
                            ),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: true,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Champion",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Diesel",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xFFDB3022,
                            ),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: true,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Jack & Jones",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Naf Naf",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xFFDB3022,
                            ),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: true,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: const EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Red Valentino",
                        style: TextStyle(
                            fontSize: 20, fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: false,
                      onChanged: null,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(7, 10, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("s.oliver",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(
                              0xFFDB3022,
                            ),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Metropolis-light")),
                    Checkbox(
                      value: true,
                      onChanged: null,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
