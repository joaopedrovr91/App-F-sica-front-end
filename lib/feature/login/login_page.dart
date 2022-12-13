import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void _clickLogin() {
    Navigator.pushNamed(context, "/menu");
  }

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(197, 79, 160, 252),
      body: ListView(
        padding: const EdgeInsets.all(0.0),
        children: [
          SizedBox(
            width: size.width * 1,
            height: size.height * 1,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/icon.png',
                    width: size.width * 0.39,
                    height: size.height * 0.30,
                  ),
                  TextFormField(
                    controller: email,
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  TextFormField(
                    controller: password,
                    autofocus: false,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.72,
                    height: size.height * 0.075,
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(left: 40.0, right: 40.0)),
                      ),
                      onPressed: _clickLogin,
                      child: const Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

