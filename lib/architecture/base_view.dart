import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wordhoard/architecture/base_cubit.dart';

part 'builders.dart';

abstract class BaseView<C extends BaseCubit> extends StatelessWidget {
  const BaseView({this.params, super.key});

  final Object? params;

  Widget buildView(BuildContext context, C cubit);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<C>(
      create: (_) => CubitBuilders._createCubit<C>(context, params),
      child: Builder(
        builder: (context) => buildView(context, context.watch<C>()),
      ),
    );
  }
}
