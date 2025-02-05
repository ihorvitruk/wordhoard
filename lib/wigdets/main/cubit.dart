import 'package:wordhoard/architecture/base_cubit.dart';
import 'package:wordhoard/repositories/auth.dart';
import 'package:wordhoard/wigdets/main/state.dart';

class MainCubit extends BaseCubit<MainState> {
  MainCubit({required this.authRepository}) : super(MainState.initial);

  final AuthRepository authRepository;

  @override
  Stream<MainState> get stream => authRepository.isSignedIn.map(_createState);

  MainState _createState(bool isSignedIn) {
    return MainState(isSignedIn: isSignedIn);
  }
}
