import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/services/services.dart';
import 'package:wordhoard/wigdets/dictionary/cubit.dart';
import 'package:wordhoard/wigdets/home/cubit.dart';
import 'package:wordhoard/wigdets/home/view.dart';
import 'package:wordhoard/wigdets/main/cubit.dart';
import 'package:wordhoard/wigdets/side_bar/cubit.dart';
import 'package:wordhoard/wigdets/translator/cubit.dart';

class MainView extends BaseView<MainCubit> {
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
  Widget buildView(BuildContext context, MainCubit cubit) {
    return cubit.state.isSignedIn == null
        ? const Center(child: CircularProgressIndicator())
        : cubit.state.isSignedIn!
        ? CubitBuilders(
          init: (CubitBuilders builders) {
            builders
              ..add((_) => HomeCubit())
              ..add((_) => TranslatorCubit())
              ..add((_) => DictionaryCubit())
              ..add((_) => SideBarCubit(authRepository: authRepository));
          },
          child: const HomeView(),
        )
        : firebaseSignInScreen;
  }
}
