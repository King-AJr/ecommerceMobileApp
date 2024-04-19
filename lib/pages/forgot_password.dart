import "package:ecommerce_app/services/auth_pages.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  Future resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Password reset link sent, check your email"),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e);
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  alignment: AlignmentDirectional.bottomStart,
                  child: const Text('Forgot password',
                      style: TextStyle(
                          fontSize: 34, fontFamily: "Metropolis-bold")),
                ))),
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                            "Please, enter your email address. You will recieve a link to create a new password via email"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                              controller: _emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontSize: 20,
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
                      Container(
                        height: 50,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        child: ElevatedButton(
                          onPressed: resetPassword,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFDB3022),
                          ),
                          child: const Text('SEND',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: "Metropolis-regular")),
                        ),
                      )
                    ]),
                  ),
                ),
              ],
            )));
    ;
  }
}
