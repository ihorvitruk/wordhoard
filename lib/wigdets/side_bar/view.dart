import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/side_bar/unit.dart';

class SideBarView extends UnitView<SideBarUnit> {
  const SideBarView({super.key});

  @override
  Widget build(BuildContext context, SideBarUnit unit) {
    return const SizedBox.shrink();
  }
}
