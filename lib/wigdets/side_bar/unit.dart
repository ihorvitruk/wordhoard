import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/unit/unit.dart';
import 'package:wordhoard/wigdets/side_bar/state.dart';

class SideBarUnit extends Unit<SideBarState> {
  SideBarUnit({required this.authRepository}) : super(SideBarState());

  final AuthRepository authRepository;

  Future<void> onLogoutPressed() async {
    await authRepository.signOut();
  }
}
