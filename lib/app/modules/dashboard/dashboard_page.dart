import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bank/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key? key, this.title = 'DashboardPage'})
      : super(key: key);
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final DashboardStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 200,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepOrange,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 10,
                              ),
                              child: Text(
                                'Saldo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'R\$ 20.000.00',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '0000 0000 0000 0000',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Alberto P Belo',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
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
                                    fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
