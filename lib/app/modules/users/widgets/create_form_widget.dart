import 'package:flutter/material.dart';

class CreateFormWidget extends StatefulWidget {
  final String title;

  CreateFormWidget({Key? key, this.title = "CreateFormWidget"})
      : super(key: key);

  @override
  State<CreateFormWidget> createState() => _CreateFormWidgetState();
}

class _CreateFormWidgetState extends State<CreateFormWidget> {
  bool isCpf = true;

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
                      decoration: const InputDecoration(
                        label: Text(
                          'CPF',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange)),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isCpf = !isCpf;
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
