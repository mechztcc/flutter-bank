import 'package:flutter_bank/app/modules/dashboard/screens/dashboard_Page.dart';

import 'package:flutter_bank/app/modules/dashboard/dashboard_store.dart';
import 'package:flutter_bank/app/modules/dashboard/screens/settings_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DashboardStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => DashboardPage()),
    ChildRoute('/settings', child: (_, args) => SettingsPage()),
  ];
}
