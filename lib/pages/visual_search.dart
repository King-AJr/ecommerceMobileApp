import "package:flutter/material.dart";

class VisualSearch extends StatelessWidget {
  const VisualSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visual search',
            style: TextStyle(fontSize: 18, fontFamily: "Metropolis-semibold")),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/imagevisual_search.png',
                ),
                fit: BoxFit.cover)),
        child: Center(
          child: Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                      'Search for an outfit by taking a photo or uploading an image',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Adamina')),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[800],
                      ),
                      child: const Text('TAKE A PHOTO',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20.0))),
                      child: const Text('UPLOAD AN IMAGE',
                          style: TextStyle(color: Colors.white)),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
