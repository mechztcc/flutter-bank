import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bank/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();
  double size = 50.0;

  Function? _navigate() {
    Modular.to.pushReplacementNamed('/users/home');
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
    ).then((value) {
      _navigate();
    });

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrange[400],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Carregando',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
