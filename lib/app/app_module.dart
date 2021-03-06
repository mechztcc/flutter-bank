import 'package:flutter_bank/app/modules/dashboard/dashboard_module.dart';
import 'package:flutter_bank/app/modules/splash/splash_module.dart';
import 'package:flutter_bank/app/modules/users/users_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/users', module: UsersModule()),
    ModuleRoute('/dashboard', module: DashboardModule())
  ];
}
