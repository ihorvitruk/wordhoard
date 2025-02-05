import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/repositories/translations.dart';
import 'package:wordhoard/services/services.dart';
import 'package:wordhoard/wigdets/dictionary/cubit.dart';
import 'package:wordhoard/wigdets/home/cubit.dart';
import 'package:wordhoard/wigdets/home/view.dart';
import 'package:wordhoard/wigdets/main/cubit.dart';
import 'package:wordhoard/wigdets/side_bar/cubit.dart';
import 'package:wordhoard/wigdets/translator/cubit.dart';

class MainView extends BaseView<MainCubit> {
  const MainView({
    required this.authRepository,
    required this.firebaseSignInScreen,
    super.key,
  });

  final AuthRepository authRepository;

  final Widget firebaseSignInScreen;

  @override
  Widget buildView(BuildContext context, MainCubit cubit) {
    if (cubit.state.isSignedIn == null) {
      return const Center(child: CircularProgressIndicator());
    } else if (cubit.state.isSignedIn!) {
      final services = context.read<Services>();
      final user = services.firebaseAuth.currentUser;
      assert(user != null, 'User must not be null at this point.');

      return MultiProvider(
        providers: [
          Provider(
            create:
                (_) => TranslationsRepository(
                  services.timeService,
                  services.firebaseFirestore
                      .collection('users')
                      .doc(user!.uid)
                      .collection('translations'),
                  services.logger,
                ),
          ),
        ],
        child: Builder(
          builder:
              (context) => CubitBuilders(
                init: (CubitBuilders builders) {
                  builders
                    ..add((_) => HomeCubit())
                    ..add(
                      (_) => TranslatorCubit(
                        services.apiService,
                        context.read<TranslationsRepository>(),
                      ),
                    )
                    ..add(
                      (_) => DictionaryCubit(
                        translationsRepository:
                            context.read<TranslationsRepository>(),
                      ),
                    )
                    ..add((_) => SideBarCubit(authRepository: authRepository));
                },
                child: Align(
                  child: SizedBox(
                    width: min(MediaQuery.of(context).size.width, 700),
                    child: const HomeView(),
                  ),
                ),
              ),
        ),
      );
    } else {
      return firebaseSignInScreen;
    }
  }
}
