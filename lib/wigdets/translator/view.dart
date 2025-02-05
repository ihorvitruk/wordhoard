import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/wigdets/side_bar/view.dart';
import 'package:wordhoard/wigdets/translator/cubit.dart';

class TranslatorView extends BaseView<TranslatorCubit> {
  const TranslatorView({super.key});
  @override
  Widget buildView(BuildContext context, TranslatorCubit cubit) {
    return Scaffold(
      appBar: AppBar(centerTitle: false,title: const Text('Word Hoard')),
      drawer: const SideBarView(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: cubit.onInputTextChanged,
              controller: cubit.inputTextController,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter text',
              ),
            ),
            const SizedBox(height: 16),
            Align(
              child:
                  cubit.state.isTranslating
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                        onPressed: cubit.onTranslatePressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[900],
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Translate'),
                      ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(12),
              child: Text(
                cubit.state.translation,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
