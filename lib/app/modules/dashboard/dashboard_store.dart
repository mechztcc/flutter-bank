import 'package:flutter/material.dart';
import 'package:flutter_bank/app/modules/dashboard/models/functionalities.dart';
import 'package:flutter_bank/app/modules/dashboard/models/key_pix.dart';
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
    Functionalities(
      id: 5,
      name: 'Pagar',
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
    } else if (id == 5) {
      return Icon(Icons.payments_rounded);
    }
    return Icon(Icons.ac_unit);
  }

  @observable
  List<KeyPix> typesPix = [
    KeyPix(id: 1, name: 'E-mail'),
    KeyPix(id: 2, name: 'Chave Aleatória'),
    KeyPix(id: 3, name: 'CPF'),
    KeyPix(id: 4, name: 'Telefone'),
  ];

  @action
  Icon getPixIcon(int id) {
    if (id == 1) {
      return Icon(Icons.email);
    } else if (id == 2) {
      return Icon(Icons.vpn_key_outlined);
    } else if (id == 3) {
      return Icon(Icons.person_add);
    } else if (id == 4) {
      return Icon(Icons.phone);
    }
    return Icon(Icons.ac_unit);
  }
}
