import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/sign_in/unit.dart';

class SignInView extends UnitView<SignInUnit> {
  const SignInView(this.firebaseSignInScreen, {super.key});

  final Widget firebaseSignInScreen;

  @override
  Widget build(BuildContext context, SignInUnit unit) {
    return firebaseSignInScreen;
  }
}
