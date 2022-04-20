import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_flutter/apps/auth/controller/UserController.dart';

class AuthLogin extends StatefulWidget {
  AuthLogin({Key? key}) : super(key: key);

  @override
  _AuthLoginState createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final UserController userController = Get.put(UserController());

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
                            controller: _emailController,
                            decoration: InputDecoration(
                                hintText: "Email",
                                border: UnderlineInputBorder()),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 30),
                          child: TextFormField(
                            controller: _passwordController,
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
                              // SharedPreferences prefs =
                              //     await SharedPreferences.getInstance();
                              // prefs.clear();
                              // prefs.setString('username', 'sampleValue');
                              UserController().login(_emailController.text,
                                  _passwordController.text);
                              //Get.toNamed('/home');
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
