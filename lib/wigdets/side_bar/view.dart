import 'package:flutter/material.dart';
import 'package:wordhoard/unit/unit_view.dart';
import 'package:wordhoard/wigdets/side_bar/unit.dart';

class SideBarView extends UnitView<SideBarUnit> {
  const SideBarView({super.key});

  @override
  Widget build(BuildContext context, SideBarUnit unit) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 200,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.topLeft,
      color: Theme.of(context).colorScheme.surface,
      child: TextButton(
        onPressed: unit.onLogoutPressed,
        child: const Text('Logout'),
      ),
    );
  }
}
