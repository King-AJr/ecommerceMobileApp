import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingState();
}

class _SettingState extends State<Settings> {
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
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    alignment: AlignmentDirectional.bottomStart,
                    child: const Text('Settings',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontFamily: "Metropolis-bold", fontSize: 34)),
                  ),
                ))),
        body: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Personal information",
                  style: TextStyle(
                      fontSize: 16, fontFamily: "Metropolis-semibold"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    elevation: 0.1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Full name',
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
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    elevation: 0.1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Date of birth',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-light",
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
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 16, fontFamily: "Metropolis-semibold"),
                    ),
                    TextButton(
                        onPressed: null,
                        child: Text("Change",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Metropolis-regular",
                                color: Color(0xFF9B9B9B))))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(
                    elevation: 0.1,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5.0), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-light",
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
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Notification",
                  style: TextStyle(
                      fontSize: 16, fontFamily: "Metropolis-semibold"),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Sales",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF222222))),
                      Switch(
                        value: true,
                        onChanged: null,
                        thumbColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2AA952)),
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("New arrivals",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF222222))),
                      Switch(
                        value: false,
                        onChanged: null,
                        thumbColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2AA952)),
                      )
                    ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Delivery status change",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Metropolis-regular",
                              color: Color(0xFF222222))),
                      Switch(
                        value: false,
                        onChanged: null,
                        inactiveThumbColor: Colors.white,
                        inactiveTrackColor: const Color(0xFF9B9B9B),
                        thumbColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF2AA952)),
                      )
                    ])
              ],
            )));
  }
}
