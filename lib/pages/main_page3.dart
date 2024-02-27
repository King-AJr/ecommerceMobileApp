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
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              color: Colors.white, // Assuming you want a background color
            ),
            constraints: const BoxConstraints(minWidth: double.infinity),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      icon:
                          const Icon(Icons.favorite_border_outlined, size: 40),
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
      ),
    );
  }
}
