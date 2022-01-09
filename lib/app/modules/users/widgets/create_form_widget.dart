import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CreateFormWidget extends StatefulWidget {
  final String title;

  CreateFormWidget({Key? key, this.title = "CreateFormWidget"})
      : super(key: key);

  @override
  State<CreateFormWidget> createState() => _CreateFormWidgetState();
}

class _CreateFormWidgetState extends State<CreateFormWidget> {
  bool isCpf = true;

  bool isName = false;
  bool isEmail = false;
  bool isPassword = false;

  void handleInput() {
    if (isCpf == true) {
      _showName();
      return;
    }
    if (isName == true) {
      _showEmail();
      return;
    }

    if (isEmail == true) {
      _showPassword();
      return;
    }
    print(isName);
    print(isEmail);
    print(isPassword);
  }

  void handleBack() {
    if (isCpf == true) {
      Modular.to.pop();
    }

    if (isName == true) {
      isName = false;
      isCpf = true;
      isEmail = false;
      isPassword = false;
    }

    if (isEmail == true) {
      isName = true;
      isCpf = false;
      isEmail = false;
      isPassword = false;
    }

    if (isPassword == true) {
      isName = false;
      isCpf = false;
      isEmail = true;
      isPassword = false;
    }
  }

  void _showName() {
    isCpf = false;
    isName = true;
    isEmail = false;
    isPassword = false;
  }

  void _showEmail() {
    isCpf = false;
    isName = false;
    isEmail = true;
    isPassword = false;
  }

  void _showPassword() {
    isCpf = false;
    isName = false;
    isEmail = false;
    isPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              child: Column(
                children: [
                  if (isCpf == true)
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'CPF',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepOrange),
                        ),
                      ),
                    ),
                  if (isName == true)
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'Nome completo',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                  if (isEmail == true)
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'E-mail',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                  if (isPassword == true)
                    TextFormField(
                      obscureText: true,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'Senha',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            handleInput();
                          });
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).colorScheme.secondary),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          handleBack();
                        });
                      },
                      child: Text(
                        'Voltar',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
