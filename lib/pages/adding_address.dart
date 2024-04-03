import 'package:flutter/material.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.6,
            title: const Text("Adding Shipping Addresses",
                style: TextStyle(
                    fontFamily: "Metropolis-semibold", fontSize: 18))),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Full Name',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF9B9B9B)),
                          border: InputBorder.none,
                          //filled: true,
                          fillColor: Colors.white,
                        ),
                        onSaved: null,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Address',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF9B9B9B)),
                          border: InputBorder.none,
                          //filled: true,
                          fillColor: Colors.white,
                        ),
                        onSaved: null,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'City',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF9B9B9B)),
                          border: InputBorder.none,
                          //filled: true,
                          fillColor: Colors.white,
                        ),
                        onSaved: null,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Zip Code (Postal Code)',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF9B9B9B)),
                          border: InputBorder.none,
                          //filled: true,
                          fillColor: Colors.white,
                        ),
                        onSaved: null,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 0.2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Country',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Metropolis-regular",
                                    color: Color(0xFF9B9B9B)),
                                border: InputBorder.none,
                                //filled: true,
                                fillColor: Colors.white,
                              ),
                              onSaved: null,
                            ),
                          ),
                          const Icon(Icons.arrow_forward_ios_sharp, size: 14)
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDB3022),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0))),
                      child: const Text('SAVE ADDRESS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Metropolis-regular")),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
