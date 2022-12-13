import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _pressButtonPrimary() {
    Navigator.pushNamed(context, '/login');
  }

  void _pressButtonSecondary() {
    Navigator.pushNamed(context, '/register');
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(197, 79, 160, 252),
      body: SizedBox(
        width: size.width * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/icon.png',
              width: size.width * 0.7,
              height: size.height * 0.55,
            ),
            const Text(
              "Vamos começar",
              style: TextStyle(color: Colors.white, fontSize: 36),
            ),
            SizedBox(
              height: size.height * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: size.width * 0.48,
                    height: size.height * 0.05,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.green)
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 40.0, right: 40.0)),
                    ),
                    onPressed: _pressButtonPrimary,
                    child: const Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ),
                  const Text(
                    "ou",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    width: size.width * 0.48,
                    height: size.height * 0.05,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: const BorderSide(color: Colors.white),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.only(left: 40.0, right: 40.0)),
                    ),
                    onPressed: _pressButtonSecondary,
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
