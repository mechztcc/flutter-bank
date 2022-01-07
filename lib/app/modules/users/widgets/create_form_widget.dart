import 'package:flutter/material.dart';

class CreateFormWidget extends StatefulWidget {
  final String title;

  CreateFormWidget({Key? key, this.title = "CreateFormWidget"})
      : super(key: key);

  @override
  State<CreateFormWidget> createState() => _CreateFormWidgetState();
}

class _CreateFormWidgetState extends State<CreateFormWidget> {
  bool _isPersonal = false;

  bool isCompany = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/wallet.png',
            fit: BoxFit.cover,
            height: 200,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(label: Text('CPF')),
                ),
                TextFormField(
                  decoration: const InputDecoration(label: Text('Name')),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('E-mail'),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Continue'),
                      style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.secondary),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
