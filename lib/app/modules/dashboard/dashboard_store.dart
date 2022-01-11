import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/dashboard/models/functionalities.dart';
import 'package:mobx/mobx.dart';

part 'dashboard_store.g.dart';

class DashboardStore = _DashboardStoreBase with _$DashboardStore;

abstract class _DashboardStoreBase with Store {
  @observable
  var funcs = [
    Functionalities(
      id: 1,
      name: 'Meus Cartões',
      iconName: Icon(Icons.card_membership_rounded),
    ),
    Functionalities(
      id: 2,
      name: 'Pix',
      iconName: Icon(Icons.send_to_mobile),
    ),
    Functionalities(
      id: 3,
      name: 'Transferencias',
      iconName: Icon(Icons.transfer_within_a_station),
    ),
    Functionalities(
      id: 4,
      name: 'Depositar',
      iconName: Icon(Icons.monetization_on),
    ),
  ];

  @action
  Icon getIcon(int id) {
    if (id == 1) {
      return Icon(Icons.card_membership_rounded);
    } else if (id == 2) {
      return Icon(Icons.send_to_mobile);
    } else if (id == 3) {
      return Icon(Icons.transfer_within_a_station);
    } else if (id == 4) {
      return Icon(Icons.monetization_on);
    } else
      return Icon(Icons.ac_unit);
  }
}
