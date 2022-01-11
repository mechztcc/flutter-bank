import 'package:flutter/material.dart';

class HistoryListWidget extends StatelessWidget {
  final String title;
  const HistoryListWidget({Key? key, this.title = "HistoryListWidget"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 15,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.indigoAccent),
              title: Text(
                'Nome da compra',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'R\$ 99.99',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
