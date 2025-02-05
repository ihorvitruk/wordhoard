import 'package:flutter/material.dart';
import 'package:wordhoard/architecture/base_view.dart';
import 'package:wordhoard/models/translation.dart';
import 'package:wordhoard/wigdets/dictionary/cubit.dart';
import 'package:wordhoard/wigdets/side_bar/view.dart';

class DictionaryView extends BaseView<DictionaryCubit> {
  const DictionaryView({super.key});

  @override
  Widget buildView(BuildContext context, DictionaryCubit cubit) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Hoard'),
        actions: [
          IconButton(
            tooltip: 'Reset date filter',
            onPressed:
                cubit.state.dateTimeRange == null
                    ? null
                    : cubit.onDateTimeRangeReset,
            icon: const Icon(Icons.clear),
          ),
          IconButton(
            tooltip: 'Date filter',
            onPressed: () async {
              final pickedRange = await showDateRangePicker(
                context: context,
                initialDateRange: cubit.state.dateTimeRange,
                firstDate: DateTime(2024),
                lastDate: DateTime.now(), // TODO
              );
              cubit.onDateTimeRangeChanged(pickedRange);
            },
            icon: const Icon(Icons.date_range),
          ),
        ],
      ),
      drawer: const SideBarView(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SearchBar(
                hintText: 'Search...',
                onChanged: cubit.onSearchQueryChanged,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ...cubit.state.translations.map(
                    (translation) =>
                        _translationWidget(context, translation, cubit),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _translationWidget(
    BuildContext context,
    Translation translation,
    DictionaryCubit cubit,
  ) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        child: Row(
          children: [
            Expanded(child: Text(translation.input)),
            Expanded(child: Text(translation.translation)),
            PopupMenuButton<String>(
              onSelected: cubit.onRemoveTranslationPressed,
              itemBuilder:
                  (_) => [
                    PopupMenuItem(
                      value: translation.id,
                      child: const Text('Remove'),
                    ),
                  ],
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }
}
