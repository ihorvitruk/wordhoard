import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/dictionary/record/cubit.dart';

class DictionaryRecordView extends BaseView<DictionaryRecordCubit> {
  const DictionaryRecordView({super.key});

  @override
  Widget buildView(BuildContext context, DictionaryRecordCubit cubit) {
    return const SizedBox.shrink();
  }
}
