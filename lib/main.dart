import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/firebase_options.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/services/services.dart';
import 'package:wordhoard/wigdets/main/cubit.dart';
import 'package:wordhoard/wigdets/main/view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

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
      home: CubitBuilders(
        init: (CubitBuilders builders) {
          builders.add((_) => MainCubit(authRepository: authRepository));
        },
        child: MainView(
          services: _services,
          authRepository: authRepository,
          firebaseSignInScreen: const SignInScreen(
            showAuthActionSwitch: false,
            showPasswordVisibilityToggle: true,
          ),
        ),
      ),
    );
  }
}
