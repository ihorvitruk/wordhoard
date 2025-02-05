import 'package:wordhoard/architecture/base_cubit.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/wigdets/side_bar/state.dart';

class SideBarCubit extends BaseCubit<SideBarState> {
  SideBarCubit({required this.authRepository}) : super(SideBarState());

  final AuthRepository authRepository;

  Future<void> onLogoutPressed() async {
    await authRepository.signOut();
  }
}
