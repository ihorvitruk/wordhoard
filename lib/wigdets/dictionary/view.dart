import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/dictionary/cubit.dart';

class DictionaryView extends BaseView<DictionaryCubit> {
  const DictionaryView({super.key});

  @override
  Widget buildView(BuildContext context, DictionaryCubit cubit) {
    return const SizedBox.shrink();
  }
}
