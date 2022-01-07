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

  Function? _navigate() {
    Modular.to.pushReplacementNamed('/users');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                  'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png',
                ),
              ),
              ElevatedButton.icon(
                onPressed: _navigate,
                icon: Icon(
                  Icons.wallet_membership_outlined,
                ),
                label: Text('Entrar'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
