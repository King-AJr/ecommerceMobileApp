import "package:flutter/material.dart";
import "package:ecommerce_app/services/product_card.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bannermain.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
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
                          height: 1.0,
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
                      width: 160,
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
                              width: 60,
                              height: 30, 
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    20), 
                              ),
                              child: const Center(
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight
                                          .bold 
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
                      width: 160, 
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
                              width: 60, 
                              height: 30, 
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    20), // Adjust border radius as needed
                              ),
                              child: const Center(
                                child: Text(
                                  'NEW', 
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight
                                          .bold 
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
                      width: 160,
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
                              width: 60, 
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(
                                    20), 
                              ),
                              child: const Center(
                                child: Text(
                                  'NEW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight
                                          .bold
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
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 0,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showUnselectedLabels:
            true, 
        onTap: (int index) {
          
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),);
  }
}
