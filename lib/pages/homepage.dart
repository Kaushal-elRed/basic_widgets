import 'package:basic_widgets/extensions/text_extension.dart';
import 'package:basic_widgets/widgets/kintrective_viewer.dart';
import 'package:basic_widgets/widgets/klong_press_draggable.dart';
import 'package:basic_widgets/widgets/kmaterial_banner.dart';
import 'package:basic_widgets/widgets/kreorderrable_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Homepage".text),
      body: Column(
        children: const [
          KMaterialBanner(),
          KLongPressDraggablePage(),
          KInteractiveViewerPage(),
          KReOrderableListPage()
        ],
      ),
    );
  }
}
