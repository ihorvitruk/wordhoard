import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit.dart';

final class UnitBuilders extends InheritedWidget {
  UnitBuilders({
    required void Function(UnitBuilders builders) init,
    required super.child,
    super.key,
  }) {
    init(this);
  }

  @protected
  final _buildersMap =
      <Type, Unit Function(BuildContext context, Object? params)>{};

  void add<U extends Unit>(
    U Function(BuildContext context, Object? params) builder,
  ) {
    _buildersMap[U] = builder;
  }

  static U createUnit<U extends Unit>(BuildContext context, Object? params) {
    final units = context.dependOnInheritedWidgetOfExactType<UnitBuilders>();
    if (units == null) {
      throw Exception('No UnitBuilders found in the widget tree.');
    }

    final unitBuilder = units._buildersMap[U];
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
