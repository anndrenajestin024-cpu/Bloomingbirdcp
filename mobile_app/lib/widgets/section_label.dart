import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class SectionLabel extends StatelessWidget {
  final String text;
  const SectionLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(width: 24, height: 1, color: BBColors.rg4),
        const SizedBox(width: 10),
        Text(text, style: Theme.of(context).textTheme.labelLarge),
      ],
    );
  }
}
