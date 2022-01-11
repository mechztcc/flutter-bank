import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final String title;
  const SettingsPage({Key? key, this.title = 'SettingsPage'}) : super(key: key);
  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
