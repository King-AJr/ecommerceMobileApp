import 'package:flutter/material.dart';

class MainPageThree extends StatelessWidget {
  const MainPageThree({Key? key});

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
                    'assets/images/mainnew_collection.png',
                    fit: BoxFit.cover,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                        child: Text(
                          'Street clothes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            height: 1.0, // Adjust line height
                            //letterSpacing: -1.0, // Adjust letter spacing
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/white_bg.png',
                                fit: BoxFit.cover,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                                    child: Text(
                                      'Summer sale',
                                      style: TextStyle(
                                        color: Color(0xFFDB3022),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0, // Adjust line height
                                        //letterSpacing: -1.0, // Adjust letter spacing
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Image.asset(
                                'assets/images/imageblack_bg.png',
                                fit: BoxFit.cover,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                                    child: Text(
                                      'Black',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        height: 1.0, // Adjust line height
                                        //letterSpacing: -1.0, // Adjust letter spacing
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          'assets/images/imagemens_hoodies.png',
                          fit: BoxFit.cover,
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 15),
                              child: Text(
                                '',
                                style: TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  height: 1.0, // Adjust line height
                                  //letterSpacing: -1.0, // Adjust letter spacing
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
      ),
    );
  }
}
