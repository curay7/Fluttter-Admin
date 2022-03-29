import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Text(""),
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
                // EdgeInsets.fromLTRB(left, top, right, bottom),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              border: UnderlineInputBorder()),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              border: UnderlineInputBorder()),
                        ),
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          height: 70,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 30),
                          child: TextButton(
                              onPressed: () {},
                              child: Text("Forgot Password"))),
                      Container(
                        height: 70,
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () {
                            Get.toNamed('/home');
                            // print(nameController.text);
                            // print(passwordController.text);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
