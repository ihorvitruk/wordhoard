import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/home/view.dart';
import 'package:wordhoard/wigdets/main/unit.dart';

class MainView extends UnitView<MainUnit> {
  const MainView({required this.firebaseSignInScreen, super.key});

  final Widget firebaseSignInScreen;

  @override
  Widget build(BuildContext context, MainUnit unit) {
    return Scaffold(
      appBar: AppBar(title: const Text('Word Hoard')),
      body:
          unit.state.isSignedIn == null
              ? const Center(child: CircularProgressIndicator())
              : unit.state.isSignedIn!
              ? const HomeView()
              : firebaseSignInScreen,
    );
  }
}
