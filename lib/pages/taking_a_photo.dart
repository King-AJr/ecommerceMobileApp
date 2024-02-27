import "package:flutter/material.dart";

class TakePhoto extends StatefulWidget {
  const TakePhoto({super.key});

  @override
  State<TakePhoto> createState() => _TakePhotoState();
}

class _TakePhotoState extends State<TakePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Search by taking a photo")),
        body: Column(children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 3 / 4,
              child: Image.asset(
                'assets/images/vs_take_a_photo.png',
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.flash_on, size: 40)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_outlined, size: 40)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.change_circle_outlined, size: 40))
          ])
        ]));
  }
}
