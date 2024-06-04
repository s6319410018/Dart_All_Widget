import 'package:flutter/material.dart';

class AutocompleteWidget extends StatefulWidget {
  const AutocompleteWidget({super.key});

  @override
  State<AutocompleteWidget> createState() => _AutocompleteWidgetState();
}

class _AutocompleteWidgetState extends State<AutocompleteWidget> {
  static const List<String> listItem = <String>[
    'apple',
    'banana',
    'melon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Autocomplete<String>(
        optionsBuilder: (textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable.empty();
          } else {
            return listItem.where((String item) {
              return item.contains(textEditingValue.text.toLowerCase());
            });
          }
        },
        onSelected: (String item) {
          print('The $item was selected');
        },
      ),
    );
  }
}
