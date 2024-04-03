import 'package:ecommerce_app/services/product_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductInfo extends StatefulWidget {
  const ProductInfo({super.key});

  @override
  State<ProductInfo> createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Short dress",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Metropolis-semibold")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              SizedBox(
                width: 500,
                child: Image.asset('assets/images/short_black_gown.webp'),
              ),
              SizedBox(
                width: 300,
                child: Image.asset('assets/images/imageshort-dress.png'),
              )
              // Replace with your asset path
            ],
            options: CarouselOptions(
              height: 400.0, // Adjust the height as needed
              viewportFraction: 0.7, // Adjust the visible portion of each item
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 43,
                          width: 120,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Size",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontFamily: "Metropolis-medium"),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          )
                          //
                          ),
                      Container(
                          height: 43,
                          width: 120,
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFF9B9B9B),
                              width: 0.5,
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Black",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontFamily: "Metropolis-medium"),
                                ),
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                          )
                          //
                          ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border_outlined,
                            color: Color.fromARGB(255, 141, 138, 138),
                            size: 17), // Icon widget
                        label: const Text(''), // Empty Text widget
                        style: ElevatedButton.styleFrom(
                          elevation: 0.7,
                          padding: const EdgeInsets.fromLTRB(
                              12, 5, 5, 5), // Adjust padding as needed
                          shape: const CircleBorder(), // Circular shape
                          backgroundColor: Colors.white,
                          alignment: Alignment.center, // Button color
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('H&M',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                                Text("Short black dress",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black.withOpacity(0.5))),
                                const Row(
                                  children: [
                                    Icon(Icons.star,
                                        color: Color(0xFFFFBA49), size: 16),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFBA49), size: 16),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFBA49), size: 16),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFBA49), size: 16),
                                    Icon(Icons.star,
                                        color: Color(0xFFFFBA49), size: 16),
                                    Text('(10)')
                                  ],
                                ),
                              ]),
                        ),
                        const Text('\$19.99',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: "Metropolis-semibold")),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Card(
                        elevation: 0.3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Shipping info",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Icon(Icons.navigate_next)
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 60,
                    child: Card(
                        elevation: 0.3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0)),
                        color: Colors.white,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Support",
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              Icon(Icons.navigate_next)
                            ],
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("You can also like this",
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Metropolis-semibold"))
                            ]),
                        Text('12 items',
                            style: TextStyle(
                                fontSize: 15, fontFamily: "Metropolis-light")),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          height: 300,
                          width: 160, // Adjust the height as needed
                          color: Colors.white,
                          child: Stack(
                            children: [
                              const ProductCard(
                                image: 'assets/images/pink_dress.jpeg',
                                title: 'Evening dress',
                                price: 29.99,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  width: 60, // Adjust width as needed
                                  height: 30, // Adjust height as needed
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust border radius as needed
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW', // Your discount text
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight
                                              .bold // Adjust font size as needed
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          height: 300,
                          width: 160, // Adjust the height as needed
                          color: Colors.white,
                          child: Stack(
                            children: [
                              const ProductCard(
                                image: 'assets/images/men_chinos.jpeg',
                                title: 'Evening dress',
                                price: 29.99,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  width: 60, // Adjust width as needed
                                  height: 30, // Adjust height as needed
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust border radius as needed
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW', // Your discount text
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight
                                              .bold // Adjust font size as needed
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          height: 300,
                          width: 160, // Adjust the height as needed
                          color: Colors.white,
                          child: Stack(
                            children: [
                              const ProductCard(
                                image: 'assets/images/wine_collar_polo.webp',
                                title: 'Evening dress',
                                price: 29.99,
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                child: Container(
                                  width: 60, // Adjust width as needed
                                  height: 30, // Adjust height as needed
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust border radius as needed
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'NEW', // Your discount text
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight
                                              .bold // Adjust font size as needed
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Card(
            elevation: 0.5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/my_bag');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDB3022),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                  child: const Text('ADD TO CART',
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            )),
      ),
    );
  }
}
