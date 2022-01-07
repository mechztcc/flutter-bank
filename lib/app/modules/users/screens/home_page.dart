import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png'),
              ),
            ],
          ),
          const Padding(
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Bem-vindo ao BBank',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Modular.to.pushNamed('/users/create');
            },
            icon: Icon(Icons.new_label),
            label: Text('Novo usuário'),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.secondary,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Modular.to.pushNamed('/users/login');
            },
            icon: Icon(Icons.login),
            label: Text('Entrar'),
          ),
        ],
      ),
    );
  }
}
