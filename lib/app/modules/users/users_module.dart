import 'package:flutter_bank/app/modules/users/screens/create_page.dart';
import 'package:flutter_bank/app/modules/users/screens/forgot_password_page.dart';
import 'package:flutter_bank/app/modules/users/screens/home_page.dart';
import 'package:flutter_bank/app/modules/users/screens/login_page.dart';

import 'package:flutter_bank/app/modules/users/users_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class UsersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => UsersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/login', child: (_, args) => LoginPage()),
    ChildRoute('/create', child: (_, args) => CreatePage()),
    ChildRoute('/forgot', child: (_, args) => ForgotPasswordPage()),
  ];
}
