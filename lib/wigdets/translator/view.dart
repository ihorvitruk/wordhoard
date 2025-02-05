import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/translator/cubit.dart';

class TranslatorView extends BaseView<TranslatorCubit> {
  const TranslatorView({super.key});
  @override
  Widget buildView(BuildContext context, TranslatorCubit cubit) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const TextField(
            maxLines: 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter text',
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: () {}, child: const Text('Translate')),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text('', style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
