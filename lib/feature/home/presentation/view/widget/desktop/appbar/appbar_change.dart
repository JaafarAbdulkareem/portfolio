import 'package:flutter/material.dart';

class AppbarChange extends StatelessWidget {
  const AppbarChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Switch(value: true, onChanged: (value) {}),
        const SizedBox(width: 24),
        DropdownButton(items: const [], onChanged: (value) {}),
      ],
    );
  }
}
