import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/side_bar/cubit.dart';

class SideBarView extends BaseView<SideBarCubit> {
  const SideBarView({super.key});

  @override
  Widget buildView(BuildContext context, SideBarCubit cubit) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: 200,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.topLeft,
      color: Theme.of(context).colorScheme.surface,
      child: TextButton(
        onPressed: cubit.onLogoutPressed,
        child: const Text('Logout'),
      ),
    );
  }
}
