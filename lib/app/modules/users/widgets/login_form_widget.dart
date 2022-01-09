import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginFormWidget extends StatelessWidget {
  final String title;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginFormWidget({Key? key, this.title = "LoginFormWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            Text(
              'Bem-vindo',
              style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  label: Text(
                    'E-mail',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  label: Text(
                    'Senha',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
                obscureText: true,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Modular.to.pushReplacementNamed('/users/forgot');
                  },
                  child: Text('Esqueceu a senha?'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
