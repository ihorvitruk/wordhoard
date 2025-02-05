part of 'base_view.dart';

final class CubitBuilders extends InheritedWidget {
  CubitBuilders({
    required void Function(CubitBuilders builders) init,
    required super.child,
    super.key,
  }) {
    init(this);
  }

  final _map =
      <Type, BaseCubit Function(BuildContext context, Object? params)>{};

  void add<C extends BaseCubit>(C Function(BuildContext context) builder) {
    _map[C] = (context, _) => builder(context);
  }

  void addWithParams<C extends BaseCubit, P>(
    C Function(BuildContext context, P params) builder,
  ) {
    _map[C] = (context, params) => builder(context, params as P);
  }

  static C _createCubit<C extends BaseCubit>(
    BuildContext context,
    Object? params,
  ) {
    final builders =
        context.dependOnInheritedWidgetOfExactType<CubitBuilders>();
    if (builders == null) {
      throw Exception(
        'No CubitBuilders found in the widget tree. '
        'Make sure CubitBuilders is placed above this widget in the tree.',
      );
    }

    final cubitBuilder = builders._map[C];
    if (cubitBuilder == null) {
      throw Exception(
        "No builder found for cubit $C. Make sure you've added it to map.",
      );
    }

    return cubitBuilder(context, params) as C;
  }

  @override
  bool updateShouldNotify(covariant CubitBuilders oldWidget) => false;
}
