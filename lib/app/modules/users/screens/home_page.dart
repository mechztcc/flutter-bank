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
                    color: Colors.indigoAccent,
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.deepOrange.withOpacity(0.8),
                    //     spreadRadius: 5,
                    //     blurRadius: 5,
                    //   )
                    // ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
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
            SizedBox(
              height: 20,
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
                primary: Colors.indigoAccent,
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
