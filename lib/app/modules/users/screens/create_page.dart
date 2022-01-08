import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/users/widgets/create_form_widget.dart';

class CreatePage extends StatefulWidget {
  final String title;
  const CreatePage({Key? key, this.title = 'Create account'}) : super(key: key);
  @override
  CreatePageState createState() => CreatePageState();
}

class CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange[400],
        ),
        body: CreateFormWidget());
  }
}
