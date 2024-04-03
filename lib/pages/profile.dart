import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(Icons.search),
            )
          ],
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Profile',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "Metropolis-bold", fontSize: 34)),
                  ],
                ),
              ))),
      body: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/smilingwoman.jpeg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Matilda Brown',
                              //textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Metropolis-semibold",
                                  fontSize: 18)),
                          Text('matildabrown@mail.com',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: "Metropolis-light",
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9B9B9B),
                      width: 0.1,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My orders',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('Already have 12 orders',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9B9B9B),
                      width: 0.1,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shipping addresses',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('3 addresses',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9B9B9B),
                      width: 0.1,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payment methods',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('Visa **34',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9B9B9B),
                      width: 0.1,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Promocodes',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('You have special promocodes',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF9B9B9B),
                      width: 0.1,
                    ),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('My reviews',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('Reviews for 4 items',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-light",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Settings',
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-semibold",
                                fontSize: 18)),
                        Text('Notification, password',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontFamily: "Metropolis-regular",
                                color: Color(0xFF9B9B9B),
                                fontSize: 11)),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Color(0xFF9B9B9B),
                    )
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: Colors.black,
        currentIndex: 4,
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
                icon: const Icon(Icons.shopping_bag_outlined)),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorites_list');
                },
                icon: const Icon(Icons.favorite_border_outlined)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: const Icon(Icons.person_2)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
