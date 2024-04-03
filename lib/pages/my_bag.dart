import "package:ecommerce_app/services/my_bag_card.dart";
import "package:flutter/material.dart";

class MyBag extends StatefulWidget {
  const MyBag({super.key});

  @override
  State<MyBag> createState() => _MyBagState();
}

class _MyBagState extends State<MyBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("My Bag",
                        style: TextStyle(
                            fontFamily: "Metropolis-bold", fontSize: 34)),
                  ],
                ),
              ))),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const MyBagCard(
                  name: "Pullover",
                  size: "L",
                  color: "Black",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              const MyBagCard(
                  name: "Pullover",
                  size: "L",
                  color: "Black",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              const MyBagCard(
                  name: "Pullover",
                  size: "L",
                  color: "Black",
                  price: 54,
                  imageUrl: 'assets/images/cat_image2.png'),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your promo code',
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 14.0),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward,
                                color: Colors.white),
                            onPressed: () {
                              // Your code to handle the button press
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
              const Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total amount:",
                        style: TextStyle(
                            fontFamily: "Metropolis-regular",
                            fontSize: 14,
                            color: Color(0xFF9B9B9B)),
                      ),
                      Text(
                        "124\$",
                        style: TextStyle(
                            fontFamily: "Metropolis-semibold",
                            fontSize: 22,
                            color: Color(0xFF222222)),
                      )
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB3022),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                    child: const Text('CHECK OUT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: "Metropolis-regular")),
                  ),
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 2,
        iconSize: 30,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showUnselectedLabels:
            true, // Change this according to the current tab index
        onTap: (int index) {
          // Handle tab selection here
        },
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/main_page');
                },
                icon: const Icon(Icons.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/categories');
                },
                icon: const Icon(Icons.shopping_cart_outlined)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/my_bag');
                },
                icon: const Icon(Icons.shopping_bag)),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorite_list');
                },
                icon: const Icon(Icons.favorite_border_outlined)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person_2_outlined)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
