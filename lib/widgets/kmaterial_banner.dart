import 'package:basic_widgets/extensions/tap_extensions.dart';
import 'package:basic_widgets/extensions/text_extension.dart';
import 'package:flutter/material.dart';

class KMaterialBanner extends StatelessWidget {
  const KMaterialBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).clearMaterialBanners();
        ScaffoldMessenger.of(context).showMaterialBanner(
          MaterialBanner(
            content: "Material Banner".text,
            actions: [
              "Dismiss".text.onETap(() {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              })
            ],
          ),
        );
      },
      child: "Material Banner".text,
    );
  }
}
