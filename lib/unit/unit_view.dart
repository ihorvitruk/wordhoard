import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit.dart';
import 'package:wordhoard/unit/unit_builders.dart';

abstract class UnitView<U extends Unit> extends StatefulWidget {
  const UnitView({this.params, super.key});

  final Object? params;

  Widget build(BuildContext context, U unit);

  @override
  State<UnitView> createState() => _UnitViewState<U>();
}

class _UnitViewState<U extends Unit> extends State<UnitView> {
  late final U unit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    unit = UnitBuilders.createUnit<U>(context, widget.params);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: unit.states.distinct(),
      builder: (context, __) => widget.build(context, unit),
    );
  }

  @override
  Future<void> dispose() async {
    super.dispose(); // Must be first here.
    await unit.close();
  }
}
