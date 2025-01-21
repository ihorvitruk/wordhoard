import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/unit/unit.dart';
import 'package:wordhoard/wigdets/main/state.dart';

class MainUnit extends Unit<MainState> {
  MainUnit(this._authRepository) : super(MainState.initial);

  final AuthRepository _authRepository;

  @override
  Stream<MainState> get states => _authRepository.isSignedIn.map(_createState);

  MainState _createState(bool isSignedIn) {
    return MainState(isSignedIn: isSignedIn);
  }
}
