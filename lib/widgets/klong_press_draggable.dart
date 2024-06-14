import 'package:basic_widgets/extensions/tap_extensions.dart';
import 'package:basic_widgets/extensions/text_extension.dart';
import 'package:flutter/material.dart';

class KLongPressDraggable extends StatefulWidget {
  const KLongPressDraggable({super.key});

  @override
  State<KLongPressDraggable> createState() => _KLongPressDraggableState();
}

class _KLongPressDraggableState extends State<KLongPressDraggable> {
  Offset _offset = const Offset(100, 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: "Long Press Draggable Image".text),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return ColoredBox(
              color: Colors.orange,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    left: 50,
                    top: 100,
                    child: "Long Press Image to drag it".text,
                  ),
                  Positioned(
                    left: _offset.dx,
                    top: _offset.dy,
                    child: LongPressDraggable(
                      feedback: Image.network(
                        "https://storage.googleapis.com/cms-storage-bucket/3461c6a5b33c339001c5.jpg",
                        color: Colors.orange,
                        colorBlendMode: BlendMode.colorBurn,
                        height: 200,
                        width: 200,
                      ),
                      child: Image.network(
                        "https://storage.googleapis.com/cms-storage-bucket/3461c6a5b33c339001c5.jpg",
                        height: 200,
                        width: 200,
                      ),
                      onDragEnd: (details) {
                        setState(() {
                          double adjustment =
                              MediaQuery.of(context).size.height -
                                  constraint.maxHeight;
                          _offset = Offset(details.offset.dx,
                              details.offset.dy - adjustment);
                        });
                      },
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class KLongPressDraggablePage extends StatelessWidget {
  const KLongPressDraggablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return "Long Press Draggable".text.onETap(() {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const KLongPressDraggable(),
          ));
    });
  }
}
