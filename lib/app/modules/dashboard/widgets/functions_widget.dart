import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/dashboard/models/functionalities.dart';

class FunctionsWidget extends StatelessWidget {
  final String title;

  final Functionalities? funcs;

  const FunctionsWidget({Key? key, this.title = "FunctionsWidget", this.funcs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, i) => Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              width: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.flip_to_back_sharp),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Funcionalidade',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
