import 'package:flutter/material.dart';

class MenuGeneralPage extends StatelessWidget {
  MenuGeneralPage({super.key});

  late BuildContext _context;

  void _clickCompleteTest() {
    Navigator.pushNamed(_context , '/test');
  }

  void _clickSpecificTest() {
    Navigator.pushNamed(_context , '/test/specific');
  }

  @override
  Widget build(BuildContext context) {
    _context = context;

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(100 ,79, 160, 252)
      ),
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
                  Container(
                    width: size.width * .80,
                    height: size.height * .1,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.green)),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(left: 40.0, right: 40.0)),
                      ),
                      onPressed: _clickCompleteTest,
                      child: const Text(
                        "Teste Completo",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * .80,
                    height: size.height * .1,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.green),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(color: Colors.green)),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(left: 40.0, right: 40.0)),
                      ),
                      onPressed: _clickSpecificTest,
                      child: const Text(
                        "Teste Específico",
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
