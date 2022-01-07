import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  final String title;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginFormWidget({Key? key, this.title = "LoginFormWidget"}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                label: Text('E-mail'),
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                label: Text('Senha'),
              ),
              obscureText: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Entrar'),
                ),
                TextButton(
                  onPressed: () {},
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
