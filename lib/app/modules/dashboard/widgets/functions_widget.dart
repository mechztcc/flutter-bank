import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter_bank/app/modules/dashboard/models/functionalities.dart';
import 'package:provider/provider.dart';

class FunctionsWidget extends StatelessWidget {
  final String title;

  const FunctionsWidget({Key? key, this.title = "FunctionsWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<DashboardStore>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: store.funcs.length,
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
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: store.getIcon(i + 1),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${store.funcs[i].name}',
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
