import 'package:flutter/material.dart';

class IconYeri extends StatelessWidget {
  const IconYeri({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ],
    );
  }
}
