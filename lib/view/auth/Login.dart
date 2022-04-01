import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/AuthLogin.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: null /* add child content here */,
                ),
                flex: 2,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  // EdgeInsets.fromLTRB(left, top, right, bottom),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 100),
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
                                style: TextButton.styleFrom(
                                    primary: Colors.redAccent),
                                child: Text("Forgot Password"))),
                        Container(
                          height: 70,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 30),
                          child: ElevatedButton(
                            child: const Text('Login'),
                            onPressed: () async {
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.clear();
                              prefs.setString('username', 'sampleValue');
                              Get.toNamed('/home');
                              // print(nameController.text);
                              // print(passwordController.text);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.red[800]),
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
      ),
    );
  }
}
