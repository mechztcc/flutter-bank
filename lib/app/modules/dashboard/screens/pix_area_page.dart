import 'package:flutter/material.dart';

import 'package:flutter_bank/app/modules/dashboard/widgets/pix_area_form_widget.dart';

class PixAreaPage extends StatefulWidget {
  final String title;
  const PixAreaPage({Key? key, this.title = 'PixAreaPage'}) : super(key: key);
  @override
  PixAreaPageState createState() => PixAreaPageState();
}

class PixAreaPageState extends State<PixAreaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.red,
        child: Column(
          children: [
            Row(
              children: [
                PixAreaFormWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
