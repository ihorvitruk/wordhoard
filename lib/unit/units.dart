import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit.dart';

final class UnitBuilders extends InheritedWidget {
  const UnitBuilders({required this.map, required super.child, super.key});

  @protected
  final Map<Type, Unit Function(BuildContext context, Object? params)>
  map;

  static U createUnit<U extends Unit>(BuildContext context, Object? params) {
    final units = context.dependOnInheritedWidgetOfExactType<UnitBuilders>();
    if (units == null) {
      throw Exception('No UnitBuilders found in the widget tree.');
    }

    final unitBuilder = units.map[U];
    if (unitBuilder == null) {
      throw Exception(
        "No builder found for unit $U. Make sure you've added it to map.",
      );
    }

    return unitBuilder(context, params) as U;
  }

  @override
  bool updateShouldNotify(covariant UnitBuilders oldWidget) => false;
}
