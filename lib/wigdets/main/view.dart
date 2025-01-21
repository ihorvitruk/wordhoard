import 'package:flutter/material.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/services/services.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/unit/units.dart';
import 'package:wordhoard/wigdets/dictionary/unit.dart';
import 'package:wordhoard/wigdets/home/unit.dart';
import 'package:wordhoard/wigdets/home/view.dart';
import 'package:wordhoard/wigdets/main/unit.dart';
import 'package:wordhoard/wigdets/side_bar/unit.dart';
import 'package:wordhoard/wigdets/translator/unit.dart';

class MainView extends UnitView<MainUnit> {
  const MainView({
    required this.services,
    required this.authRepository,
    required this.firebaseSignInScreen,
    super.key,
  });

  final Services services;

  final AuthRepository authRepository;

  final Widget firebaseSignInScreen;

  @override
  Widget build(BuildContext context, MainUnit unit) {
    return unit.state.isSignedIn == null
        ? const Center(child: CircularProgressIndicator())
        : unit.state.isSignedIn!
        ? UnitBuilders(
          map: {
            HomeUnit: (_, __) => HomeUnit(),
            TranslatorUnit: (_, __) => TranslatorUnit(),
            DictionaryUnit: (_, __) => DictionaryUnit(),
            SideBarUnit: (_, __) => SideBarUnit(authRepository: authRepository),
          },
          child: const HomeView(),
        )
        : firebaseSignInScreen;
  }
}
