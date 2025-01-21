import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit.dart';
import 'package:wordhoard/unit/unit_builders.dart';

abstract class UnitView<C extends Unit> extends StatefulWidget {
  const UnitView({this.params, super.key});

  final Object? params;

  Widget build(BuildContext context, C unit);

  @override
  State<UnitView> createState() => _UnitViewState<C>();
}

class _UnitViewState<C extends Unit> extends State<UnitView> {
  late final C unit;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    unit = UnitBuilders.createUnit<C>(context, widget.params);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: unit.states.distinct(),
      builder: (_, __) => widget.build(context, unit),
    );
  }

  @override
  void dispose() {
    unit.close();
    super.dispose();
  }
}
