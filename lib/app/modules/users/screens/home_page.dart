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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[400],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepOrange[400],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bem-vindo ao BBank',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Você no futuro',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
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
              icon: Icon(
                Icons.new_label,
                color: Colors.white,
              ),
              label: Text(
                'Novo usuário',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[400],
              ),
            ),
            TextButton.icon(
              onPressed: () {
                Modular.to.pushNamed('/users/login');
              },
              icon: Icon(
                Icons.login,
                color: Colors.white,
              ),
              label: Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
