import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/dashboard/dashboard_store.dart';
import 'package:provider/provider.dart';

class PixAreaFormWidget extends StatelessWidget {
  final String title;
  const PixAreaFormWidget({Key? key, this.title = "PixAreaFormWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<DashboardStore>(context);

    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: _height,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                height: _height * 0.1,
                width: _width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: store.typesPix.length,
                  itemBuilder: (_, i) => Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          store.getPixIcon(i),
                          Text('${store.typesPix[i].name}')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: SizedBox(
              height: _height * 0.3,
              width: _width,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'Chave Pix',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigoAccent),
                        ),
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: const InputDecoration(
                        label: Text(
                          'Valor',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigoAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: _width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigoAccent,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Enviar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
