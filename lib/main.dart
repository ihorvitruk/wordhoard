import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'package:wordhoard/firebase_options.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/services/services.dart';
import 'package:wordhoard/unit/units.dart';
import 'package:wordhoard/wigdets/home/unit.dart';
import 'package:wordhoard/wigdets/main/unit.dart';
import 'package:wordhoard/wigdets/main/view.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final services = Services();
  await services.init();

  runApp(App(services));
}

class App extends StatelessWidget {
  const App(this._services, {super.key});

  final Services _services;

  @override
  Widget build(BuildContext context) {
    final authRepository = AuthRepository(
      _services.firebaseAuth,
      _services.firebaseFirestore.collection('users'),
    );

    return MaterialApp(
      home: UnitBuilders(
        map: {
          MainUnit: (_, __) => MainUnit(authRepository),
          HomeUnit: (_, __) => HomeUnit(),
        },
        child: const MainView(
          firebaseSignInScreen: SignInScreen(
            showAuthActionSwitch: false,
            showPasswordVisibilityToggle: true,
          ),
        ),
      ),
    );
  }
}
