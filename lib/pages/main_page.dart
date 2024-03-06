import "package:flutter/material.dart";
import "package:ecommerce_app/services/product_card.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  //use container with bg image in decoration instead of stack
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/bannermain.png',
                  fit: BoxFit.cover,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                        child: Text(
                          'Fashion sale',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                            fontWeight: FontWeight.bold,
                            height: 1.0, // Adjust line height
                            //letterSpacing: -1.0, // Adjust letter spacing
                          ),
                        ),
                      ),
                      Container(
                        width: 230,
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[800],
                          ),
                          child: const Text(
                            'TAKE A PHOTO',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ]),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(15, 20, 20, 10),
                    margin: const EdgeInsets.fromLTRB(0, 0, 110, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text('New',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
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
            ]))),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white, // Assuming you want a background color
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // or MainAxisAlignment.spaceAround
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home,
                        size: 40, color: Color(0xFFDB3022)),
                  ),
                  const Text('Home'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined, size: 40),
                  ),
                  const Text('Cart'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_bag_outlined, size: 40),
                  ),
                  const Text('Bag'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined, size: 40),
                  ),
                  const Text('Favorites'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.person_2_outlined, size: 40),
                  ),
                  const Text('Profile'),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20)
      ],
    ));
  }
}
