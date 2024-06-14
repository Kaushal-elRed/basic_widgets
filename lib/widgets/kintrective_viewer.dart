import 'package:basic_widgets/extensions/tap_extensions.dart';
import 'package:basic_widgets/extensions/text_extension.dart';
import 'package:flutter/material.dart';

class KInteractiveViewer extends StatelessWidget {
  const KInteractiveViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Interactive Viewer".text),
      body: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(double.infinity),
        child: Image.network(
          "https://storage.googleapis.com/cms-storage-bucket/3461c6a5b33c339001c5.jpg",
        ),
      ),
    );
  }
}

class KInteractiveViewerPage extends StatelessWidget {
  const KInteractiveViewerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return "Interactive Viewer".text.onETap(() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const KInteractiveViewer(),
          ));
    });
  }
}
