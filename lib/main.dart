import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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

  runApp(Provider(create: (_) => services, child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final services = context.read<Services>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green[900]!),
      ),
      home: MultiProvider(
        providers: [
          Provider(
            create:
                (_) => AuthRepository(
                  services.firebaseAuth,
                  services.firebaseFirestore.collection('users'),
                ),
          ),
        ],
        child: Builder(
          builder:
              (context) => CubitBuilders(
                init: (CubitBuilders builders) {
                  builders.add(
                    (_) => MainCubit(
                      authRepository: context.read<AuthRepository>(),
                    ),
                  );
                },
                child: MainView(
                  authRepository: context.read<AuthRepository>(),
                  firebaseSignInScreen: const SignInScreen(
                    showAuthActionSwitch: false,
                    showPasswordVisibilityToggle: true,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
