import 'package:basic_widgets/extensions/navigation_extension.dart';
import 'package:basic_widgets/extensions/tap_extensions.dart';
import 'package:basic_widgets/extensions/text_extension.dart';
import 'package:flutter/material.dart';

class KReorderableList extends StatefulWidget {
  const KReorderableList({super.key});

  @override
  State<KReorderableList> createState() => _KReorderableListState();
}

class _KReorderableListState extends State<KReorderableList> {
  List<int> items = List<int>.generate(30, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Reorderable List".text),
      body: ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key(index.toString()),
                  title: "item ${items[index]}".text,
                  trailing: const Icon(Icons.menu),
                )),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            // Due to flutter widget issue this condition is here
            if (oldIndex < newIndex) newIndex -= 1;
            int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}

class KReOrderableListPage extends StatelessWidget {
  const KReOrderableListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return "ReOrderable List".text.onETap(() {
      context.push(const KReorderableList());
    });
  }
}
