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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    'https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png'),
              ),
            ),
            Text(
              'Welcome to UBank',
              style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Entrar'),
                  ),
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
