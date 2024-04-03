import "package:ecommerce_app/services/image_button.dart";
import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: AlignmentDirectional.bottomStart,
                  child: const Text('Login',
                      style: TextStyle(
                          fontSize: 34, fontFamily: "Metropolis-bold")),
                ))),
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Form(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Card(
                        elevation: 0.2,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5.0), // Adjust the radius as needed
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Email',
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
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Card(
                        elevation: 0.2,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Forgot your password",
                          style: TextStyle(color: Colors.black),
                        ),
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            alignment: AlignmentDirectional.centerStart,
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgot_password');
                            },
                            icon: const Icon(Icons.arrow_right_alt),
                            color: const Color(0xFFDB3022)),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDB3022),
                        ),
                        child: const Text('LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Metropolis-regular")),
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 200),
                Column(
                  children: [
                    const Text('Or sign up with social account',
                        style: TextStyle(
                            color: Color(0xFF222222),
                            fontSize: 14,
                            fontFamily: "Metropolis-regular")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60.0,
                          width: 90.0,
                          child: ImageCardButton(
                            imagePath: 'assets/images/google_logo.jpeg',
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 20),
                        SizedBox(
                          height: 60.0,
                          width: 90.0,
                          child: ImageCardButton(
                            imagePath: 'assets/images/fb-logo.jpeg',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )));
  }
}
